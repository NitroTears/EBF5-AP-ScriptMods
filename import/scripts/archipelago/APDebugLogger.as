package archipelago
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   // really basic on screen logger meant for quick and dirty debug stuff. i just want a way to get easy visual feedback because we can't (easily) view the trace() output.
   public class APDebugLogger extends flash.display.Sprite
   {
      public var textField:TextField;
      private var textFormat:TextFormat;

      private var maxLines:int = 21;

      public function APDebugLogger()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
      }

      public function initTextField():void
      {
         textField = new TextField();
         textFormat = new TextFormat();
         textFormat.font = "Verdana";
         textFormat.color = 0xFFFFFF;
         textFormat.size = 12;
         textField.background = false;
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this.graphics.beginFill(0x000000, 0.7);
         this.graphics.drawRect(0, 0, 500, 300);
         this.graphics.endFill();
         textField.mouseEnabled = false; // maybe i'll add a toggle for this setting/showing this log in the first place but for now you'll have to deal with no copy pasting.
         textField.selectable = false;
         mouseChildren = false;
         textField.width = 500;
         textField.height = 300;
         textField.x = 0;
         textField.y = 0;
         textField.wordWrap = true;
         textField.setTextFormat(textFormat);
         textField.defaultTextFormat = textFormat;
         addChild(textField);
         visible = true; // We can set this back to false once we release it but while we're testing I'd prefer to have it on.
      }

      private function onAddedToStage(event:Event):void
      {
         if (stage == null)
         {
            return;
         }

         stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown, false, 0, true);
      }

      private function onRemovedFromStage(event:Event):void
      {
         if (stage)
         {
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
         }
      }

      private function handleKeyDown(event:KeyboardEvent):void
      {
         if (event.keyCode == Keyboard.F3)
         {
            visible = !visible;
         }
      }

      public function print(text:String):void
      {
         if (textField == null)
         {
            return;
         }

         if (textField.text.length > 0)
         {
            textField.appendText("\n");
         }
         textField.appendText(text);

         while (textField.numLines > maxLines)
         {
            var secondLineOffset:int = textField.getLineOffset(1);
            textField.text = textField.text.substring(secondLineOffset);
         }
      }
   }
}
