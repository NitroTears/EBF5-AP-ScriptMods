package EpicBattleFantasy5_fla
{
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15398")]
   public dynamic class flydie_4414 extends MovieClip
   {
      public var skin:int;
      
      public function flydie_4414()
      {
         super();
         addFrameScript(0,this.frame1,34,this.frame35);
      }
      
      internal function frame1() : *
      {
         this.skin = Math.random() * 5 + 1;
         gotoAndPlay(currentFrame + int(Math.random() * 3));
      }
      
      internal function frame35() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 60));
      }
   }
}

