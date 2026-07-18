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
   import text.SetStrings;

   [Embed(source="/_assets/assets.swf", symbol="symbol2351")]
   public dynamic class Segment extends MovieClip
   {
      public var X:int;

      public var Y:int;

      private var hoverHit:Sprite;

      public function Segment()
      {
         super();
         addFrameScript(0, this.frame1, 1, this.frame2, 2, this.frame3);
      }

      public function onRollOverHandler(param1:MouseEvent):*
      {
         // Append the Map Location in format A0, where A is the column and 0 is the row, to the tooltip string
         var nameStr:String = SetStrings.getString("names", Maps.mapNames[this.Y][this.X]);

         var columnLetter:String = String.fromCharCode(65 + this.X); // Convert 0 to A, 1 to B, etc.
         var rowNumber:String = String(this.Y); // Row number is just the Y coordinate

         var _loc2_:Object = {"name": nameStr + " - " + columnLetter + rowNumber};
         if (this.X < 8)
         {
            GUI.showTooltip(parent, x + 72, y + 22, _loc2_, 16);
         }
         else
         {
            GUI.showTooltip(parent, x + 15, y + 22, _loc2_, 15);
         }
      }

      public function onRollOutHandler(param1:MouseEvent):*
      {
         GUI.removeTooltip();
      }

      internal function frame1():*
      {
         stop();
         addEventListener(MouseEvent.ROLL_OVER, this.onRollOverHandler);
         addEventListener(MouseEvent.ROLL_OUT, this.onRollOutHandler);
      }

      internal function frame2():*
      {
         stop();
         addEventListener(MouseEvent.ROLL_OVER, this.onRollOverHandler);
         addEventListener(MouseEvent.ROLL_OUT, this.onRollOutHandler);
      }

      internal function frame3():*
      {
         stop();
         addEventListener(MouseEvent.ROLL_OVER, this.onRollOverHandler);
         addEventListener(MouseEvent.ROLL_OUT, this.onRollOutHandler);
      }

      private function ensureHitArea():void
      {
         if (hoverHit != null)
         {
            return;
         }
         hoverHit = new Sprite();
         hoverHit.graphics.beginFill(16711680, 0);
         hoverHit.graphics.drawRect(0, 0, 87, 44);
         hoverHit.graphics.endFill();
         hoverHit.visible = false;
         addChild(hoverHit);
         this.hitArea = hoverHit;
      }
   }
}
