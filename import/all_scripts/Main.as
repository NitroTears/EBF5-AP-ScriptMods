package
{
   import com.newgrounds.*;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.utils.*;
   import text.*;
   import archipelago.*;

   public class Main extends MovieClip
   {
      public static var apConnectUI:APConnectUI = null;

      public static var debugLogAP:archipelago.APDebugLogger;

      public static var apSocket:APSocket = null;

      public static var apItemHandler:ItemHandler = null;

      public static var apDataModHandler:APDataModHandler = null;

      public static var kongregate:*;
      
      public static var armorQuests:*;
      
      public static var armorAPI:*;
      
      public static var sender:LocalConnection;
      
      public static var receiver:LocalConnection;
      
      public static var AIRappID:String;
      
      public static var missedMessages:Array;
      
      public static var prevMessage:Array;
      
      public static var intro:Boolean = true;
      
      public static var hasPremium:Boolean = true;
      
      public static var AGsku:String = "ebf4-premium";
      
      public static var errorLog:String = "";
      
      public static var errorCount:int = 0;
      
      public static var messagesEnabled:Boolean = true;
      
      public static var messageTest:Boolean = false;
      
      public static var meowsRequested:Boolean = false;
      
      public static var connected:Boolean = false;
      
      public static var connectionCount:int = 0;
      
      public static var doubleCheck:int = 0;
      
      public static var inited:Boolean = false;
      
      public static var newGamePlusFlag:Boolean = false;
      
      public static var newGameFlag:Boolean = false;
      
      public var intro:MovieClip;
      
      public var temp:Boolean;
      
      public var mouseFunction:Function = this.doNothing;
      
      public var mouseFunction2:Function = this.doNothing;
      
      public var timer:Timer;
      
      public var gameFrame:MovieClip;
      
      public var mainFrame:MovieClip;
      
      public var loader:MovieClip;
      
      public var adBox:MovieClip;
      
      public var konglink:SimpleButton;
      
      public var medalBox:MovieClip;
      
      public var opbar:MovieClip;
      
      public var blackness:MovieClip;
      
      public var mainMenu:MainMenu;
      
      public var minigame:Minigame;
      
      public var sounds:MovieClip;
      
      public var preloader:MovieClip;
      
      public var loadingComplete:Boolean = false;
      
      public var loaded:Number = 0;
      
      public var noAd:Boolean = false;
      
      public var date1:Date;
      
      public var date2:Date;
      
      public var AGdevKey:String = "b8cb4aba41975fc909e198bd6c662a4f";
      
      public var AGgameKey:String = "epic-battle-fantasy-4";
      
      public var AGapiKey:String = "2904005A-9858-4FAD-A05C-E3490832AC26";
      
      internal var disOb:DisplayObject;
      
      public var saveMenu:MovieClip;
      
      public var adURL:URLRequest = new URLRequest("http://www.kongnet.net/www/delivery/avw.php?zoneid=24&cb=24568455&n=a84c3a9b");
      
      public var adClickURL:URLRequest = new URLRequest("http://www.kongnet.net/www/delivery/ck.php?n=a84c3a9b&cb=94556846");
      
      public var adLoader:Loader = new Loader();
      
      public var startDelay:int = 0;
      
      public function Main()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,15,this.frame16,16,this.frame17);
         Game.root = this;
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.handleGlobalErrors);
         if(Options.applicationFeatures)
         {
            try
            {
               receiver = new LocalConnection();
               receiver.allowDomain("app#EpicBattleFantasy5");
               try
               {
                  if(receiver)
                  {
                     receiver.close();
                  }
               }
               catch(e:Error)
               {
               }
               receiver.connect("EBF5toGame");
               receiver.client = Game.root;
            }
            catch(e:Error)
            {
            }
            try
            {
               sender = new LocalConnection();
               AIRappID = "app#EpicBattleFantasy5:EBF5toWrapper";
            }
            catch(e:Error)
            {
            }
            try
            {
               messageTest = true;
               sendMessage("test",null,null,false);
            }
            catch(e:Error)
            {
            }
         }
         log("STARTING EPIC BATTLE FANTASY 5!");
         tabEnabled = false;
         tabChildren = false;
         this.date1 = new Date();
         GUI.init();
         if(Options.enableSols)
         {
            Options.load();
            Medals.loadMisc();
         }
      }
      
      public static function log(param1:String, param2:Boolean = true) : void
      {
         var s:String = param1;
         var save:Boolean = param2;
         try
         {
            if(Game.mode == Game.MAIN_MENU && (Game.root as Main).mainMenu && Boolean((Game.root as Main).mainMenu.errorLog))
            {
               (Game.root as Main).mainMenu.errorLog.text += s;
            }
            else if(!(Game.mode == Game.MAP && Game.mapMenu && Boolean(Game.mapMenu.errorLog)))
            {
               if(Game.mode == Game.BATTLE)
               {
                  Battle.menu.debug.errorBox.text += s;
                  Battle.menu.debug.visible = true;
               }
            }
         }
         catch(e:Error)
         {
         }
      }

      public static function initAPDebugLogger() : void
      {
         if(debugLogAP != null || Game.root == null || Game.root.stage == null)
         {
            return;
         }

         debugLogAP = new APDebugLogger();
         Game.root.stage.addChild(debugLogAP);
         debugLogAP.initTextField();
      }
      
      public static function testConnection() : *
      {
         if(!Options.applicationFeatures)
         {
            return;
         }
         sender.send(AIRappID,"testConnection");
      }
      
      public static function sendMessage(param1:String, param2:* = null, param3:* = null, param4:* = null, param5:Boolean = false) : *
      {
         var method:String = param1;
         var param:* = param2;
         param2 = param3;
         param3 = param4;
         param4 = param5;
         if(!missedMessages)
         {
            missedMessages = [];
         }
         prevMessage = [method,param,param2,param3,param4];
         if(!connected)
         {
            missedMessages.push([method,param,param2,param3,param4]);
         }
         if(method == "loadAllFiles")
         {
            if(meowsRequested)
            {
               return;
            }
            meowsRequested = true;
         }
         try
         {
            if(!messagesEnabled)
            {
               return;
            }
            if(!sender)
            {
               return;
            }
            if(param3 || param4)
            {
               sender.send(AIRappID,method,param,param2,param3);
            }
            else if(param2)
            {
               sender.send(AIRappID,method,param,param2);
            }
            else if(param)
            {
               sender.send(AIRappID,method,param);
            }
            else
            {
               sender.send(AIRappID,method);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function onStatus(param1:StatusEvent) : void
      {
         switch(param1.level)
         {
            case "status":
               if(!connected)
               {
                  connected = true;
                  resendMessages();
               }
               break;
            case "error":
               if(connected)
               {
                  if(Boolean(prevMessage) && Boolean(prevMessage[0]))
                  {
                     missedMessages.push(prevMessage);
                  }
               }
               connected = false;
         }
      }
      
      public static function resendMessages() : *
      {
         var _loc8_:Array = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = int(missedMessages.length);
         var _loc3_:int = 0;
         var _loc4_:int = -1;
         var _loc5_:int = -1;
         var _loc6_:int = -1;
         var _loc7_:Boolean = false;
         for each(_loc8_ in missedMessages)
         {
            if(_loc8_[0] == "saveToMeow" && _loc8_[1] != "medals")
            {
               _loc4_ = _loc3_;
            }
            if(_loc8_[0] == "saveToMeow" && _loc8_[1] == "medals")
            {
               _loc5_ = _loc3_;
            }
            if(_loc8_[0] == "toggleFullscreen")
            {
               _loc6_ = _loc3_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         for each(_loc8_ in missedMessages)
         {
            if(_loc8_[0] == "unlockMedal")
            {
               _loc7_ = true;
               sendMessage(_loc8_[0],_loc8_[1]);
            }
            if(_loc8_[0] == "setWindowSize1" || _loc8_[0] == "setWindowSize2" || _loc8_[0] == "setWindowSize3" || _loc8_[0] == "setWindowSize4" || _loc8_[0] == "setWindowSize5" || _loc8_[0] == "setWindowSize6")
            {
               sendMessage(_loc8_[0]);
            }
            if(_loc8_[0] == "toggleFullscreen" && _loc3_ == _loc6_)
            {
               sendMessage(_loc8_[0],_loc8_[1],_loc8_[2]);
            }
            if(_loc8_[0] == "saveToMeow" && _loc3_ == _loc4_)
            {
               SaveData.exeSave = _loc8_[1];
               SaveData.saveToMeow(SaveData.passwordToBeSaved);
            }
            if(_loc8_[0] == "saveToMeow" && _loc3_ == _loc5_)
            {
               Medals.saveMisc();
            }
            if(_loc8_[0] == "exitGame")
            {
               Main.sendMessage(_loc8_[0]);
            }
            _loc3_++;
            if(_loc3_ > _loc2_)
            {
               missedMessages = [];
               return;
            }
         }
         missedMessages = [];
      }
      
      public static function remakeReceiver() : *
      {
         try
         {
            if(receiver)
            {
               receiver.close();
            }
         }
         catch(e:Error)
         {
         }
         receiver = new LocalConnection();
         receiver.allowDomain("app#EpicBattleFantasy5");
         try
         {
            receiver.connect("EBF5toGame");
         }
         catch(e:Error)
         {
         }
         receiver.client = Game.root;
      }
      
      public static function remakeConnection() : *
      {
         if(connectionCount)
         {
            connectionCount = 0;
            return;
         }
         try
         {
            if(sender)
            {
               sender.close();
            }
         }
         catch(e:Error)
         {
         }
         try
         {
         }
         catch(e:Error)
         {
         }
      }
      
      public static function startGame() : *
      {
         Game.root.stage.addEventListener(MouseEvent.CONTEXT_MENU,function(param1:MouseEvent):void
         {
         });
         if(!Options.applicationFeatures)
         {
            return;
         }
         sender.addEventListener(StatusEvent.STATUS,Main.onStatus);
      }
      
      public static function unlockPremiumStuff() : *
      {
         if(!Options.webVersion)
         {
            Flags.DUNGEONS_UNLOCKED.quantity = 1;
         }
         else if(Main.hasPremium)
         {
            Flags.DUNGEONS_UNLOCKED.quantity = 1;
         }
         else
         {
            Flags.DUNGEONS_UNLOCKED.quantity = 0;
         }
      }
      
      public static function checkIfHasPack() : *
      {
         if(!Debug.armorGames && !Debug.jogos)
         {
            kongregate.mtx.requestUserItemList(null,checkUserItems);
         }
         else
         {
            Main.armorAPI.retrieveUserData(checkUserItems2,"PremiumEnabled");
         }
      }
      
      public static function checkUserItems(param1:Object) : void
      {
         if(param1.success)
         {
            if(param1.data.length > 0)
            {
               hasPremium = true;
            }
         }
      }
      
      public static function buyPremiumFromMainMenu() : *
      {
         var _loc1_:Spell = null;
         hasPremium = true;
         unlockPremiumStuff();
         for each(_loc1_ in Spells.PREMIUM_SKILLS)
         {
            _loc1_.level = 0;
         }
      }
      
      public static function checkUserItems2(param1:Object) : void
      {
         if(Boolean(param1.success) && Boolean(param1.data) && param1.data == 2)
         {
            hasPremium = true;
         }
         else
         {
            ++doubleCheck;
            if(doubleCheck <= 2)
            {
               checkIfHasPack();
            }
         }
      }
      
      public static function sendKongStats() : *
      {
         var e:Equip = null;
         var equips:int = 0;
         for each(e in Equips.ALL_EQUIPS)
         {
            if(Boolean(e) && e.owned)
            {
               equips++;
            }
         }
         equips--;
         try
         {
         }
         catch(e:Error)
         {
         }
         try
         {
         }
         catch(e:Error)
         {
         }
         try
         {
            Main.kongregate.stats.submit("ChestsOpened",SaveData.chestsOpened);
            Main.kongregate.stats.submit("SecretsFound",SaveData.secretsFound);
            Main.kongregate.stats.submit("PlayTime",Math.floor(SaveData.playTime / 60));
            Main.kongregate.stats.submit("StepsWalked",SaveData.stepsWalked);
            Main.kongregate.stats.submit("EquipsCollected",equips);
            Main.kongregate.stats.submit("PlayersWounded",SaveData.playersWounded);
            Main.kongregate.stats.submit("MaxDamage",SaveData.maxDamage);
            Main.kongregate.stats.submit("ExpLevel",Math.floor(Players.getAverageLevel()));
            Main.kongregate.stats.submit("FoesDefeated",SaveData.foesDefeated);
            Main.kongregate.stats.submit("MoneyCollected",SaveData.money);
            Main.kongregate.stats.submit("FoesScanned",Foes.scannedFoes.length);
            Main.kongregate.stats.submit("MedalsEarned",Medals.countMedals());
            Main.kongregate.stats.submit("QuestsCompleted",NPCs.countQuests());
            Main.kongregate.stats.submit("GameProgress",checkProgressOfCurrentSaveFile());
            if(MainMenu.gallery)
            {
               Main.kongregate.stats.submit("GameComplete",1);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function checkProgressOfCurrentSaveFile() : int
      {
         var _loc1_:int = 0;
         if(Events.OAK_DEFEATED.quantity)
         {
            _loc1_ = 1;
         }
         if(Events.GOLEM_DEFEATED.quantity)
         {
            _loc1_ = 2;
         }
         if(Events.PRAETORIAN_DEFEATED.quantity)
         {
            _loc1_ = 3;
         }
         if(Events.CREEPER_DEFEATED.quantity)
         {
            _loc1_ = 4;
         }
         if(Events.GODCAT_DEFEATED.quantity)
         {
            _loc1_ = 5;
         }
         return _loc1_;
      }
      
      public static function newGame() : *
      {
         var _loc1_:Equip = null;
         newGameFlag = true;
         Battle.reset();
         Debug.init();
         if(Options.altEquipLocations)
         {
            for each(_loc1_ in [Equips.captainhat,Equips.hoboclothes,Equips.ultrapro9000])
            {
               _loc1_.owned = false;
            }
         }
         Equips.initRandomEquips();
         Equip.switchEquipStats();
         SetStrings.setAllEquipsStrings();
         if(!newGamePlusFlag)
         {
            Summons.info = {};

            // Reinitialize players and game for starting party/equipment to take effect
            Players.init();
            Game.init();
         }
      }
      
      public static function newGamePlus() : *
      {
         Maps.touchedPlainTile = true;
         MapData.area = "";
         Global.battleState = 0;
         SaveData.questNo = 2;
         Items.resetKeyItems();
         Flags.init();
         Game.init();
         NPCs.init();
         SaveData.initForNewgamePlus();
         SaveData.resetText();
         MapData.initMapVars();
         Weather.tempWeather = Weather.NONE;
      }
      
      public function introDone() : *
      {
         this.blackness.visible = false;
         Options.idlePlayers = this.temp;
         Debug.skipIntros = true;
         this.mainMenu.intro2.play();
         BGM.play(BGM.OF_RAINBOWS,true);
      }
      
      public function removeIntro() : *
      {
         removeChild(this.intro);
         this.intro = null;
         if(Minigame.win)
         {
            Medals.unlock(Medals.whatGame);
         }
      }
      
      public function doNothing() : *
      {
      }
      
      public function follow(param1:Event) : *
      {
         this.mouseFunction();
      }
      
      public function trackClicks(param1:Event) : *
      {
         this.mouseFunction2();
      }
      
      public function trackClicks2() : *
      {
         if(Game.mode == Game.BATTLE)
         {
            Log.Heatmap("click","Battle",mouseX,mouseY);
         }
         if(Game.mode == Game.MAP)
         {
            Log.Heatmap("click","Map",mouseX,mouseY);
         }
         if(Game.mode == Game.MAIN_MENU)
         {
            Log.Heatmap("click","MainMenu",mouseX,mouseY);
         }
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         super.addChild(param1);
      }
      
      public function testSaving(param1:MovieClip = null) : *
      {
         var so:SharedObject = null;
         var fluff:String = null;
         var i:int = 0;
         var preloader:MovieClip = param1;
         var failure:Boolean = false;
         try
         {
            so = SharedObject.getLocal("testFile");
            fluff = "This file is testing to see if save data can be created. Here\'s some random numbers: ";
            i = 0;
            while(i < 30000)
            {
               fluff += Math.random();
               i++;
            }
            so.data.fluff = fluff;
            so.flush();
            so = SharedObject.getLocal("testFile");
            if(!so.data.fluff)
            {
               failure = true;
            }
            so.clear();
         }
         catch(e:Error)
         {
            failure = true;
         }
      }
      
      public function stopAllChildren(param1:MovieClip, param2:Boolean = false) : *
      {
         if(param1 is MedalBox)
         {
            return;
         }
         param1.stop();
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            this.disOb = param1.getChildAt(_loc3_);
            if(this.disOb is Maps)
            {
               param2 = true;
            }
            if(this.disOb is MovieClip)
            {
               this.stopAllChildren(this.disOb,param2);
            }
            _loc3_++;
         }
      }
      
      public function listAllChildren(param1:MovieClip, param2:Boolean = false) : *
      {
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            this.disOb = param1.getChildAt(_loc3_);
            if(this.disOb is Maps)
            {
               param2 = true;
            }
            if(this.disOb is MovieClip)
            {
               this.listAllChildren(this.disOb,param2);
            }
            _loc3_++;
         }
      }
      
      private function handleGlobalErrors(param1:UncaughtErrorEvent) : void
      {
         var e:UncaughtErrorEvent = param1;
         if(messageTest)
         {
            ++errorCount;
            if(errorCount > 1)
            {
               messagesEnabled = false;
               Options.enableSols = true;
               Medals.loadMisc();
               log("-----DISABLING WRAPPER MESSAGES: NO WRAPPER DETECTED-----");
            }
         }
         log(SetStrings.getString("menus","errorMessage"));
         try
         {
            if(e.error["message"])
            {
               log(e.error["getStackTrace"]());
            }
            else if(e.error["text"])
            {
               log(e.error["text"]);
            }
            else
            {
               log(e.error["toString"]());
            }
         }
         catch(er:Error)
         {
            log("Error: " + e + "  " + e.error);
         }
         log("\n\n",true);
      }
      
      public function loadCallback(param1:String) : *
      {
         SaveData.loadMeow(param1);
      }
      
      public function confirmSave() : *
      {
         (this.saveMenu as SaveMenu).saveConfirmed();
      }
      
      public function confirmLoad() : *
      {
         SaveMenu.meowLoadingComplete = true;
      }
      
      public function meowToSol(param1:String, param2:String, param3:int) : *
      {
         SaveData.meowToSol(param1,param2,param3);
      }
      
      public function getSavePreviews(param1:Array) : *
      {
         SaveMenu.getPreviews(param1);
      }
      
      public function AGloadComplete(param1:Event) : void
      {
         armorQuests = param1.currentTarget.content;
         armorQuests.init({
            "apiKey":this.AGapiKey,
            "stage":this.stage,
            "debug":true,
            "console":true
         });
      }
      
      public function AGIloadComplete(param1:Event) : void
      {
         armorAPI = param1.currentTarget.content;
         this.addChild(armorAPI);
         armorAPI.init(this.AGdevKey,this.AGgameKey);
         armorAPI.initAGUI();
      }
      
      public function loadAd() : void
      {
         Security.allowDomain("kongnet.net");
         this.adLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onAdLoad);
         this.adLoader.load(this.adURL);
      }
      
      public function onAdLoad(param1:Event) : void
      {
         if(this.adBox)
         {
            this.adBox.addChild(this.adLoader);
         }
         this.adLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onAdLoad);
         if(this.adBox)
         {
            this.adBox.addEventListener(MouseEvent.CLICK,this.onAdClick);
         }
         if(this.adBox)
         {
            this.adBox.buttonMode = true;
         }
         if(this.adBox)
         {
            this.adBox.useHandCursor = true;
         }
      }
      
      public function onAdClick(param1:Event) : void
      {
         navigateToURL(this.adClickURL,"_blank");
      }
      
      public function loadComplete(param1:Event) : void
      {
         kongregate = param1.target.content;
         kongregate.services.connect();
         checkIfHasPack();
      }
      
      public function init() : *
      {
         if(Main.inited)
         {
            return;
         }
         inited = true;
         stop();
         if(!Options.applicationFeatures)
         {
            try
            {
               this.loader.stop();
               if(Links.onKong() || Debug.armorGames || Boolean(Debug.jogos) || true)
               {
                  if(this.adBox)
                  {
                     this.adBox.visible = false;
                  }
                  this.noAd = true;
               }
               addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
            }
            catch(e:Error)
            {
            }
         }
         stage.stageFocusRect = null;
      }
      
      public function loginCallback(param1:Object) : *
      {
         if(param1.success)
         {
            if(!param1.loggedIn)
            {
            }
         }
      }
      
      public function initMore() : *
      {
         if(!this.medalBox)
         {
            this.medalBox = new MedalBox();
            this.addChild(this.medalBox);
         }
         if(Game.mapMenu)
         {
            Game.mapMenu.maps = null;
         }
         Game.mapMenu = null;
         Flags.FINAL_BOSS_DEFEATED.quantity = 0;
         SaveData.questNo = 1;
         BGM.init();
         Maps.touchedPlainTile = true;
         MapData.area = "";
         Global.battleState = 0;
         Equips.init();
         EquipsAlt.flamebadge;
         Items.init();
         Cards.init();
         Options.clearCheats();
         Players.init();
         Foes.init();
         Flags.init();
         Spells.init();
         Game.init();
         NPCs.init();
         SaveData.init();
         MapMenu.tipStartFlag = [];
         MapMenu.tipCompleteFlag = [];
         Text.init();
         SaveData.resetText();
         MapData.initMapVars();
         Foes.scannedFoes = [];
         Summons.init();
         unlockPremiumStuff();
         Summons.info = {};
         Weather.tempWeather = Weather.NONE;
         SetStrings.setAllStrings();
         if(!this.timer)
         {
            this.timer = new Timer(1000,0);
            try
            {
               SFX.init(this);
            }
            catch(errObject:Error)
            {
            }
            stage.addEventListener(MouseEvent.MOUSE_MOVE,this.follow);
            addEventListener(Event.ENTER_FRAME,Game.mainLoop);
            this.timer.addEventListener(TimerEvent.TIMER,Game.timer);
            this.timer.start();
            Medals.resendMedals();
         }
      }
      
      public function enterFrameHandler(param1:Event = null) : *
      {
         var _loc2_:Number = NaN;
         ++this.startDelay;
         this.startDelay += 120;
         if(!this.loadingComplete)
         {
            if(loaderInfo)
            {
               if(Debug.SteamVersion)
               {
                  this.loaded = 1;
               }
               else
               {
                  this.loaded = loaderInfo.bytesLoaded / loaderInfo.bytesTotal;
               }
            }
            if(this.loader.bar)
            {
               this.loader.bar.scaleY = this.loaded;
               this.loader.percent.text = "" + Math.floor(this.loaded * 100) + "%";
            }
            if(this.loaded >= 1 && this.loader.currentFrame == 1 && this.startDelay > 120)
            {
               try
               {
                  checkIfHasPack();
               }
               catch(e:Error)
               {
               }
               Medals.loadOnlineMedals();
               this.loader.gotoAndPlay(3);
            }
            if(Boolean(this.loader.playButton) && !this.loader.playButton.hasEventListener(MouseEvent.CLICK))
            {
               this.loadingComplete = true;
               this.loader.stop();
               this.loader.playButton.addEventListener(MouseEvent.CLICK,this.playButtonClickHandler,false,0,true);
               this.date2 = new Date();
               _loc2_ = this.date2.valueOf() - this.date1.valueOf();
               _loc2_ /= 1000;
               Log.LevelAverageMetric("LoadingTime","loading",Math.floor(_loc2_));
            }
         }
      }
      
      public function startMovie() : void
      {
         if(this.startDelay > 180)
         {
            removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
            if(root && root is MovieClip && Links.siteLock())
            {
               MovieClip(root).play();
            }
         }
      }
      
      public function playButtonClickHandler(param1:Event = null) : void
      {
         this.startMovie();
      }
      
      internal function frame1() : *
      {
         Game.root = this;
         stage.stageFocusRect = false;
         stage.showDefaultContextMenu = false;
         // Create the debug logger ASAP, this allows for logging 
         // to be available during the first .meow file loads.
         initAPDebugLogger();
         this.minigame = new Minigame();
         this.addChild(this.minigame);
         this.minigame.x = 155.8;
         this.minigame.y = 108.9;
         setChildIndex(this.minigame,0);
         this.init();
         stop();
      }
      
      internal function frame15() : *
      {
         Links.siteLock();
      }
      
      internal function frame16() : *
      {
         this.minigame.teardown();
         SFX.init();
      }
      
      internal function frame17() : *
      {
         Options.clearCustomOptions();
         this.initMore();
         stop();
         this.mainMenu = new MainMenu();
         this.addChild(this.mainMenu);
         setChildIndex(this.blackness,numChildren - 1);
         this.intro = new IntroMovie();
         this.intro.x = 402.5;
         this.intro.y = 304.95;
         this.addChild(this.intro);
         this.temp = Options.idlePlayers;
         Options.idlePlayers = false;
         BattlesAlt.calculateFoeLevels();
         // AP debug connection stuff
         if (Main.apSocket == null)
         {
            Main.apSocket = new APSocket();
         }
         if (Main.apItemHandler == null)
         {
            Main.apItemHandler = new ItemHandler(Main.apSocket);
         }
         if (Main.apDataModHandler == null)
         {
            Main.apDataModHandler = new APDataModHandler(Main.apSocket);
         }
         if (Main.apConnectUI == null)
         {
            Main.apConnectUI = new APConnectUI(Main.apSocket);
            Game.root.stage.addChild(apConnectUI);
         }
      }
   }
}

