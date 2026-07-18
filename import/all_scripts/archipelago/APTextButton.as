package archipelago
{
   import flash.display.SimpleButton;
   import flash.display.GradientType;
   import flash.geom.ColorTransform;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;

   public class APTextButton extends flash.display.Sprite
   {
      public var btn:SimpleButton;
      public var textField:TextField;

      /**
       * Creates an `APTextButton`. Remember to `addChild(yourTextButton);` after calling this constructor.
       * The text is left aligned and placed in the center of the button.
       * 
       * @param xpos X position of the button.
       * @param ypos Y position of the button.
       * @param width Total width of the button. If -1, uses the rendered width of the `text` argument.
       * @param height Total height of the button. If -1, uses the rendered height of the `text` argument.
       * @param text Text on the button.
       * @param fontSize Font size to use.
       * @param AutoPaddingPx Amount of padding to add when the height/width of the button are based on the size of the `text` argument.
       * Does not apply to widths or heights that are manually specified.
       */
      public function APTextButton(xpos:int, ypos:int, width_:int, height_:int, text:String, fontSize:int = 16, autoPaddingPx:int = 4)
      {
         // ok yeah no tinkering with the gradient is *not* worth it, at least for the basic demo I'm doing here.
         // maybe it can be brought back later but for now I'm just gonna do a basic semi-transparent solid color background.
         super();
         textField = new TextField();
         var textFormat:TextFormat = new TextFormat();
         textFormat.font = "Verdana";
         textFormat.color = 0xFFFFFF;
         textFormat.size = fontSize;
         textField.setTextFormat(textFormat);
         textField.defaultTextFormat = textFormat;
         textField.selectable = false;
         textField.mouseEnabled = false;
         textField.autoSize = TextFieldAutoSize.CENTER;
         textField.appendText(text)
         //Main.debugLogAP.print("text object height: " + textField.height.toString() + " | text object width: " + textField.width.toString());
         if (width_ == -1)
         {
            width_ = textField.width + autoPaddingPx; // autoPaddingPx*2 maybe? well ok probably for the height and not the width but whatever.
            //textField.x += autoPaddingPx/2;
         }
         if (height_ == -1)
         {
            height_ = textField.height + autoPaddingPx;
            //Main.debugLogAP.print("textField.height + autoPaddingPx: " + (textField.height + autoPaddingPx).toString())
            //Main.debugLogAP.print("height_: " + height_.toString() + " textField.textHeight: " + textField.textHeight.toString() + " autoPaddingPx: " + autoPaddingPx.toString());
            //textField.y += autoPaddingPx/2;
         }
         // values found via inspecting character id 346 in FFDEC, the base gradient the game uses for the type of button I'm recreating here.
         // (though i went in and adjusted it so it should be a 100% symmetrical gradient now? though honestly it's hard to tell if it is or isn't).
         // placing new UI via FFDEC is gonna be a lot slower and annoying than creating at runtime with code.
         //var gradientRatios:Array = [0, 22, 52, 87, 188, 209, 232, 255]; // range is 0-255
         // ^ the above ratios are uneven for some reason. here's a more even version.
         //var gradientRatios:Array = [0, 22, 52, 87, 168, 209, 232, 255]; // range is 0-255
         //var gradientAlphas:Array = [0/255, 107/255, 172/255, 255/255, 255/255, 202/255, 130/255, 0/255]
         // full opacity in the middle still leaves our custom text readable but it looks a bit bad.
         //var gradientAlphas:Array = [0/255, 107/255, 172/255, 220/255, 220/255, 172/255, 107/255, 0/255]
         //var gradientColors:Array = [0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF];
         // there's a name collision with `flash.display.Sprite` and EBF5's `Sprite` class, used for the elemental sprite enemies. (ice sprite, wind sprite, etc)
         var overSprite:flash.display.Sprite = new flash.display.Sprite();
         var downSprite:flash.display.Sprite = new flash.display.Sprite();
         var hitTestSprite:flash.display.Sprite = new flash.display.Sprite();
         var upSprite:flash.display.Sprite = new flash.display.Sprite();
         upSprite.graphics.beginFill(0x000000, 0.9);
         upSprite.graphics.drawRect(0, 0, width_, height_);
         upSprite.graphics.endFill();
         //var gradientMatrix:Matrix = new Matrix(); //new Matrix(0.04446411, 0, 0, 0.02432251, 36.45, 20.2); // again directly extracted from FFDEC. (translation figures are actually probably kinda wrong?)
         //gradientMatrix.createGradientBox(width, height);
         //overSprite.graphics.beginGradientFill(GradientType.LINEAR, gradientColors, gradientAlphas, gradientRatios, gradientMatrix);
         overSprite.graphics.beginFill(0x000000, 0.6);
         overSprite.graphics.drawRect(0, 0, width_, height_);
         overSprite.graphics.endFill();
         //downSprite.graphics.beginGradientFill(GradientType.LINEAR, gradientColors, gradientAlphas, gradientRatios, gradientMatrix);
         downSprite.graphics.beginFill(0x000000, 0.4);
         downSprite.graphics.drawRect(0, 0, width_, height_);
         downSprite.graphics.endFill();
         //hitSprite.graphics.beginGradientFill(GradientType.LINEAR, gradientColors, gradientAlphas, gradientRatios, gradientMatrix);
         hitTestSprite.graphics.beginFill(0x000000, 0.0 /*0.3*/);
         hitTestSprite.graphics.drawRect(0, 0, width_, height_);
         hitTestSprite.graphics.endFill();
         // found by inspecting character id 347 (the button object itself) in FFDEC's simple editor.
         //overSprite.transform.colorTransform = new ColorTransform(1, 1, 1, 0.26); // RGBA
         //downSprite.transform.colorTransform = new ColorTransform(1, 1, 1, 0.67); // RGBA
         btn = new SimpleButton(upSprite, overSprite, downSprite, hitTestSprite)

         this.x = xpos;
         this.y = ypos;
         this.addChild(btn);
         this.addChild(textField);
         centerTextField();
         // Main.debugLogAP.print("height_: " + height_.toString() + " this.height " + this.height.toString() +  " textField.textHeight: " + textField.textHeight.toString() +
         // " textField.y: " + textField.y.toString() + " autoPaddingPx: " + autoPaddingPx.toString() + " upSprite.height: " + upSprite.height.toString() +
         // " textField.height: " + textField.height.toString());
         //textField.y = (height - (textField.textHeight*1.25))/2; // only works for `autoPaddingPx = 8`.
         //Main.debugLogAP.print("textField.x " + textField.x.toString() + " | textField.y " + textField.y.toString());
         //Game.root.stage.addChild(this);

         //Game.root.stage.addEventListener(MouseEvent.CLICK, debugPrintClickPosition);
      }

      public function centerTextField():void
      {
         // ok so for some reason this calculation is realllllly dang stubborn and doesn't want to work perfectly for vertical alignment.
         // if somebody wants to fix it then feel free, but I'm tired and want to create my PRs. It has already taken such a long time.
         // for some reason, this code is just straight up slightly wrong for vertical alignment, despite it making sense and being the solution shared when others asked this question for actionscript 3 online:
         // textField.x = (width_ - textField.width)/2;
         // textField.y = (height_ - textField.height)/2;
         // note that using height or textHeight yield basically the same result, the root issue here isn't just using the wrong one of the two.
         // <strikethrough>TODO: REMAKE THIS CALCULATION USING `autoPaddingPx`, AND STORE `autoPaddingPx` AS A CLASS VARIABLE BECAUSE I NEED TO DO THAT FOR SOME REASON!
         // I have no idea why just adding `autoPaddingPx` to `height` and then just doing (height/2 - textHeight/2) isn't working but I guess it isn't.</strikethrough>
         // ^ IDK about this solution. also I wrote it when this comment was in the constructor and not `centerTextField()`.
         // AI overview (which I was avoiding looking at but I literally can't find anybody else with this same issue) is telling me that apparently for real visual centering the equation i need is this:
         // True Ascent = (FieldHeight - TextFormat.size) / 2
         // Corrected Y = Box_Y + Box_Height / 2 - True Ascent
         // In the later code exanple it wrote, it caculates ascent by just assuming that (ascent = fontSize * 0.8), but there is a getLineMetrics function so I'll probably use that.
         // If there's more than one line I'll probably just fall back on using the visually slightly incorrect but still at least mostly working `(widthOrHeight_ - textField.widthOrHeight)/2`.
         // ^ ok yep that also doesn't seem to want to work.
         // textField.x = (width_ - textField.width)/2;
         // textField.y = (height_ - textField.height)/2;
         // if (textField.numLines == 1)
         // {
         //    textField.x = (width - textField.width) / 2;
         //    // both of these are broken.
         //    // maybe the other properties getLineMetrics returns might be useful for this.
         //    //textField.y = (height/2) - textField.getLineMetrics(0).ascent;
         //    //textField.y = (this.height / 2) - ((textField.height - textField.defaultTextFormat.size) / 2); // this should use getTextFormat() or whatever
         // }
         // else//if (textField.numLines > 1)
         // {
         //    textField.x = (width - textField.width)/2;
         //    textField.y = (height - textField.height)/2;
         // }
         textField.x = (width - textField.width)/2;
         textField.y = (height - textField.height)/2;
      }

      public function setText(text:String):void
      {
         textField.text = "";
         textField.appendText(text);
         centerTextField()
      }

      // public function debugPrintClickPosition(e:MouseEvent):void
      // {
      //    Main.debugLogAP.print("x: " + Game.root.stage.mouseX.toString() + "y: " + Game.root.stage.mouseY.toString());
      // }
      public function disableClick():void
      {
         btn.enabled = false;
         btn.mouseEnabled = false;
      }

      public function enableClick():void
      {
         btn.enabled = true;
         btn.mouseEnabled = true;
      }
   }
}
