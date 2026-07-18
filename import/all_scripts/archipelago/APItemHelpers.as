package archipelago
{
   public class APItemHelpers
   {
      public function APItemHelpers()
      {
         super();
      }

      public static function getEquipBySID(sid:String):Equip
      {
         for each (var equip:Equip in Equips.ALL_EQUIPS)
         {
            if (equip && equip.SID == sid)
            {
               return equip;
            }
         }

         return null;
      }

      public static function getRewardByItemSID(sid:String):Object
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
         for each (item in Items.ALL_ITEMS)
         {
            if (item && item.SID == sid)
            {
               return item;
            }
         }
         for each (equip in Equips.ALL_EQUIPS)
         {
            if (equip && equip.SID == sid)
            {
               return equip;
            }
         }
         for each (spell in Spells.ALL_SPELLS)
         {
            if (spell && spell.SID == sid)
            {
               return spell;
            }
         }
         for each (summon in Summons.ALL_SUMMONS)
         {
            // Use the summon's fname as its SID, since summons don't have a
            // SID field in the same way as items/equips/spells/cards
            if (summon && summon.fname == sid)
            {
               return summon;
            }
         }
         for each (card in Cards.ALL_CARDS)
         {
            if (card && card.SID == sid)
            {
               return card;
            }
         }

         return null;
      }

      public static function addCollectedAPItem(chestName:String):void
      {
         var objectIndex:int = -1;
         for (var i:int = 0; i < Maps.instance.objectData.length; i++)
         {
            var obj:Object = Maps.instance.objectData[i];
            if (obj.mc == chestName)
            {
               objectIndex = i;
               break;
            }
         }

         if (objectIndex == -1)
         {
            Main.debugLogAP.print("Could not find object index for chest at map " + MapData.mapNo + " with name " + chestName);
            return;
         }

         var chestIndex:int = int(chestName.substring(5));

         // Format is <mapNo>-<objectDataIndex>-<chestIndex>
         var chestId:String = MapData.mapNo + "-" + objectIndex + "-" + chestIndex;
         if (SaveData.apItemsSent.indexOf(chestId) != -1)
         {
            // Already collected this chest, no need to send/record again
            return;
         }

         SaveData.apItemsSent.push(chestId);
         Main.apItemHandler.sendCollectedItems([chestId]);
      }
   }
}
