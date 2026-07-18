package
{
   import flash.display.MovieClip;
   import flash.events.*;
   import archipelago.*;
   
   public class Game
   {
      public static var mainLoopHandlers:Array = [];

      public static var root:MovieClip;
      
      public static var frame:MovieClip;
      
      public static var battle:Battle;
      
      public static var maps:Maps;
      
      public static var mapMenu:MapMenu;
      
      public static var party:Array;
      
      public static var skipAutosave:Boolean = false;
      
      public static var BATTLE:String = "battle";
      
      public static var MAP:String = "map";
      
      public static var MAIN_MENU:String = "main menu";
      
      public static var mode:String = BATTLE;
      
      public static var onDeath:Function = null;
      
      public static var onDeath2:Function = null;
      
      public static var fleeable:Boolean = true;
      
      public static var boobCount:int = 0;
      
      public static var background:int = 1;
      
      public static var foes:Array = null;
      
      public static var battleNo:int = 0;
      
      public static var mapNo:int = 0;
      
      public static var tempSave:Array = [];
      
      public static var win:Boolean = false;
      
      public static var gameOver:Boolean = false;
      
      public static var respawnable:Boolean = false;
      
      public static var s:int = 0;
      
      public function Game()
      {
         super();
      }
      
      public static function init() : *
      {
         // Start with random party and start equipment from AP seed.
         if (Main.apDataModHandler != null)
         {
            Main.apDataModHandler.onGameInit();
            return;
         }
         else
         {
            party = [Players.player1];
         }

         // Vanilla behavior
         if(Debug.players == 1)
         {
            party = [Players.player1];
         }
         if(Debug.players == 2)
         {
            party = [Players.player1,Players.player5];
         }
         if(Debug.players == 3)
         {
            party = [Players.player1,Players.player2,Players.player5];
         }
         if(Debug.players == 4)
         {
            party = [Players.player1,Players.player2,Players.player4,Players.player5];
         }
         if(Debug.players == 5)
         {
            party = [Players.player1,Players.player2,Players.player3,Players.player4,Players.player5];
         }
         if(Debug.players == 6)
         {
            party = [Players.player1,Players.player5,Players.player4,Players.player2];
         }
         if(Debug.players == 7)
         {
            party = [Players.player1,Players.player5,Players.player4];
         }
         if(Debug.players == 8)
         {
            party = [Players.player1,Players.player3,Players.player5,Players.player2,Players.player4];
         }
      }
      
      public static function listChildren(param1:MovieClip) : *
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.numChildren)
         {
            _loc2_++;
         }
      }
      
      public static function startBattle() : *
      {
         Catching.bossDefeated = false;
         fleeable = true;
         onDeath = null;
         Battle.summonFlag = false;
         Maps.keyIsDown = [];
         MapData.wasInBattle = true;
         tempSave[0] = Maps.mapX;
         tempSave[1] = Maps.mapY;
         tempSave[2] = Maps.instance.player.X;
         tempSave[3] = Maps.instance.player.Y;
         tempSave[4] = MapData.mapNo;
         (Maps.instance.parent as MapMenu).teardown(false);
         if(MapData.battleBG.length == 1)
         {
            background = MapData.battleBG[0];
         }
         else
         {
            background = MapData.battleBG[battleNo];
         }
         if(MapData.battleBGM[battleNo])
         {
            BGM.play(MapData.battleBGM[battleNo],true);
         }
         if(Options.altWeather)
         {
            if(MapData.altWeather[battleNo])
            {
               Weather.currentWeather = MapData.altWeather[battleNo];
            }
            else
            {
               Weather.currentWeather = Weather.NONE;
            }
         }
         else if(MapData.weather[battleNo])
         {
            Weather.currentWeather = MapData.weather[battleNo];
         }
         else
         {
            Weather.currentWeather = Weather.NONE;
         }
         Flags.battleEvent = MapData.battleFlags[battleNo];
         Global.battleMode = Flags.expStyle != Flags.NORMAL;
         if(Flags.battleEvent == Flags.NOLEGS_BATTLE || Flags.battleEvent == Flags.LANCE_BATTLE_1 || Flags.battleEvent == Flags.NATALIE_BATTLE)
         {
            fleeable = false;
         }
         respawnable = MapData.respawn[battleNo];
         if(Options.altFoes && Boolean(MapData.battlesAlt))
         {
            foes = MapData.battlesAlt[battleNo];
         }
         else
         {
            foes = MapData.battles[battleNo];
         }
         if(foes == Battles.endlessMarathon)
         {
            Global.endlessBattle = true;
            Global.endlessBattleWave = 0;
         }
         mode = BATTLE;
         Battle.init(background);
         Battle.foeWaves = foes;
         Battle.nextWave();
         Game.frame = new Frame();
         Game.root.addChild(Game.frame);
         root.addEventListener(Event.ENTER_FRAME,enterFrameHandler,false,0,true);
      }
      
      public static function enterFrameHandler(param1:Event = null) : *
      {
         Game.root.mouseFunction();
         Battle.stage.checkBusy();
         BGM.loop();
      }
      
      public static function endBattle() : *
      {
         var _loc2_:Player = null;
         var _loc3_:MapMenu = null;
         BGM.randomize = true;
         Global.endlessBattle = false;
         Global.pumpkus = false;
         Global.stealcount = 0;
         Catching.bossDefeated = false;
         if(onDeath != null && win)
         {
            onDeath();
            Medals.saveMisc();
         }
         onDeath = null;
         if(onDeath2 != null && win)
         {
            onDeath2();
            Medals.saveMisc();
         }
         onDeath2 = null;
         var _loc1_:String = "M" + mapNo + "_B" + battleNo;
         GUI.textAnimation = "none";
         Flags.deleting = 0;
         fleeable = true;
         foes = null;
         Battle.teardown();
         for each(_loc2_ in Players.PLAYERS)
         {
            if(_loc2_)
            {
               _loc2_.reduceCooldowns(2);
            }
         }
         if(Boolean(Game.frame) && Boolean(Game.frame.parent))
         {
            Game.root.removeChild(Game.frame);
         }
         Flags.battleEvent = Flags.NONE;
         if(!gameOver)
         {
            _loc3_ = new MapMenu();
            Game.root.addChild(_loc3_);
            Game.maps = _loc3_.maps;
         }
         else
         {
            gameOver = false;
         }
         root.removeEventListener(Event.ENTER_FRAME,enterFrameHandler);
         Game.root.setChildIndex(Game.root.medalBox,Game.root.numChildren - 1);
      }
      
      public static function clearBattle(param1:int = -1) : *
      {
         if(param1 == -1)
         {
            param1 = battleNo;
         }
         if(!respawnable)
         {
            Maps.foeData[mapNo][param1] = 2;
         }
         else
         {
            Maps.foeData[mapNo][param1] = 3;
         }
      }
      
      public static function clearBossBattle(param1:int) : *
      {
         Maps.foeData[MapData.mapNo][param1] = 2;
      }
      
      public static function mainLoop(param1:Event) : *
      {
         if(!Debug.noMusic)
         {
            BGM.loop();
         }
         ++s;
         if(s == 90)
         {
            s = 0;
            Main.testConnection();
         }

         for each (var handler:IMainLoopHandler in mainLoopHandlers)
         {
            if (s % handler.getLoopInterval() == 0)
            {
               handler.onMainLoop();
            }
         }
      }
      
      public static function timer(param1:TimerEvent) : *
      {
         if(SaveData.inGame && Game.mode != Game.MAIN_MENU)
         {
            ++SaveData.playTime;
         }
      }
   }
}

