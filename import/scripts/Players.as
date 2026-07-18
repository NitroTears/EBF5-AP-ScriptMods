package
{
   public class Players
   {
      public static var player1:Player;
      
      public static var player2:Player;
      
      public static var player3:Player;
      
      public static var player4:Player;
      
      public static var player5:Player;
      
      public static var party:Array;
      
      public static var PLAYERS:Array;
      
      public static var PLAYERS_ORDER:Array;
      
      public static var standby:Player;
      
      public static var playerJustUnlocked:int = -1;
      
      public static var P1equips:Array = [1,2,2,2,2,2,3];
      
      public static var P2equips:Array = [2,3,8,2,2,2,1];
      
      public static var P3equips:Array = [1,20,10,2,2,2,2];
      
      public static var P4equips:Array = [2,14,4,2,2,2,4];
      
      public static var P5equips:Array = [2,3,11,2,2,2,1];
      
      public static var equips:Array = [0,P1equips,P2equips,P3equips,P4equips,P5equips];
      
      public static var tempNatHP:int = 0;
      
      public function Players()
      {
         super();
      }
      
      public static function init() : *
      {
         player1 = new Player1();
         player2 = new Player2();
         player3 = new Player3();
         player4 = new Player4();
         player5 = new Player5();
         party = [player1,player2,player3,player4,player5];
         standby = player4;
         PLAYERS = [player1,player2,player3,player4,player5];
         PLAYERS_ORDER = [player3,player4,player2,player5,player1];
      }
      
      public static function getAverageLevel() : Number
      {
         var _loc3_:Player = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         for each(_loc3_ in [player1,player2,player3,player4,player5])
         {
            if(Boolean(_loc3_) && _loc3_.inParty())
            {
               _loc1_ += _loc3_.level;
               _loc2_++;
            }
         }
         return Math.ceil(_loc1_ / _loc2_);
      }
      
      public static function hasItem(param1:int, param2:int) : Boolean
      {
         var j:int = 0;
         var i:int = param1;
         var pNo:int = param2;
         try
         {
            if(pNo == -1)
            {
               return false;
            }
            j = 3;
            while(j <= 5)
            {
               if(equips[pNo][j] == i)
               {
                  return true;
               }
               j++;
            }
            return false;
         }
         catch(e:Error)
         {
            return false;
         }
      }
      
      public static function getMatt() : *
      {
         // Vanilla - Unused out debug testing?

         //if(Game.party.indexOf(player1) != -1)
         //{
         //   return;
         //}
         //Game.party.push(player1);
         //// TODO: Handle initial skills?
         //Spells.protect.owned = true;
         //if(SaveData.questNo == 1)
         //{
         //   Debug.setLevel(1,player1);
         //}
      }
      
      public static function getNoLegs() : *
      {
         if (Main.apDataModHandler != null)
         {
            Main.apDataModHandler.addPlayerToParty("nolegs");
            return;
         }

         // AP - Disable vanilla behavior

         //if(Game.party.indexOf(player5) != -1)
         //{
         //   return;
         //}
         //Game.party.push(player5);
         //player5.dead = true;
         //player5.hat.owned = true;
         //player5.armor.owned = true;
         //player5.weapon.owned = true;
         //player5.setEquipGraphics();
         //if(SaveData.questNo == 1)
         //{
         //   // TODO: Handle initial skills?
         //   Spells.barrier.owned = true;
         //   Spells.barrier.level = 1;
         //   if(Options.alwaysScaleFoes || Options.instantHealing)
         //   {
         //      Debug.setLevel(player1.level - 1,player5);
         //      player5.EXP = player1.EXP;
         //   }
         //   else
         //   {
         //      Debug.setLevel(1,player5);
         //   }
         //}
         //playerJustUnlocked = 5;
      }
      
      public static function getNatalie() : *
      {
         if (Main.apDataModHandler != null)
         {
            Main.apDataModHandler.addPlayerToParty("natalie");
            return;
         }

         // AP - Disable vanilla behavior
         //if(Game.party.indexOf(player2) != -1)
         //{
         //   return;
         //}
         //Game.party.push(player2);
         //player2.dead = true;
         //player2.hat.owned = true;
         //player2.armor.owned = true;
         //player2.weapon.owned = true;
         //player2.setEquipGraphics();
         //if(SaveData.questNo == 1)
         //{
         //   // TODO: Handle initial skills?
         //   Spells.heal.owned = true;
         //   Spells.heal.level = 1;
         //   player2.weapon.level = 2;
         //   if(Options.alwaysScaleFoes || Options.instantHealing)
         //   {
         //      Debug.setLevel(player1.level - 1,player2);
         //      player2.EXP = player1.EXP;
         //   }
         //   else if(Options.altFoes)
         //   {
         //      Debug.setLevel(8,player2);
         //   }
         //   else
         //   {
         //      Debug.setLevel(6,player2);
         //   }
         //}
         //if(Options.altEquipLocations)
         //{
         //   player2.setEquipGraphics();
         //}
         //playerJustUnlocked = 2;
      }
      
      public static function loseNatalie() : *
      {
         // AP - Disable losing Natalie

         //if(Flags.NATZ_KIDNAPPED.quantity)
         //{
         //   return;
         //}
         //if(Game.party.indexOf(player2) == -1)
         //{
         //   return;
         //}
         //Flags.NATZ_KIDNAPPED.quantity = 1;
         //var _loc1_:int = 13;
         //while(_loc1_ <= 20)
         //{
         //   player2.skillsMain[_loc1_] = null;
         //   _loc1_++;
         //}
         //tempNatHP = player2.HP;
         //Game.party.splice(Game.party.indexOf(player2),1);
      }
      
      public static function getAnna() : *
      {
         if (Main.apDataModHandler != null)
         {
            Main.apDataModHandler.addPlayerToParty("anna");
            return;
         }
         
         // AP - Disable vanilla behavior
         //if(Game.party.indexOf(player4) != -1)
         //{
         //   return;
         //}
         //Game.party.push(player4);
         //player4.dead = true;
         //player4.hat.owned = true;
         //player4.armor.owned = true;
         //player4.weapon.owned = true;
         //player4.setEquipGraphics();
         //if(SaveData.questNo == 1)
         //{
         //   // TODO: Handle initial skills?
         //   Spells.dispel.owned = true;
         //   Spells.dispel.level = 1;
         //   Spells.piercingshot.level = 2;
         //   Spells.comboshot.level = 1;
         //   Spells.gust.level = 2;
         //   Spells.renew.level = 2;
         //   Spells.razorleaf.level = 2;
         //   Spells.log.level = 2;
         //   Spells.arrowcut.level = 2;
         //   player4.weapon.level = 2;
         //   player4.armor.level = 2;
         //   player4.hat.level = 2;
         //   Spells.motherearth.level = 1;
         //   Spells.mightyoak.level = 1;
         //   player4.AP = 300;
         //   if(Options.alwaysScaleFoes || Options.instantHealing)
         //   {
         //      Debug.setLevel(player1.level - 1,player4);
         //      player4.EXP = player1.EXP;
         //   }
         //   else if(Options.altFoes)
         //   {
         //      Debug.setLevel(14,player4);
         //   }
         //   else
         //   {
         //      Debug.setLevel(13,player4);
         //   }
         //}
         //if(Options.altEquipLocations)
         //{
         //   player4.setEquipGraphics();
         //}
         //playerJustUnlocked = 4;
      }
      
      public static function getNatalieAgain() : *
      {
         // AP - Disable getting Natalie again if lost

         //if(Game.party.indexOf(player2) != -1)
         //{
         //   return;
         //}
         //Game.party.push(player2);
         //player2.dead = false;
         //Flags.NATZ_KIDNAPPED.quantity = 0;
         //if(SaveData.questNo == 1)
         //{
         //   player2.level = 0;
         //   player2.EXP = 0;
         //   if(Options.alwaysScaleFoes || Options.instantHealing)
         //   {
         //      Debug.setLevel(player1.level,player2);
         //      player2.AP = 600 * player2.level;
         //      player2.EXP = player1.EXP;
         //   }
         //   else if(Options.altFoes)
         //   {
         //      Debug.setLevel(21,player2);
         //      player2.AP = 12000;
         //   }
         //   else
         //   {
         //      Debug.setLevel(19,player2);
         //      player2.AP = 7000;
         //      player2.EXP = player2.EXPnext / 2;
         //   }
         //}
         //else
         //{
         //   player2.levelUp();
         //}
         //if(Options.altEquipLocations)
         //{
         //   player2.setEquipGraphics();
         //}
         //MapMenu.reskinGUI((Maps.instance.parent as MapMenu).optionsMenu);
      }
      
      public static function getLance() : *
      {
         if (Main.apDataModHandler != null)
         {
            Main.apDataModHandler.addPlayerToParty("lance");
            return;
         }

         // AP - Disable vanilla behavior

         //if(Game.party.indexOf(player3) != -1)
         //{
         //   return;
         //}
         //Game.party.push(player3);
         //player3.dead = true;
         //if(!Battle.standbyPlayers[0])
         //{
         //   Battle.standbyPlayers[0] = player3;
         //}
         //if(!Battle.standbyPlayers[1])
         //{
         //   Battle.standbyPlayers[1] = player3;
         //}
         //player3.hat.owned = true;
         //player3.armor.owned = true;
         //player3.weapon.owned = true;
         //player3.setEquipGraphics();
         //if(SaveData.questNo == 1)
         //{
         //   // TODO: Handle initial skills?
         //   Spells.pistolwhip.level = 2;
         //   Spells.doubleshot.level = 2;
         //   Spells.snipe.level = 2;
         //   Spells.flameshot.level = 2;
         //   Spells.plasma.level = 2;
         //   Spells.darkblast.level = 2;
         //   Spells.medipack.level = 2;
         //   Spells.unloadd.level = 1;
         //   Spells.oblivion.level = 2;
         //   Spells.nuke.level = 2;
         //   Spells.ion.owned = true;
         //   Spells.ion.level = 1;
         //   Spells.debilitate.owned = true;
         //   Spells.debilitate.level = 1;
         //   player3.weapon.level = 3;
         //   player3.armor.level = 3;
         //   player3.hat.level = 3;
         //   if(Options.alwaysScaleFoes || Options.instantHealing)
         //   {
         //      Debug.setLevel(player1.level - 1,player3);
         //      player3.AP = 600 * player3.level;
         //      player3.EXP = player1.EXP;
         //   }
         //   else if(Options.altFoes)
         //   {
         //      player3.AP = 12000;
         //      Debug.setLevel(21,player3);
         //   }
         //   else
         //   {
         //      player3.AP = 7000;
         //      Debug.setLevel(19,player3);
         //   }
         //}
         //if(Options.altEquipLocations)
         //{
         //   player3.setEquipGraphics();
         //}
         //playerJustUnlocked = 3;
      }
   }
}

