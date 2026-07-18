package archipelago
{
   public class APDataModHandler implements IJSONMessageRecivedHandler
   {
      // Currently controlled by a JSON message but can be
      // changed to update based on other data being tracked
      private var isReady:Boolean = false;

      // Current seed information
      public var startPlayerName:String = "matt";
      public var startEquips:Object =
         {
            "matt": [
               Equips.ultrapro9000,
               Equips.hoboclothes,
               Equips.captainhat
            ],
            "natalie": [
               Equips.darktooth,
               Equips.reddress,
               Equips.redribbon
            ],
            "lance": [
               Equips.shadowblaster,
               Equips.officercoat,
               Equips.officerhat
            ],
            "anna": [
               Equips.fairybow,
               Equips.rangerskirt,
               Equips.orangebauble
            ],
            "nolegs": [
               Equips.steelbuckler,
               Equips.heroicarmor,
               Equips.knighthelmet
            ]
         };

      private var defaultStartEquips:Object =
         {
            "matt": [
               Equips.ultrapro9000,
               Equips.hoboclothes,
               Equips.captainhat
            ],
            "natalie": [
               Equips.darktooth,
               Equips.reddress,
               Equips.redribbon
            ],
            "lance": [
               Equips.shadowblaster,
               Equips.officercoat,
               Equips.officerhat
            ],
            "anna": [
               Equips.fairybow,
               Equips.rangerskirt,
               Equips.orangebauble
            ],
            "nolegs": [
               Equips.steelbuckler,
               Equips.heroicarmor,
               Equips.knighthelmet
            ]
         };

      /**
       * Note: Currently only replaces key items, equipment, and skills.
       * If item SIDs
       * Format:
       * {
       *    "<chest_id>": {
       *      "sid": "<local_sid OR ap_sid>",
       *      "count": "<OPTIONAL number_of_items>",
       *      "name": "<OPTIONAL display name for AP items>",
       *      "player": "<OPTIONAL owning player for AP items>"
       *    }
       *    ...
       * }
       */
      private var chestReplacements:Object = {};

      // Map of chestId to Item
      private var chestAPItems:Object = {};

      // Receive JSON types
      private static var READY:String = "ready";
      private static var SEED_DATA:String = "seed_data";
      private static var CHEST_DATA:String = "chest_data";

      public function APDataModHandler(apSocket:APSocket)
      {
         apSocket.onJSONMessageReceivedCallbackHandlers.push(this);
      }

      public function onJSONMessageReceived(jsonData:Object):void
      {
         if (!jsonData || !jsonData.type)
         {
            return;
         }

         if (jsonData.type == READY)
         {
            isReady = true;
            return;
         }

         if (jsonData.type == SEED_DATA)
         {
            processSeedData(jsonData);
            return;
         }

         if (jsonData.type == CHEST_DATA)
         {
            Main.debugLogAP.print("Received chest replacement data");
            if (jsonData.chest_replacements == null || !(jsonData.chest_replacements is Object))
            {
               Main.debugLogAP.print("Invalid chest replacement data received: missing or invalid chest_replacements field");
               return;
            }

            Main.debugLogAP.print("Setting chest replacements");
            chestReplacements = jsonData.chest_replacements;
            return;
         }
      }

      public function supportsJSONType(jsonType:String):Boolean
      {
         return jsonType == READY || jsonType == SEED_DATA || jsonType == CHEST_DATA;
      }

      public function get isReadyToStart():Boolean
      {
         return isReady;
      }

      public function onGameInit():void
      {
         var startPlayer:Player = getPlayerByName(this.startPlayerName);

         if (startPlayer == null)
         {
            Main.debugLogAP.print("Start player was invalid during game init. Falling back to matt.");
            startPlayerName = "matt";
            startPlayer = Players.player1;
         }

         startPlayer.weapon = startEquips[this.startPlayerName][0];
         startPlayer.armor = startEquips[this.startPlayerName][1];
         startPlayer.hat = startEquips[this.startPlayerName][2];
         startPlayer.weapon.owned = true;
         startPlayer.armor.owned = true;
         startPlayer.hat.owned = true;
         startPlayer.setEquipGraphics();

         Game.party = [startPlayer];
      }

      private function processSeedData(jsonData:Object):void
      {
         var requestedStartPlayer:String = jsonData.start_player != null ? String(jsonData.start_player) : "matt";
         if (defaultStartEquips[requestedStartPlayer] == null)
         {
            Main.debugLogAP.print("Unknown start_player in seed_data: " + requestedStartPlayer + ". Falling back to matt.");
            requestedStartPlayer = "matt";
         }
         startPlayerName = requestedStartPlayer;

         // Start with a copy of the default equips and then overwrite with any data from the seed.
         startEquips = {};
         for (var defaultPlayer:String in defaultStartEquips)
         {
            startEquips[defaultPlayer] = defaultStartEquips[defaultPlayer].slice();
         }

         var startEquipData = jsonData.start_equips != null ? jsonData.start_equips : {};
         for (var player:String in startEquipData)
         {
            if (startEquips[player] == null)
            {
               Main.debugLogAP.print("Ignoring start_equips entry for unknown player: " + player);
               continue;
            }

            if (startEquipData[player] == null || startEquipData[player].length != 3)
            {
               Main.debugLogAP.print("Ignoring invalid start_equips entry for " + player + ". Expected an array of 3 equip SIDs.");
               continue;
            }

            var weaponSID:String = String(startEquipData[player][0]);
            var armorSID:String = String(startEquipData[player][1]);
            var hatSID:String = String(startEquipData[player][2]);
            var weapon:Equip = APItemHelpers.getEquipBySID(weaponSID);
            var armor:Equip = APItemHelpers.getEquipBySID(armorSID);
            var hat:Equip = APItemHelpers.getEquipBySID(hatSID);

            if (weapon == null || armor == null || hat == null)
            {
               Main.debugLogAP.print(
                     "Ignoring start_equips entry for " + player +
                     " because one or more equip SIDs were not found: " +
                     weaponSID + ", " + armorSID + ", " + hatSID
                  );
               continue;
            }

            startEquips[player] = [weapon, armor, hat];
         }
      }

      public function getPlayerByName(playerName:String):Player
      {
         if (playerName == "matt")
         {
            return Players.player1;
         }
         else if (playerName == "natalie")
         {
            return Players.player2;
         }
         else if (playerName == "lance")
         {
            return Players.player3;
         }
         else if (playerName == "anna")
         {
            return Players.player4;
         }
         else if (playerName == "nolegs")
         {
            return Players.player5;
         }
         else
         {
            Main.debugLogAP.print("getPlayerByName was called with an invalid player name: " + playerName);
            return null;
         }
      }

      public function addPlayerToParty(playerName:String):void
      {
         var player:Player = getPlayerByName(playerName);
         if (player == null)
         {
            Main.debugLogAP.print("Cannot add player to party because player name is invalid: " + playerName);
            return;
         }

         if (Game.party.indexOf(player) != -1)
         {
            return;
         }

         player.weapon = startEquips[playerName][0];
         player.armor = startEquips[playerName][1];
         player.hat = startEquips[playerName][2];
         player.weapon.owned = true;
         player.armor.owned = true;
         player.hat.owned = true;
         player.setEquipGraphics();

         // - 1 since setLevel is really add levels and they start at level 1
         Debug.setLevel(Players.getAverageLevel() - 1, player);
         setPlayerAP(player);

         // Temporarily set dead while players are in their vanilla spots so that the reward UI does not error out.
         // Once players get moved to being added on the map, this won't be needed.
         player.dead = true;

         Game.party.push(player);
      }

      public function setPlayerAP(player:Player)
      {
         // Set AP based on character's level
         if (player.level < 10)
         {
            player.AP = player.level * 40;
         }
         else if (player.level < 20)
         {
            player.AP = player.level * 400;
         }
         else if (player.level < 30)
         {
            player.AP = player.level * 900;
         }
         else if (player.level < 40)
         {
            player.AP = player.level * 1400;
         }
         else
         {
            player.AP = player.level * 2000;
         }
      }

      public function modifyMapData(maps:Maps):void
      {
         // Chests ids are in format <mapNo>-<objectDataIndex>-<chestIndex>
         var chestsForMap:Object = getChestIdsForMap(MapData.mapNo);
         for each (var chestId:String in chestsForMap)
         {
            // Ignore object index since it's not needed on the game side
            //var objectDataIndex:int = parseInt(chestId.split("-")[1]);
            var chestIndex:int = parseInt(chestId.split("-")[2]);

            var chestData:Object = null;
            for each (var entry:Object in maps.objectData)
            {
               // Verify the type is CHEST and the mc is "chest<chestIndex>"
               if (entry.type == MapData.CHEST && entry.mc == ("chest" + chestIndex))
               {
                  chestData = entry;
                  break;
               }
            }

            if (chestData == null)
            {
               Main.debugLogAP.print("Missing chest data for chestId " + chestId + ": \"chest" + chestIndex + "\" not found.");
               continue;
            }

            var replacementItem:Object = getOrCreateItemForChestId(chestId);
            var replacementCount:int = 1;
            if (chestReplacements[chestId].count != null)
            {
               replacementCount = int(chestReplacements[chestId].count);
            }

            var itemIndex:int = -1;
            // Find the index of the key item, skill, or equip in the data
            for (var i:int = 0; i < chestData.data.length; i += 2)
            {
               var item:Object = chestData.data[i];
               if (item is Item && Items.KEY_LIST.indexOf(item) != -1 || item is Equip || item is Spell)
               {
                  itemIndex = i;
                  break;
               }
            }
            
            Main.debugLogAP.print("Setting chest data");
            if (itemIndex == -1)
            {
               Main.debugLogAP.print("Invalid item index for chestId " + chestId);
               continue;
            }

            chestData.data[itemIndex] = replacementItem;
            chestData.data[itemIndex + 1] = replacementCount;
         }
      }

      private function getChestIdsForMap(mapNo:int):Array
      {
         if (chestReplacements == null)
         {
            return [];
         }

         Main.debugLogAP.print("Getting chest IDs for map " + mapNo);

         var chestsIds:Array = [];
         // Go through the keys of chestReplacements and add any of those
         for (var chestId:String in chestReplacements)
         {
            // Check if starts with "mapNo-"
            if (chestId.indexOf(mapNo + "-") == 0)
            {
               chestsIds.push(chestId);
            }
         }

         return chestsIds;
      }

      private function getOrCreateItemForChestId(chestId:String):Object
      {
         if (chestAPItems[chestId] != null)
         {
            return chestAPItems[chestId];
         }

         var chestReplacementData:Object = chestReplacements[chestId];
         if (chestReplacementData == null)
         {
            return null;
         }

         // If the chest rep data has a name, then treat as an AP item and create an Item for it.
         // Otherwise treat as a reference to a local game item.
         if (chestReplacementData.name != null)
         {
            var playerDisplay:String = chestReplacementData.player != null ? String(chestReplacementData.player) : "UNKNOWN PLAYER";
            var item:Item = new Item({
                     "SID": "ap-" + chestId,
                     "icon": 1236,
                     "name": chestReplacementData.name,
                     "description": "Item for " + playerDisplay + ".\nID: " + chestId
                  });
            chestAPItems[chestId] = item;
            return item;
         }
         else
         {
            var itemBySID:Object = APItemHelpers.getRewardByItemSID(chestReplacementData.sid);
            if (itemBySID == null)
            {
               Main.debugLogAP.print("Invalid local chest replacement data for chestId " + chestId + ": no item found with SID " + chestReplacementData.sid);
               return null;
            }
            return itemBySID;
         }
      }
   }
}
