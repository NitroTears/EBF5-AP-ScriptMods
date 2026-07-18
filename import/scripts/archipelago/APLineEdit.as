package archipelago
{
    import flash.text.TextField;
    import flash.text.TextFormat;
    import flash.text.TextFieldType;
    import flash.events.*;
    import flash.geom.Rectangle;

    /** A single line editable textField that scrolls left/right after a max width.
     * 
     * Use `updateScrollRectHeight()` when changing any property that could change the textField's height. Use `setMaxViewWidth()` to change the max width.
     * `setMaxViewWidth()` must be used at least once after the first time the text is set.
     * `setMaxViewWidth()` calls `updateScrollRectHeight()`.
     */
    public class APLineEdit extends flash.text.TextField
    {
        public var scrollDeltaMultiplier:uint = 2;
        private var oldCaretIndex:int = 0;
        private var oldTextLength:uint = 0;
        private var rightEdgeBorderPadding:int = 12;
        //private var maxViewWidth:uint;

        public function APLineEdit(borderPaddingPx:int = 12)
        {
            super();
            rightEdgeBorderPadding = borderPaddingPx;
            this.type = TextFieldType.INPUT;
            this.addEventListener(MouseEvent.MOUSE_WHEEL, onMouseWheelScroll);
            // POSSIBLE IMPROVEMENT: add a KEY_DOWN listener that, if the caret is already at the leftmost/rightmost position and the left/right arrow key is pressed,
            // will call `scrollToStart()`/`scrollToEnd()`.
            //this.addEventListener(KeyboardEvent.KEY_DOWN, );

            // we need to detect text input and caret position changes (there are no caret events unfortunately) after the textfield has been changed.
            this.addEventListener(Event.EXIT_FRAME, onCaretPositionPoll);
        }
        
        // NOTE FOR SCROLLING: you can't directly assign the properties of scrollRect. scrollRect always needs to be directly set to a `Rectangle` object.

        public function onCaretPositionPoll(e:Event):void
        {
            if (scrollRect == null || (caretIndex == oldCaretIndex && text.length == oldTextLength))
            {
                return;
            }
            if (text.length == 0)
            {
                oldTextLength = text.length;
                scrollRect = scrollToStart();
                return;
            }

            var charRect:Rectangle = null;
            var farX:Number = null;

            if (caretIndex <= text.length - 1)
            {
                charRect = getCharBoundaries(caretIndex);
                farX = charRect.x + charRect.width;
            }

            if (!(caretIndex == 0 || caretIndex == text.length)) // if the caret is not at the very start or very end of the text.
            {
                var newRect:Rectangle = scrollRect;
                if (farX > newRect.x + newRect.width)
                {
                    newRect.x += farX - (newRect.x + newRect.width);
                }
                if (charRect.x < newRect.x)
                {
                    newRect.x = charRect.x;
                }
                scrollRect = newRect;
            }
            else
            {
                if (caretIndex == 0)
                {
                    scrollRect = scrollToStart();
                }
                else
                {
                    scrollRect = scrollToEnd();
                }
            }
            oldTextLength = text.length;
            oldCaretIndex = caretIndex;
        }

        public function onMouseWheelScroll(e:MouseEvent):void
        {
            if (scrollRect == null)
            {
                return;
            }
            var newRect:Rectangle = scrollRect;
            var scrollPx:int = e.delta * scrollDeltaMultiplier;
            newRect.x += scrollPx;
            scrollRect = newRect;

            if (checkCanNotScrollRight(newRect))
            {
                scrollRect = scrollToEnd();
            }
            if (checkCanNotScrollLeft(newRect))
            {
                scrollRect = scrollToStart();
            }
        }

        public function checkCanNotScrollRight(newRect:Rectangle):Boolean
        {
            return getLineWidth() - newRect.x <= newRect.width;
        }

        public function checkCanNotScrollLeft(newRect:Rectangle):Boolean
        {
            return newRect.x < 0;
        }

        public function scrollToEnd():Rectangle
        {
            if (getLineWidth() < scrollRect.width)
            {
                return scrollToStart();
            }
            var newRect:Rectangle = scrollRect;
            newRect.x = getLineWidth() - newRect.width;
            return newRect;
            //scrollRect = newRect;
        }

        public function scrollToStart():Rectangle
        {
            var newRect:Rectangle = scrollRect;
            newRect.x = 0;
            return newRect;
            //scrollRect = newRect;
        }

        public function getLineWidth():int
        {
            return getLineMetrics(0).width + rightEdgeBorderPadding;
        }

        public function updateScrollRectHeight():void
        {
            var maxHeight:Number = this.height;
            if (border)
            {
                maxHeight += 1;
            }
            var newRect:Rectangle = scrollRect;
            newRect.height = maxHeight;
            scrollRect = newRect;
        }

        public function setMaxViewWidth(maxViewWidth_:uint):void
        {
            //maxViewWidth = maxViewWidth_;
            if (scrollRect == null)
            {
                scrollRect = new Rectangle(0, 0, 0, 0);
            }
            var newRect:Rectangle = scrollRect;
            newRect.width = maxViewWidth_;
            scrollRect = newRect;
            updateScrollRectHeight();
        }

        public function getMaxViewWidth():uint
        {
            return scrollRect.width;
        }
    }
}