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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13417")]
   public dynamic class squidtentacle_5092 extends MovieClip
   {
      public function squidtentacle_5092()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(parent)
         {
            gotoAndStop(parent.skin);
            if(!parent.tentacles)
            {
               gotoAndStop(4);
            }
         }
      }
   }
}

