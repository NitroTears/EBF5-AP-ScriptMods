package
{
   import com.adobe.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.ByteArray;
   import text.SetStrings;
   
   public class SaveData
   {
      public static var markerData:Array;
      
      public static var mattXnatz:Number;
      
      public static var mattXanna:Number;
      
      public static var mattXlance:Number;
      
      public static var lanceXanna:Number;
      
      public static var lanceXnatz:Number;
      
      public static var annaXnatz:Number;
      
      public static var endingThreshhold:Number;
      
      public static var chestsOpened:int;
      
      public static var secretsFound:int;
      
      public static var stepsWalked:int;
      
      public static var foesDefeated:int;
      
      public static var foesExecuted:int;
      
      public static var foesSpared:int;
      
      public static var playersWounded:int;
      
      public static var maxDamage:int;
      
      public static var playTime:int;
      
      public static var playTimeAtLoad:int;
      
      public static var summonPower:Number;
      
      public static var equipSets:Array;
      
      public static var passwordToBeSaved:String;
      
      public static var fileRef:FileReference;
      
      public static var loadedFile:String;
      
      public static var seed:int = 0;
      
      public static var inGame:Boolean = true;
      
      public static var money:int = Constants.STARTING_MONEY;
      
      public static var moneyMax:int = 999999999;
      
      public static var questNo:int = 1;
      
      public static var endlessBattlesScore:int = 0;
      
      public static var limitsList:Array = [];
      
      public static var consoles:Array = [];
      
      public static var books:Array = [];
      
      public static var battlesWithCounter:int = 0;
      
      public static var battlesWithResistance:int = 0;
      
      public static var gameComplete:Boolean = false;
      
      public static var SPEECH_POINTS:int = 50;
      
      public static var exeSave:String = "";
      
      public static var encryptedData:String = "";
      
      public static var selectedFileName:String = "";
      
      public static var dataPackets:Array = [];
      
      public static var forceOverwrite:Boolean = false;
      
      public static var exeLoad:String = "";

      public static var receivedApItemIndex:int = 0;

      public static var apItemsSent:Array = [];
      
      public function SaveData()
      {
         super();
      }
      
      public static function init() : *
      {
         questNo = 1;
         money = Constants.STARTING_MONEY;
         mattXnatz = 0;
         mattXanna = 0;
         mattXlance = 0;
         lanceXnatz = 0;
         lanceXanna = 0;
         annaXnatz = 0;
         endingThreshhold = 400;
         seed = Math.random() * 1000000000;
         limitsList = [];
         consoles = [];
         books = [];
         battlesWithCounter = 0;
         battlesWithResistance = 0;
         initForNewgamePlus();
         equipSets = [[[],[],[],[],[],[]],[[],[],[],[],[],[]],[[],[],[],[],[],[]],[[],[],[],[],[],[]],[[],[],[],[],[],[]]];
         stepsWalked = -3;
         foesDefeated = 0;
         foesExecuted = 0;
         foesSpared = 0;
         playersWounded = 0;
         maxDamage = 0;
         playTime = 0;
         playTimeAtLoad = 0;
         summonPower = Constants.defaultSummonPower;
         receivedApItemIndex = 0;
         apItemsSent = [];
      }
      
      public static function initForNewgamePlus() : *
      {
         markerData = [];
         chestsOpened = 0;
         secretsFound = 0;
      }
      
      public static function calculateEndingTheshold() : *
      {
         var _loc1_:int = 3000;
         _loc1_ -= Medals.countMedals() * 6;
         _loc1_ -= foesSpared / (foesExecuted + foesSpared + 1) * 200;
         _loc1_ -= chestsOpened / 3;
         _loc1_ -= Summons.OWNED_SUMMONS.length;
         if(Main.hasPremium)
         {
            _loc1_ += 600;
         }
         if(Medals.ultimateHero.unlocked || Options.onePlayerMode || Options.twoPlayerMode)
         {
            _loc1_ -= 5000;
         }
         endingThreshhold = _loc1_;
      }
      
      public static function buildRelationships() : *
      {
         var _loc1_:int = 1;
         if(!Flags.TANK_DEFEATED.quantity)
         {
            return;
         }
         if(Battle.players.indexOf(Players.player5))
         {
            _loc1_ = 3;
         }
         if(Battle.players.indexOf(Players.player1) != -1 && Battle.players.indexOf(Players.player2) != -1)
         {
            mattXnatz += _loc1_;
         }
         if(Battle.players.indexOf(Players.player1) != -1 && Battle.players.indexOf(Players.player4) != -1)
         {
            mattXanna += _loc1_;
         }
         if(Battle.players.indexOf(Players.player1) != -1 && Battle.players.indexOf(Players.player3) != -1)
         {
            mattXlance += _loc1_;
         }
         if(Battle.players.indexOf(Players.player3) != -1 && Battle.players.indexOf(Players.player4) != -1)
         {
            lanceXanna += _loc1_;
         }
         if(Battle.players.indexOf(Players.player3) != -1 && Battle.players.indexOf(Players.player2) != -1)
         {
            lanceXnatz += _loc1_;
         }
         if(Battle.players.indexOf(Players.player2) != -1 && Battle.players.indexOf(Players.player4) != -1)
         {
            annaXnatz += _loc1_;
         }
      }
      
      public static function copyArray(param1:*) : *
      {
         if(!(param1 is Array))
         {
            return param1;
         }
         var _loc2_:* = [];
         var _loc3_:int = param1.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_[_loc3_] = copyArray(param1[_loc3_]);
            _loc3_--;
         }
         return _loc2_;
      }
      
      public static function trackStats(param1:int) : *
      {
         var _loc3_:int = 0;
         var _loc2_:String = "Quest" + param1;
         Playtomic.Log.LevelAverageMetric("PlayersWounded",_loc2_,SaveData.playersWounded);
         Playtomic.Log.LevelAverageMetric("FoesDefeated",_loc2_,SaveData.foesDefeated);
         Playtomic.Log.LevelAverageMetric("ChestsOpened",_loc2_,SaveData.chestsOpened);
         Playtomic.Log.LevelAverageMetric("SecretsFound",_loc2_,SaveData.secretsFound);
         Playtomic.Log.LevelAverageMetric("StepsWalked",_loc2_,SaveData.stepsWalked);
         Playtomic.Log.LevelAverageMetric("MaxDamage",_loc2_,SaveData.maxDamage);
         Playtomic.Log.LevelAverageMetric("PlayTime",_loc2_,SaveData.playTime);
         Playtomic.Log.LevelAverageMetric("MedalsEarned",_loc2_,Medals.countMedals());
         Playtomic.Log.CustomMetric(Options.difficulty,"GameComplete");
         Playtomic.Log.CustomMetric("allDifficulties","GameComplete");
         if(param1 == 1 && MainMenu.gallery == false)
         {
            _loc3_ = 0;
            while(_loc3_ < Equips.ALL_EQUIPS.length)
            {
               if(Equips.ALL_EQUIPS[_loc3_])
               {
                  Playtomic.Log.LevelAverageMetric((Equips.ALL_EQUIPS[_loc3_] as Equip).name[0],"EquipUsage",(Equips.ALL_EQUIPS[_loc3_] as Equip).uses);
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < Spells.ALL_SPELLS.length)
            {
               Playtomic.Log.LevelAverageMetric((Spells.ALL_SPELLS[_loc3_] as Spell).name[0],"SkillUsage",(Spells.ALL_SPELLS[_loc3_] as Spell).uses);
               _loc3_++;
            }
         }
      }
      
      public static function completeGame() : *
      {
         if(questNo == 1)
         {
            Medals.unlock(Medals.quest1);
         }
         if(questNo == 2)
         {
            Medals.unlock(Medals.quest2);
         }
         if(questNo == 3)
         {
            Medals.unlock(Medals.quest3);
         }
         trackStats(questNo);
         if(Main.hasPremium)
         {
            ++questNo;
         }
         if(questNo > 3)
         {
            questNo = 3;
         }
         MainMenu.gallery = true;
         Items.clearKeyItems();
         MainMenu.loadFile = 0;
         Game.tempSave = [];
         NPCs.init();
         resetText();
         chestsOpened = 0;
         secretsFound = 0;
         Events.init();
         Events.GODCAT_DEFEATED.quantity = true;
         Global.battleState = 0;
      }
      
      public static function saveText() : Array
      {
         var _loc3_:int = 0;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < Text.listOfLists.length)
         {
            _loc1_.push([]);
            _loc3_ = 0;
            while(_loc3_ < Text[Text.listOfLists[_loc2_]].length)
            {
               if(Text[Text.listOfLists[_loc2_]][_loc3_])
               {
                  _loc1_[_loc2_][_loc3_] = Text[Text.listOfLists[_loc2_]][_loc3_].spoken;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function loadText(param1:Array) : *
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < Text.listOfLists.length)
         {
            _loc3_ = 0;
            while(_loc3_ < Text[Text.listOfLists[_loc2_]].length)
            {
               if(Boolean(Text[Text.listOfLists[_loc2_]][_loc3_]) && Boolean(param1[_loc2_]) && Boolean(param1[_loc2_][_loc3_]))
               {
                  Text[Text.listOfLists[_loc2_]][_loc3_].spoken = param1[_loc2_][_loc3_];
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public static function resetText() : Array
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < Text.listOfLists.length)
         {
            _loc2_ = 0;
            while(_loc2_ < Text[Text.listOfLists[_loc1_]].length)
            {
               if(Text[Text.listOfLists[_loc1_]][_loc2_])
               {
                  Text[Text.listOfLists[_loc1_]][_loc2_].spoken = false;
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public static function saveGame(param1:String = "autosave", param2:Boolean = false, param3:Boolean = false) : *
      {
         var _loc4_:Maps = null;
         var _loc5_:Object = null;
         var _loc6_:SharedObject = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:Player = null;
         var _loc13_:Array = null;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         var _loc16_:Spell = null;
         var _loc17_:String = null;
         var _loc18_:Array = null;
         Main.log("Saving to: " + param1);
         try
         {
            selectedFileName = param1;
            if(!param3 && param1 == "autosave" && (playTime <= playTimeAtLoad + 120 || playTime <= 120))
            {
               return;
            }
            if(Options.applicationFeatures && Main.messagesEnabled && !param3 && param1 != "EBF5backup")
            {
               exeSave = param1;
            }
            if(Boolean(Game.mapMenu) && Boolean(Game.mapMenu.maps))
            {
               _loc4_ = Game.mapMenu.maps;
            }
            else
            {
               _loc4_ = null;
            }
            _loc5_ = {};
            if(Options.enableSols)
            {
               _loc6_ = SharedObject.getLocal("EBF5" + param1);
               _loc5_ = _loc6_.data;
            }
            _loc7_ = [];
            if(param1 != "autosave" && Boolean(_loc4_))
            {
               _loc10_ = 0;
               while(_loc10_ < 15)
               {
                  if(Boolean(_loc4_["push" + _loc10_]) && Boolean(_loc4_["push" + _loc10_].X))
                  {
                     _loc7_[_loc10_] = [_loc4_["push" + _loc10_].X,_loc4_["push" + _loc10_].Y];
                  }
                  _loc10_++;
               }
               _loc5_.blocks = _loc7_;
            }
            _loc7_ = [];
            _loc8_ = [];
            _loc10_ = 0;
            while(_loc10_ < Equips.ALL_EQUIPS.length)
            {
               if(Equips.ALL_EQUIPS[_loc10_])
               {
                  _loc7_[_loc10_] = (Equips.ALL_EQUIPS[_loc10_] as Equip).level;
                  _loc8_[_loc10_] = (Equips.ALL_EQUIPS[_loc10_] as Equip).owned;
                  (Equips.ALL_EQUIPS[_loc10_] as Equip).ID = _loc10_;
               }
               _loc10_++;
            }
            _loc5_.equipLevels = _loc7_;
            _loc5_.equipOwnage = _loc8_;
            _loc5_.equipSets = copyArray(equipSets);
            _loc7_ = [];
            _loc10_ = 0;
            while(_loc10_ < NPCs.ALL_NPCS.length)
            {
               _loc7_[_loc10_] = [(NPCs.ALL_NPCS[_loc10_] as NPC).flag,(NPCs.ALL_NPCS[_loc10_] as NPC).flag2];
               _loc10_++;
            }
            _loc5_.npcFlags = _loc7_;
            _loc7_ = [];
            _loc10_ = 0;
            while(_loc10_ < Items.ALL_ITEMS.length)
            {
               _loc7_[_loc10_] = (Items.ALL_ITEMS[_loc10_] as Item).quantity;
               _loc10_++;
            }
            _loc5_.itemQuantities = _loc7_;
            _loc7_ = [];
            _loc10_ = 0;
            while(_loc10_ < Cards.ALL_CARDS.length)
            {
               _loc7_[_loc10_] = (Cards["card" + (_loc10_ + 1)] as Card).quantity;
               _loc10_++;
            }
            _loc5_.cardQuantities = _loc7_;
            _loc7_ = [];
            _loc10_ = 0;
            while(_loc10_ < Items.RARE_FOOD_SHOP.length)
            {
               _loc7_[_loc10_] = (Items.RARE_FOOD_SHOP[_loc10_] as Item).purchased;
               _loc10_++;
            }
            _loc5_.rareItemCosts = _loc7_;
            _loc7_ = [];
            _loc8_ = [];
            _loc10_ = 0;
            while(_loc10_ < Spells.ALL_SPELLS.length)
            {
               _loc7_[_loc10_] = (Spells.ALL_SPELLS[_loc10_] as Spell).level;
               _loc8_[_loc10_] = (Spells.ALL_SPELLS[_loc10_] as Spell).owned;
               (Spells.ALL_SPELLS[_loc10_] as Spell).ID = _loc10_;
               _loc10_++;
            }
            _loc5_.spellLevels = _loc7_;
            _loc5_.spellOwnage = _loc8_;
            _loc5_.seed = seed;
            _loc7_ = [];
            _loc10_ = 0;
            while(_loc10_ < Players.PLAYERS.length)
            {
               _loc12_ = Players.PLAYERS[_loc10_];
               _loc13_ = [];
               _loc14_ = [];
               _loc15_ = [];
               for each(_loc16_ in _loc12_.skillsMain)
               {
                  if(_loc16_)
                  {
                     _loc13_.push(_loc16_.ID);
                  }
                  else
                  {
                     _loc13_.push(null);
                  }
               }
               for each(_loc16_ in _loc12_.skillsLimit)
               {
                  if(_loc16_)
                  {
                     _loc14_.push(_loc16_.ID);
                  }
                  else
                  {
                     _loc14_.push(null);
                  }
               }
               for each(_loc17_ in Buff.BUFFS)
               {
                  _loc15_.push(_loc12_.bonus[_loc17_]);
               }
               _loc7_[_loc10_] = [_loc12_.level,_loc15_,_loc12_.limit,[_loc12_.weapon.ID,_loc12_.armor.ID,_loc12_.hat.ID,_loc12_.flair1.ID,_loc12_.flair2.ID,_loc12_.flair3.ID],_loc13_,_loc12_.EXP,_loc12_.AP,_loc14_,_loc12_.dead];
               _loc10_++;
            }
            _loc5_.playerData = _loc7_;
            _loc5_.cheats = [Options.superEffective,Options.summoner,Options.unlimited,Options.feebleFoes,Options.blindFoes,Options.politeFoes,Options.cowardlyFoes,Options.preemptiveStrike,Options.instantHealing,Options.extraAttacks,Options.noAutoSpells,Options.autoScan,Options.catSimulator,Options.sillyNPCs,Options.oneHP,Options.extraFoeResistance,Options.evasiveFoes,Options.offensiveFoes,Options.bulkyFoes,Options.statusAntibody,Options.comboBreaker,Options.counterAttacks,Options.surpriseAttack,Options.noGrinding,Options.noAutoRevive,Options.lessPlayerResistance,Options.noReviveTurn,Options.turnTimeLimit,Options.noRareFood,Options.noFoeHPbars,Options.stunnedFoes,Options.learnAllSkills,Options.treasureFinder];
            _loc5_.customizations = [];
            _loc5_.altWeather = Options.altWeather;
            _loc5_.altFoes = Options.altFoes;
            _loc5_.altEquipStats = Options.altEquipStats;
            _loc5_.altEquipLocations = Options.altEquipLocations;
            _loc5_.alwaysScaleFoes = Options.alwaysScaleFoes;
            _loc5_.alwaysGiveEXP = Options.alwaysGiveEXP;
            _loc5_.threePlayerMode = Options.threePlayerMode;
            _loc5_.twoPlayerMode = Options.twoPlayerMode;
            _loc5_.onePlayerMode = Options.onePlayerMode;
            _loc5_.mapData = [undefined,undefined,undefined,undefined,copyArray(Maps.blockData),copyArray(Maps.bushData),copyArray(Maps.chestData),copyArray(Maps.foeData),copyArray(Maps.keyData),copyArray(Maps.ladderData),copyArray(Maps.mapVisits),copyArray(Maps.rockData),copyArray(Maps.sceneData),copyArray(Maps.switchData),copyArray(Maps.torchData),copyArray(Maps.warpData),copyArray(MapMenu.tipCompleteFlag),copyArray(MapMenu.tipStartFlag),copyArray(Maps.puzzleData),copyArray(Maps.crystalData),copyArray(Maps.snowData),copyArray(Maps.dirtData),MapData.mapNo];
            _loc5_.shipping = [mattXnatz,mattXanna,mattXlance,lanceXnatz,lanceXanna,annaXnatz];
            _loc5_.markerData = [];
            _loc10_ = 0;
            while(_loc10_ < SaveData.markerData.length)
            {
               if(SaveData.markerData[_loc10_][2] != 4)
               {
                  _loc5_.markerData.push(copyArray(SaveData.markerData[_loc10_]));
               }
               _loc10_++;
            }
            if(_loc4_)
            {
               _loc5_.mapData[0] = _loc4_.mapX;
               _loc5_.mapData[1] = _loc4_.mapY;
               _loc5_.mapData[2] = _loc4_.player.X;
               _loc5_.mapData[3] = _loc4_.player.Y;
               _loc5_.mapData[23] = _loc4_.player.onWater(0,0,true) || MapPlayer.watered;
            }
            else
            {
               _loc5_.mapData[0] = Game.tempSave[0];
               _loc5_.mapData[1] = Game.tempSave[1];
               _loc5_.mapData[2] = Game.tempSave[2];
               _loc5_.mapData[3] = Game.tempSave[3];
               _loc5_.mapData[22] = Game.tempSave[4];
               _loc5_.mapData[23] = Game.tempSave[5];
               Game.tempSave = [];
            }
            _loc7_ = [];
            _loc10_ = 0;
            while(_loc10_ < Flags.ALL_EVENTS.length)
            {
               _loc7_[_loc10_] = Flags.ALL_EVENTS[_loc10_].quantity;
               _loc10_++;
            }
            _loc5_.eventData = _loc7_;
            _loc5_.limitsList = copyArray(limitsList);
            _loc5_.consoles = copyArray(consoles);
            _loc5_.books = copyArray(books);
            _loc5_.battlesWithCounter = battlesWithCounter;
            _loc5_.battlesWithResistance = battlesWithResistance;
            _loc5_.textFlags = saveText();
            _loc7_ = [];
            _loc10_ = 0;
            while(_loc10_ < Game.party.length)
            {
               _loc7_.push(Game.party[_loc10_].playerNo);
               _loc10_++;
            }
            _loc5_.party = _loc7_;
            _loc5_.scans = Foes.scannedFoes.slice(0);
            _loc5_.gameStats = [chestsOpened,secretsFound,stepsWalked,foesDefeated,playersWounded,maxDamage,playTime,foesExecuted,foesSpared];
            _loc7_ = [];
            for(_loc11_ in Summons.info)
            {
               _loc7_.push([_loc11_,Summons.info[_loc11_].nickname,Summons.info[_loc11_].skin]);
            }
            _loc5_.summonInfo = _loc7_;
            _loc10_ = 0;
            while(_loc10_ < Summons.ALL_SUMMONS.length)
            {
               (Summons.ALL_SUMMONS[_loc10_] as Spell).ID = _loc10_;
               _loc10_++;
            }
            _loc7_ = [];
            for each(_loc16_ in Summons.OWNED_SUMMONS)
            {
               _loc7_.push(_loc16_.ID);
            }
            _loc5_.ownedSummons = _loc7_;
            _loc7_ = [];
            j = 0;
            while(j < Summons.PARTY_SUMMONS.length)
            {
               if(Summons.PARTY_SUMMONS[j] is Spell)
               {
                  _loc7_.push(Summons.PARTY_SUMMONS[j].ID);
               }
               else
               {
                  _loc7_.push(-1);
               }
               ++j;
            }
            _loc5_.equippedSummons = _loc7_;
            _loc7_ = [];
            for each(_loc16_ in Summons.RECENT)
            {
               _loc7_.push(_loc16_.ID);
            }
            _loc5_.recentSummons = _loc7_;
            _loc5_.questNo = questNo;
            _loc5_.area = MapData.areaNo;
            _loc5_.misc = [Battle.SP,Battle.maxSP,SaveData.money,summonPower];
            if(Options.enableSols)
            {
               _loc6_.flush();
            }
            if(param2)
            {
               if(Options.webVersion)
               {
                  Options.exitFullscreen();
               }
               _loc18_ = [];
               _loc10_ = 0;
               while(_loc10_ < Medals.MEDALS.length)
               {
                  _loc18_[_loc10_] = Medals.MEDALS[_loc10_].unlocked;
                  _loc10_++;
               }
               _loc5_.medals = _loc18_;
               _loc5_.score = SaveData.endlessBattlesScore;
            }
            else
            {
               _loc5_.medals = null;
            }

            // AP Save data
            _loc5_.apItemIndex = receivedApItemIndex;
            _loc5_.apItemsSent = apItemsSent.slice(0);

            if(!Options.enableSols)
            {
               if(param1 == "autosave")
               {
                  SaveMenu.saveDataList[8] = _loc5_;
               }
               if(param1.substr(0,4) == "file")
               {
                  SaveMenu.saveDataList[int(param1.substr(4,1))] = _loc5_;
               }
            }
            if(param2 || exeSave != "")
            {
               convertDataToJSON(_loc5_);
            }
         }
         catch(e:Error)
         {
         }
         if(param3)
         {
            (Game.root as Main).initMore();
         }
      }
      
      public static function convertDataToJSON(param1:Object, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : *
      {
         var JSONfile:String = null;
         var data:Object = param1;
         var toFile:Boolean = param2;
         var toSteam:Boolean = param3;
         var medals:Boolean = param4;
         try
         {
            JSONfile = JSON.stringify(data);
         }
         catch(e:Error)
         {
         }
         encryptData(JSONfile,toFile,toSteam,medals);
      }
      
      public static function encryptData(param1:String, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : *
      {
         var encoder:Base64Encoder = null;
         var password:String = null;
         var JSONfile:String = param1;
         var tofile:Boolean = param2;
         var toSteam:Boolean = param3;
         var medals:Boolean = param4;
         try
         {
            encoder = new Base64Encoder();
            encoder.encode(JSONfile);
            password = encoder.toString();
            encryptedData = password;
            if(exeSave != "")
            {
               saveToMeow(password);
            }
            else if(tofile)
            {
               SaveData.saveToFile(password);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function saveToMeow(param1:String) : *
      {
         passwordToBeSaved = param1;
         var _loc2_:Array = [];
         var _loc3_:int = 35000;
         var _loc4_:int = 0;
         while(_loc4_ < 100)
         {
            _loc2_[_loc4_] = "" + param1.substr(_loc3_ * _loc4_,_loc3_);
            if(_loc2_[_loc4_] == "")
            {
               Main.sendMessage("saveToMeow",exeSave,"",-1,true);
               exeSave = "";
               break;
            }
            Main.sendMessage("saveToMeow",exeSave,_loc2_[_loc4_],_loc4_,true);
            _loc4_++;
         }
      }
      
      public static function saveToFile(param1:String) : *
      {
         var password:String = param1;
         try
         {
            fileRef = new FileReference();
            fileRef.save(password,selectedFileName + ".meow");
         }
         catch(e:Error)
         {
            Main.log("ERROR: EBF5 does not have permission to create files. Is incognito mode on?");
         }
      }
      
      public static function loadFromFile() : *
      {
         fileRef = new FileReference();
         fileRef.addEventListener(Event.SELECT,onFileSelected);
         var _loc1_:FileFilter = new FileFilter("EBF5 Files","*.meow");
         fileRef.browse([_loc1_]);
      }
      
      public static function onFileSelected(param1:Event) : *
      {
         fileRef.addEventListener(Event.COMPLETE,onComplete);
         fileRef.load();
      }
      
      public static function onComplete(param1:Event) : *
      {
         loadedFile = fileRef.data;
         fileRef = null;
         decryptData(loadedFile);
      }
      
      public static function decryptData(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "") : *
      {
         var obj:Object;
         var decoder:Base64Decoder = null;
         var bytes:ByteArray = null;
         var JSONfile:String = null;
         var password:String = param1;
         var fromCloud:Boolean = param2;
         var fromSteam:Boolean = param3;
         var filename:String = param4;
         try
         {
            decoder = new Base64Decoder();
            decoder.decode(password);
            bytes = decoder.toByteArray();
            JSONfile = bytes.toString();
         }
         catch(e:Error)
         {
         }
         obj = JSON.parse(JSONfile);
         if(filename == "medals")
         {
            Medals.loadMisc(obj);
         }
         else if(filename == "options")
         {
            Options.load(obj);
         }
         else
         {
            loadGame("",obj,fromCloud,fromSteam,filename);
         }
      }
      
      public static function saveToSteam(param1:String) : *
      {
      }
      
      public static function openFromSteam() : *
      {
      }
      
      public static function loadMeow(param1:String) : *
      {
         decryptData(param1);
      }
      
      public static function meowToSol(param1:String, param2:String, param3:int) : *
      {
         var newData:String = null;
         var i:int = 0;
         var solExists:Boolean = false;
         var filenameB:String = null;
         var so:SharedObject = null;
         var data:String = param1;
         var filename:String = param2;
         var index:int = param3;
         if(index == 0)
         {
            dataPackets = [];
         }
         dataPackets[index] = data;
         if(index == -1)
         {
            newData = "";
            i = 0;
            while(i < dataPackets.length)
            {
               newData += dataPackets[i];
               i++;
            }
            solExists = false;
            try
            {
               if(Options.enableSols)
               {
                  filenameB = filename;
                  if(filename == "medals")
                  {
                     so = SharedObject.getLocal("EBF5" + "misc");
                     if(so.data.medals)
                     {
                        solExists = true;
                     }
                  }
                  else if(filename == "options")
                  {
                     so = SharedObject.getLocal("EBF5" + filename);
                     if(so.data.everything)
                     {
                        solExists = true;
                     }
                  }
                  else
                  {
                     so = SharedObject.getLocal("EBF5" + filename);
                     if(so.data.party)
                     {
                        solExists = true;
                     }
                  }
               }
            }
            catch(e:Error)
            {
            }
            if(!solExists || forceOverwrite)
            {
               Main.log(" Loaded: " + filename + "  ");
               decryptData(newData,false,true,filename);
            }
            return;
         }
      }
      
      public static function loadGame(param1:String = "autosave", param2:Object = null, param3:Boolean = false, param4:Boolean = false, param5:String = "") : *
      {
         var data:Object = null;
         var so:SharedObject = null;
         var a:Array = null;
         var b:Array = null;
         var mdata:Array = null;
         var i:int = 0;
         var sp:Spell = null;
         var p:Player = null;
         var j:int = 0;
         var buu:Array = null;
         var bu:String = null;
         var equips:Array = null;
         var saveName:String = param1;
         var JSONobject:Object = param2;
         var fromCloud:Boolean = param3;
         var fromSteam:Boolean = param4;
         var filename:String = param5;
         if(Boolean(JSONobject) && Boolean(filename))
         {
            if(filename == "autosave")
            {
               filename = "file8";
            }
            SaveMenu.saveDataList[int(filename.substr(4,1))] = JSONobject;
            if(!Options.enableSols)
            {
               return;
            }
         }
         if(saveName == "file8")
         {
            saveName = "autosave";
         }
         Global.mazeCount = 0;
         MapData.MX = -1;
         MapData.MY = -1;
         if(saveName.length == 1)
         {
            data = SaveMenu.saveDataList[int(saveName)];
         }
         else if(!JSONobject)
         {
            so = SharedObject.getLocal("EBF5" + saveName);
            data = so.data;
         }
         else
         {
            data = JSONobject;
         }
         receivedApItemIndex = 0;
         if(data.hasOwnProperty("apItemIndex"))
         {
            receivedApItemIndex = int(data.apItemIndex);
         }
         apItemsSent = [];
         if(data.hasOwnProperty("apItemsSent"))
         {
            apItemsSent = data.apItemsSent.slice(0);
         }
         if(saveName != "autosave" || Boolean(data.blocks))
         {
            Maps.blockDataLoad = copyArray(data.blocks);
         }
         if(data.altWeather)
         {
            Options.altWeather = data.altWeather;
         }
         if(data.altFoes)
         {
            Options.altFoes = data.altFoes;
         }
         if(data.altEquipStats)
         {
            Options.altEquipStats = data.altEquipStats;
         }
         if(data.altEquipLocations)
         {
            Options.altEquipLocations = data.altEquipLocations;
         }
         if(data.alwaysScaleFoes)
         {
            Options.alwaysScaleFoes = data.alwaysScaleFoes;
         }
         if(data.alwaysGiveEXP)
         {
            Options.alwaysGiveEXP = data.alwaysGiveEXP;
         }
         if(data.threePlayerMode)
         {
            Options.threePlayerMode = data.threePlayerMode;
         }
         if(data.twoPlayerMode)
         {
            Options.twoPlayerMode = data.twoPlayerMode;
         }
         if(data.onePlayerMode)
         {
            Options.onePlayerMode = data.onePlayerMode;
         }
         i = 0;
         while(i < Equips.ALL_EQUIPS.length)
         {
            if(Equips.ALL_EQUIPS[i])
            {
               if(data.equipLevels[i])
               {
                  (Equips.ALL_EQUIPS[i] as Equip).level = data.equipLevels[i];
               }
               else
               {
                  (Equips.ALL_EQUIPS[i] as Equip).level = 1;
               }
               (Equips.ALL_EQUIPS[i] as Equip).owned = data.equipOwnage[i];
               (Equips.ALL_EQUIPS[i] as Equip).ID = i;
            }
            i++;
         }
         if(data.equipSets)
         {
            equipSets = copyArray(data.equipSets);
         }
         else
         {
            equipSets = [[[],[],[],[],[],[]],[[],[],[],[],[],[]],[[],[],[],[],[],[]],[[],[],[],[],[],[]],[[],[],[],[],[],[]]];
         }
         i = 0;
         while(i < NPCs.ALL_NPCS.length)
         {
            if(data.npcFlags[i])
            {
               (NPCs.ALL_NPCS[i] as NPC).flag = data.npcFlags[i][0];
               (NPCs.ALL_NPCS[i] as NPC).flag2 = data.npcFlags[i][1];
            }
            i++;
         }
         i = 0;
         while(i < Items.ALL_ITEMS.length)
         {
            (Items.ALL_ITEMS[i] as Item).quantity = data.itemQuantities[i];
            i++;
         }
         if(data.cardQuantities)
         {
            i = 0;
            while(i < Cards.ALL_CARDS.length)
            {
               (Cards["card" + (i + 1)] as Card).quantity = data.cardQuantities[i];
               i++;
            }
         }
         i = 0;
         while(i < Items.RARE_FOOD_SHOP.length)
         {
            (Items.RARE_FOOD_SHOP[i] as Item).purchased = data.rareItemCosts[i];
            i++;
         }
         i = 0;
         while(i < Spells.ALL_SPELLS.length)
         {
            (Spells.ALL_SPELLS[i] as Spell).level = data.spellLevels[i];
            (Spells.ALL_SPELLS[i] as Spell).owned = data.spellOwnage[i];
            (Spells.ALL_SPELLS[i] as Spell).ID = i;
            i++;
         }
         for each(sp in Spells.BASE_BONUS_SKILLS.concat(Spells.BONUS_LIMITS))
         {
            if(sp.level == 0)
            {
               sp.level = 1;
            }
            if(Debug.allSpells)
            {
               sp.owned = true;
            }
         }
         mdata = data.mapData;
         if(mdata[2] < -1)
         {
            mdata[2] = 14;
            mdata[3] = 9;
         }
         Game.tempSave[0] = mdata[0];
         Game.tempSave[1] = mdata[1];
         Game.tempSave[2] = mdata[2];
         Game.tempSave[3] = mdata[3];
         Game.tempSave[4] = mdata[22];
         Game.tempSave[5] = mdata[23];
         Maps.blockData = copyArray(mdata[4]);
         Maps.bushData = copyArray(mdata[5]);
         Maps.chestData = copyArray(mdata[6]);
         Maps.foeData = copyArray(mdata[7]);
         Maps.keyData = copyArray(mdata[8]);
         Maps.ladderData = copyArray(mdata[9]);
         Maps.mapVisits = copyArray(mdata[10]);
         Maps.rockData = copyArray(mdata[11]);
         Maps.sceneData = copyArray(mdata[12]);
         Maps.switchData = copyArray(mdata[13]);
         Maps.torchData = copyArray(mdata[14]);
         Maps.warpData = copyArray(mdata[15]);
         MapMenu.tipCompleteFlag = copyArray(mdata[16]);
         MapMenu.tipStartFlag = copyArray(mdata[17]);
         Maps.puzzleData = copyArray(mdata[18]);
         Maps.crystalData = copyArray(mdata[19]);
         Maps.snowData = copyArray(mdata[20]);
         Maps.dirtData = copyArray(mdata[21]);
         SaveData.markerData = [];
         try
         {
            i = 0;
            while(i < data.markerData.length)
            {
               SaveData.markerData[i] = copyArray(data.markerData[i]);
               i++;
            }
         }
         catch(e:Error)
         {
            SaveData.markerData = [];
         }
         if(data.shipping)
         {
            mattXnatz = data.shipping[0];
            mattXanna = data.shipping[1];
            mattXlance = data.shipping[2];
            lanceXnatz = data.shipping[3];
            lanceXanna = data.shipping[4];
            annaXnatz = data.shipping[5];
         }
         i = 0;
         while(i < Flags.ALL_EVENTS.length)
         {
            Flags.ALL_EVENTS[i].quantity = data.eventData[i];
            i++;
         }
         Flags.GLITCHINESS.quantity = 0;
         Flags.GLITCHINESS_2.quantity = 0;
         Flags.GLITCHINESS_3.quantity = 0;
         if(data.limitsList)
         {
            limitsList = copyArray(data.limitsList);
         }
         if(data.consoles)
         {
            consoles = copyArray(data.consoles);
         }
         if(data.books)
         {
            books = copyArray(data.books);
         }
         if(data.battlesWithCounter)
         {
            battlesWithCounter = data.battlesWithCounter;
         }
         if(data.battlesWithResistance)
         {
            battlesWithResistance = data.battlesWithResistance;
         }
         loadText(data.textFlags);
         Game.party = [];
         i = 0;
         while(i < data.party.length)
         {
            Game.party.push(Players.PLAYERS[data.party[i] - 1]);
            i++;
         }
         if(data.cheats)
         {
            Options.superEffective = data.cheats[0];
            Options.summoner = data.cheats[1];
            Options.unlimited = data.cheats[2];
            Options.feebleFoes = data.cheats[3];
            Options.blindFoes = data.cheats[4];
            Options.politeFoes = false;
            Options.cowardlyFoes = data.cheats[6];
            Options.preemptiveStrike = data.cheats[7];
            Options.instantHealing = data.cheats[8];
            Options.extraAttacks = data.cheats[9];
            Options.noAutoSpells = data.cheats[10];
            Options.autoScan = data.cheats[11];
            Options.catSimulator = data.cheats[12];
            Options.sillyNPCs = data.cheats[13];
            Options.oneHP = data.cheats[14];
            Options.extraFoeResistance = data.cheats[15];
            Options.evasiveFoes = data.cheats[16];
            Options.offensiveFoes = data.cheats[17];
            Options.bulkyFoes = data.cheats[18];
            Options.statusAntibody = data.cheats[19];
            Options.comboBreaker = data.cheats[20];
            Options.counterAttacks = data.cheats[21];
            Options.surpriseAttack = data.cheats[22];
            Options.noGrinding = data.cheats[23];
            Options.noAutoRevive = false;
            Options.lessPlayerResistance = data.cheats[25];
            Options.noReviveTurn = data.cheats[26];
            Options.turnTimeLimit = data.cheats[27];
            Options.noRareFood = data.cheats[28];
            Options.noFoeHPbars = data.cheats[29];
            Options.stunnedFoes = data.cheats[30];
            Options.learnAllSkills = data.cheats[31];
            Options.treasureFinder = data.cheats[32];
         }
         Equip.switchEquipStats();
         SetStrings.setAllEquipsStrings();
         i = 0;
         while(i < Players.PLAYERS.length)
         {
            p = Players.PLAYERS[i];
            mdata = data.playerData[i];
            j = 1;
            while(j < mdata[0])
            {
               p.EXP += p.EXPnext;
               p.levelUp();
               j++;
            }
            buu = mdata[1].slice(0);
            for each(bu in Buff.BUFFS.slice(0).reverse())
            {
               p.bonus[bu] = buu.pop();
            }
            p.limit = mdata[2];
            equips = mdata[3];
            p.weapon = Equips.ALL_EQUIPS[equips[0]];
            p.armor = Equips.ALL_EQUIPS[equips[1]];
            p.hat = Equips.ALL_EQUIPS[equips[2]];
            p.flair1 = Equips.ALL_EQUIPS[equips[3]];
            p.flair2 = Equips.ALL_EQUIPS[equips[4]];
            p.flair3 = Equips.ALL_EQUIPS[equips[5]];
            p.EXP = mdata[5];
            p.AP = mdata[6];
            j = 0;
            while(j < mdata[4].length)
            {
               p.skillsMain[j] = Spells.ALL_SPELLS[mdata[4][j]];
               j++;
            }
            j = 0;
            while(j < mdata[7].length)
            {
               p.skillsLimit[j] = Spells.ALL_SPELLS[mdata[7][j]];
               j++;
            }
            p.setEquipGraphics();
            p.setHPMP();
            if(Options.noAutoRevive && mdata.length > 8)
            {
               p.dead = mdata[8];
               if(p.dead)
               {
                  p.realHP = 0;
               }
            }
            i++;
         }
         Foes.scannedFoes = data.scans.slice(0);
         mdata = data.gameStats;
         chestsOpened = mdata[0];
         secretsFound = mdata[1];
         stepsWalked = mdata[2];
         foesDefeated = mdata[3];
         playersWounded = mdata[4];
         maxDamage = mdata[5];
         playTime = mdata[6];
         foesExecuted = mdata[7];
         foesSpared = mdata[8];
         playTimeAtLoad = playTime;
         seed = data.seed;
         Summons.OWNED_SUMMONS = [];
         Summons.PARTY_SUMMONS = [];
         Summons.RECENT = [];
         j = 0;
         while(j < data.summonInfo.length)
         {
            Summons.info[data.summonInfo[j][0]] = {
               "nickname":data.summonInfo[j][1],
               "skin":data.summonInfo[j][2]
            };
            j++;
         }
         i = 0;
         while(i < Summons.ALL_SUMMONS.length)
         {
            (Summons.ALL_SUMMONS[i] as Spell).ID = i;
            (Summons.ALL_SUMMONS[i] as Summon).equipped = false;
            i++;
         }
         j = 0;
         while(j < data.ownedSummons.length)
         {
            Summons.OWNED_SUMMONS[j] = Summons.ALL_SUMMONS[data.ownedSummons[j]];
            j++;
         }
         j = 0;
         while(j < data.equippedSummons.length)
         {
            if(data.equippedSummons[j] == -1)
            {
               Summons.PARTY_SUMMONS[j] = Equips.empty;
            }
            else
            {
               Summons.PARTY_SUMMONS[j] = Summons.ALL_SUMMONS[data.equippedSummons[j]];
               (Summons.PARTY_SUMMONS[j] as Summon).equipped = true;
            }
            j++;
         }
         j = 0;
         while(j < data.recentSummons.length)
         {
            Summons.RECENT[j] = Summons.ALL_SUMMONS[data.recentSummons[j]];
            j++;
         }
         NPCs.init2();
         if(data.questNo)
         {
            questNo = data.questNo;
         }
         else
         {
            questNo = 1;
         }
         MapData.areaNo = data.area;
         Battle.SP = data.misc[0];
         Battle.maxSP = data.misc[1];
         SaveData.money = data.misc[2];
         summonPower = data.misc[3];
         if(!NPCs.roku.flag)
         {
            Spells.sevenswords.owned = true;
         }
         if(!NPCs.fizz.flag)
         {
            Spells.bubbleringP.owned = true;
         }
         if(!NPCs.maka.flag)
         {
            Spells.deathP.owned = true;
         }
         Equips.setEquipResistances();
         Cards.calculatePerks();
         Equips.initRandomEquips();
         Main.unlockPremiumStuff();
         if(fromSteam && filename && filename != "")
         {
            if(Options.enableSols)
            {
               saveGame(filename,false,true);
            }
         }
         else if(JSONobject)
         {
            if(data.medals)
            {
               i = 0;
               while(i < Medals.MEDALS.length)
               {
                  if(data.medals[i])
                  {
                     Medals.MEDALS[i].unlocked = data.medals[i];
                  }
                  i++;
               }
               if(data.score > SaveData.endlessBattlesScore)
               {
                  SaveData.endlessBattlesScore = data.score;
               }
               Medals.saveMisc();
            }
            (Game.root as Main).mainMenu.fadeTo(MainMenu.START);
            MainMenu.loadFile = 9;
         }
      }
   }
}

