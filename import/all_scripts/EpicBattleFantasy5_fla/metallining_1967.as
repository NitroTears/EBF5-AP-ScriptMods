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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18831")]
   public dynamic class metallining_1967 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public function metallining_1967()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         try
         {
            Maps.instance.addTile(6,x + 25,y + 20);
         }
         catch(e:Error)
         {
         }
         stop();
         this.X = (x + 20) / 50;
         this.Y = (y + 20) / 40;
      }
   }
}

