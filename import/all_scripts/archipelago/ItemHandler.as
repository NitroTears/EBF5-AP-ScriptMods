package archipelago
{
   public class ItemHandler implements IJSONMessageRecivedHandler, IMainLoopHandler
   {
      private var rewardCache:Object = {};

      // List of items received from Archipelago, stored as objects with "sid" and "count" properties
      public var receivedItems:Array = [];

      private var sendCooldown:int = 60; // Ticks to wait when sending collected item updates to the server.

      // Receive JSON types
      private static var RECEIVED_ITEMS_RESET:String = "received_items_reset";
      private static var RECEIVED_ITEMS_ADD:String = "received_items_add";
      private static var CLIENT_TO_GAME_DEBUG_MESSAGE:String = "client_to_game_debug_message";

      // Send JSON types
      private static var RECEIVED_ITEM_COUNT_UPDATE:String = "received_item_count_update";
      private static var COLLECTED_ITEMS:String = "collected_items";

      public function ItemHandler(apSocket:APSocket)
      {
         apSocket.onJSONMessageReceivedCallbackHandlers.push(this);
         Game.mainLoopHandlers.push(this);
      }

      public function onJSONMessageReceived(jsonData:Object):void // IE when we get an archipelago protocol packet
      {
         if (!jsonData || !jsonData.type)
         {
            return;
         }

         if (jsonData.type == CLIENT_TO_GAME_DEBUG_MESSAGE)
         {
            if (jsonData.text != null)
            {
               Main.debugLogAP.print("Received debug message from client: \"" + jsonData.text + "\"");
            }
            else
            {
               Main.debugLogAP.print("We received a `client_to_game_debug_message` but the client didn't,,,, add the `text` field?????? what????");
            }
         }

         if (jsonData.type == RECEIVED_ITEMS_RESET)
         {
            receivedItems = [];

            // Send a validation message for the server to confirm that we reset our received items and count.
            Main.apSocket.sendJSON({
                     "type": RECEIVED_ITEM_COUNT_UPDATE,
                     "count": 0
                  });
            return;
         }

         if (jsonData.type == RECEIVED_ITEMS_ADD)
         {
            if (jsonData.items == null || !(jsonData.items is Array))
            {
               return;
            }

            appendReceivedItems(jsonData.items);

            // Send a message for the server to validate that we received the items and updated our count.
            Main.apSocket.sendJSON({
                     "type": RECEIVED_ITEM_COUNT_UPDATE,
                     "count": receivedItems.length
                  });

            return;
         }
      }

      public function supportsJSONType(jsonType:String):Boolean
      {
         return jsonType == RECEIVED_ITEMS_RESET || jsonType == RECEIVED_ITEMS_ADD || CLIENT_TO_GAME_DEBUG_MESSAGE;
      }

      public function getLoopInterval():int
      {
         return 10; // Check for new items every 1/3 of a second (since game runs at 30 FPS)
      }

      public function onMainLoop():void
      {
         // we don't want to send new messages after the client has said that it wishes to disconnect.
         // we still technically *can*, but we don't want to.
         // TODO: probably(?) move the Main.apSocket.receivedDisconnectSoonNotice check somewhere else, like sendJSON or something.
         if (Game.mode == Game.MAIN_MENU || Game.mapMenu == null || Main.apSocket.receivedDisconnectSoonNotice)
         {
            return;
         }

         // Handle sending updates about collected items to the server
         sendCooldown--;
         if (sendCooldown <= 0)
         {
            sendCooldown = 60; // Reset cooldown

            // Send the array of ALL collected item locations in case the server missed some updates
            sendCollectedItems(SaveData.apItemsSent);
         }

         // Try adding the next item if we have received items that we haven't processed yet
         if (SaveData.receivedApItemIndex >= receivedItems.length)
         {
            return;
         }

         try
         {
            var nextItemData:Object = receivedItems[SaveData.receivedApItemIndex];
            if (nextItemData == null)
            {
               return;
            }

            var reward:Object = getRewardByItemSID(nextItemData.sid);
            addReward(reward, nextItemData.count);

            Main.debugLogAP.print("Received item with SID " + nextItemData.sid + " and count " + nextItemData.count);
            SaveData.receivedApItemIndex++;
         }
         catch (e:Error)
         {
            Main.debugLogAP.print("Error processing received item: " + e);
            return;
         }
      }

      public function sendCollectedItems(items:Array):void
      {
         Main.apSocket.sendJSON({
                  "type": COLLECTED_ITEMS,
                  "items": items
               });
      }

      private function appendReceivedItems(items:Array):void
      {
         for each (var itemData:Object in items)
         {
            if (itemData == null || itemData.sid == null)
            {
               continue;
            }

            // Update count if it is provided, but defaults to 1 if not
            var count:int = 1;
            if (itemData.count != null)
            {
               count = int(itemData.count);
            }

            receivedItems.push({
                     "sid": String(itemData.sid),
                     "count": count
                  });
         }
      }

      private function getRewardByItemSID(sid:String):Object
      {
         var item:Item = null;
         var equip:Equip = null;
         var spell:Spell = null;
         var card:Card = null;
         var summon:Summon = null;
         if (!sid || sid == "")
         {
            return null;
         }
         if (rewardCache[sid])
         {
            return rewardCache[sid];
         }
         for each (item in Items.ALL_ITEMS)
         {
            if (item && item.SID == sid)
            {
               rewardCache[sid] = item;
               return item;
            }
         }
         for each (equip in Equips.ALL_EQUIPS)
         {
            if (equip && equip.SID == sid)
            {
               rewardCache[sid] = equip;
               return equip;
            }
         }
         for each (spell in Spells.ALL_SPELLS)
         {
            if (spell && spell.SID == sid)
            {
               rewardCache[sid] = spell;
               return spell;
            }
         }
         for each (summon in Summons.ALL_SUMMONS)
         {
            // Use the summon's fname as its SID, since summons don't have a
            // SID field in the same way as items/equips/spells/cards
            if (summon && summon.fname == sid)
            {
               rewardCache[sid] = summon;
               return summon;
            }
         }
         for each (card in Cards.ALL_CARDS)
         {
            if (card && card.SID == sid)
            {
               rewardCache[sid] = card;
               return card;
            }
         }

         Main.debugLogAP.print("Could not find reward with SID " + sid);
         return null;
      }

      private function addReward(reward:Object, count:int):void
      {
         if (reward == null)
         {
            return;
         }

         if (reward is Item)
         {
            var item:Item = reward as Item;
            item.quantity += count;
         }
         else if (reward is Equip)
         {
            var equip:Equip = reward as Equip;
            equip.owned = true;
         }
         // Handle summon before spell since summons are a subtype of spell
         else if (reward is Summon)
         {
            var summon:Summon = reward as Summon;
            summon.owned = true;
            if (Summons.OWNED_SUMMONS.indexOf(summon) == -1)
            {
               Summons.OWNED_SUMMONS.push(summon);
               Summons.sortAllSummons(Summons.sortMethod);
            }
         }
         else if (reward is Spell)
         {
            var spell:Spell = reward as Spell;
            spell.owned = true;
         }
         else if (reward is Card)
         {
            var card:Card = reward as Card;
            card.quantity += count;
         }
         else
         {
            // Unrecognized reward type, log
            Main.debugLogAP.print("Received reward with unrecognized type: " + reward);
         }
      }
   }
}
