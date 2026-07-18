package
{
   import fl.transitions.*;
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3547")]
   public dynamic class IntroMovie extends MovieClip
   {
      public var eyes:MovieClip;
      
      public var hat:MovieClip;
      
      public var head:MovieClip;
      
      public var skip:SimpleButton;
      
      public var zombieMode:Boolean;
      
      public var zombieNoLegs:Boolean;
      
      public var playerNo:int;
      
      public var tween1:Tween;
      
      public var tween2:Tween;
      
      public var f:int;
      
      public function IntroMovie()
      {
         super();
         addFrameScript(1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,7,this.frame8,24,this.frame25,112,this.frame113,180,this.frame181,181,this.frame182,218,this.frame219,227,this.frame228,303,this.frame304,309,this.frame310,317,this.frame318,326,this.frame327,426,this.frame427,437,this.frame438,460,this.frame461,477,this.frame478,570,this.frame571,591,this.frame592);
      }
      
      public function getJumpXY(param1:int) : *
      {
         if(param1 == 1)
         {
            X = 380;
            Y = 115;
         }
         if(param1 == 2)
         {
            X = -380;
            Y = -115;
         }
      }
      
      public function move(param1:Number, param2:int) : *
      {
         param2 = param2;
         if(param2 < 1)
         {
            param2 = 1;
         }
         this.tween1 = new Tween(this,"x",null,this.x,this.x + X,param2);
         this.tween2 = new Tween(this,"y",null,this.y,this.y + Y,param2);
      }
      
      internal function frame2() : *
      {
         this.zombieMode = false;
         this.zombieNoLegs = false;
         this.playerNo = 5;
      }
      
      internal function frame3() : *
      {
         if(Debug.skipIntros)
         {
            // Vanilla fix - save files didn't load if intros were skipped, causing an infinite load
            // when opening the Continue menu and no medals loaded.
            SaveMenu.loadMeowFiles();
            gotoAndPlay("skip");
         }
      }
      
      internal function frame4() : *
      {
         Options.setVolume(this);
      }
      
      internal function frame5() : *
      {
         SaveMenu.loadMeowFiles();
      }
      
      internal function frame6() : *
      {
         BGM.play(BGM.OF_RAINBOWS,true);
      }
      
      internal function frame8() : *
      {
         this.skip.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            gotoAndPlay("skip");
         });
      }
      
      internal function frame25() : *
      {
      }
      
      internal function frame113() : *
      {
         Players.equips[5] = [1,13,12,2,2,2,1];
         if(Medals.wanderingOut.unlocked)
         {
            Players.equips[5] = [2,3,11,2,2,2,1];
         }
         if(Medals.slipNSlide.unlocked)
         {
            Players.equips[5] = [6,12,5,2,2,2,1];
         }
         if(Medals.overTheWall.unlocked)
         {
            Players.equips[5] = [10,32,30,2,2,2,1];
         }
         if(Medals.swamped.unlocked)
         {
            Players.equips[5] = [13,16,15,2,2,2,1];
         }
         if(Medals.riverRapids.unlocked)
         {
            Players.equips[5] = [14,2,2,2,2,2,1];
         }
         if(Medals.arcticExpedition.unlocked)
         {
            Players.equips[5] = [3,18,18,2,2,2,1];
         }
         if(Medals.alienLandscape.unlocked)
         {
            Players.equips[5] = [9,17,17,2,2,2,1];
         }
         if(Medals.worldSaved.unlocked)
         {
            Players.equips[5] = [8,36,34,2,2,2,1];
         }
         if(Medals.realDeal.unlocked)
         {
            this.zombieNoLegs = true;
            this.zombieMode = true;
         }
      }
      
      internal function frame181() : *
      {
         this.f = 2;
      }
      
      internal function frame182() : *
      {
         this.eyes.gotoAndPlay("stars");
      }
      
      internal function frame219() : *
      {
         this.head.mouth.gotoAndPlay("smile");
         this.getJumpXY(1);
      }
      
      internal function frame228() : *
      {
         this.move(0,12);
      }
      
      internal function frame304() : *
      {
         this.head.mouth.visible = false;
      }
      
      internal function frame310() : *
      {
         this.head.mouth.visible = true;
      }
      
      internal function frame318() : *
      {
         this.getJumpXY(2);
      }
      
      internal function frame327() : *
      {
         this.move(0,12);
      }
      
      internal function frame427() : *
      {
         this.eyes.gotoAndStop("close");
      }
      
      internal function frame438() : *
      {
         this.head.mouth.gotoAndPlay("smile");
      }
      
      internal function frame461() : *
      {
         this.head.mouth.gotoAndStop(1);
      }
      
      internal function frame478() : *
      {
         this.eyes.gotoAndPlay(3);
      }
      
      internal function frame571() : *
      {
         this.x = 402.5;
         this.y = 304.95;
         parent.introDone();
      }
      
      internal function frame592() : *
      {
         stop();
         parent.removeIntro();
      }
   }
}