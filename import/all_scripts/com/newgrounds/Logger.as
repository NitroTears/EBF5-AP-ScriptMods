package com.newgrounds
{
   import flash.events.EventDispatcher;
   
   public class Logger
   {
      internal static const PRIORITY_INTERNAL:uint = 0;
      
      public static const PRIORITY_MESSAGE:uint = 1;
      
      public static const PRIORITY_WARNING:uint = 2;
      
      public static const PRIORITY_ERROR:uint = 3;
      
      public static const PRIORITY_MAX:uint = 4;
      
      private static const HEADER:String = "[Newgrounds API] :: ";
      
      private static var _eventDispatcher:EventDispatcher = new EventDispatcher();
      
      private static var _messageLevel:uint = PRIORITY_MESSAGE;
      
      private static var _throwLevel:uint = PRIORITY_MAX;
      
      public function Logger()
      {
         super();
      }
      
      internal static function logInternal(... rest) : void
      {
         log(PRIORITY_INTERNAL,rest);
      }
      
      public static function logMessage(... rest) : void
      {
         log(PRIORITY_MESSAGE,rest);
      }
      
      public static function logWarning(... rest) : void
      {
         log(PRIORITY_WARNING,rest);
      }
      
      public static function logError(... rest) : void
      {
         log(PRIORITY_ERROR,rest);
      }
      
      private static function log(param1:uint = 1, param2:Array = null) : void
      {
         var _loc3_:uint = 0;
         if(param1 >= _messageLevel)
         {
            _loc3_ = 0;
            while(_loc3_ < param2.length)
            {
               trace(HEADER + param2[_loc3_]);
               _eventDispatcher.dispatchEvent(new APIEvent(APIEvent.LOG,param2[_loc3_]));
               _loc3_++;
            }
         }
         if(param1 >= _throwLevel)
         {
            throw new Error(param2.join("\n"));
         }
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         _eventDispatcher.addEventListener(param1,param2,false,0,false);
      }
   }
}

