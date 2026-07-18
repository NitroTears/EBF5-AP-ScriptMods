package archipelago
{
   public class APMapHelpers
   {
      public function APMapHelpers()
      {
         super();
      }

      /**
       * Tries to open the chest with the given name. Returns true if the chest was opened, false otherwise.
       * Checks if the chest is already opened, if the chest data exists, and then opens the chest and marks it as opened.
       */
      public static function tryOpenChest(maps:Maps, chestName:String):Boolean
      {
         var menu:MapMenu = maps.parent as MapMenu;
         var chestIndex:int = int(chestName.substring(5));
         var chest:Object = null;
         var entry:Object = null;

         if (menu == null)
         {
            return false;
         }

         if (!Maps.chestData[MapData.mapNo])
         {
            Maps.chestData[MapData.mapNo] = [];
         }

         // If already opened, do nothing
         if (Maps.chestData[MapData.mapNo][chestIndex] == 2)
         {
            return false;
         }

         // Find chest data for the given chest name
         for each (entry in maps.objectData)
         {
            if (entry && entry.mc == chestName)
            {
               chest = entry;
               break;
            }
         }

         // If chest data is missing, log and do nothing
         if (chest == null)
         {
            if (Main.debugLogAP != null)
            {
               Main.debugLogAP.print("Missing chest data for " + chestName);
            }
            return false;
         }

         menu.showTreasure(chest.data);

         // Mark chest as opened
         Maps.chestData[MapData.mapNo][chestIndex] = 2;

         // AP Add chests to claimed checks
         APItemHelpers.addCollectedAPItem(chestName);

         return true;
      }
   }
}