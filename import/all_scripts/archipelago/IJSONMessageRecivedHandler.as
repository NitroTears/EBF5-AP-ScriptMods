package archipelago
{
   public interface IJSONMessageRecivedHandler
   {
      function onJSONMessageReceived(jsonData:Object):void;

      /**
       * Passes in the "type" field of the received JSON message to determine if this handler should process it.
       * Return true if the handler should process messages of this type, false to ignore them.
       */
      function supportsJSONType(jsonType:String):Boolean;
   }
}