package
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
   import archipelago.*;

   [Embed(source="/_assets/assets.swf", symbol="symbol20271")]
   public dynamic class Map152 extends Maps
   {
      private var chestCooldown:int = 30;
      public function Map152()
      {
         super();
         addFrameScript(0, this.frame1, 1, this.frame2);
         addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
      }

      internal function frame1():*
      {
         init();
      }

      internal function frame2():*
      {
         MapData.init(currentFrame, this);
      }

      public function onEnterFrame(param1:Event):*
      {
         if (Game.mode != Game.MAP || Game.mapMenu == null)
         {
            return;
         }

         if (Game.mapMenu.treasurebox.visible || Game.mapMenu.textbox.visible)
         {
            return;
         }

         if (chestCooldown > 0)
         {
            chestCooldown--;
            return;
         }
         chestCooldown = 30; // Cooldown to prevent multiple chests from opening at the same time
         
         // Open chest 5 and chest 6 (initial checks) if not opened, but only one at a time
         if(APMapHelpers.tryOpenChest(this, "chest5"))
         {
            return;
         }

         if(APMapHelpers.tryOpenChest(this, "chest6"))
         {
            return;
         }
      }
   }
}
