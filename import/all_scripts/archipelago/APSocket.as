package archipelago
{
   import flash.net.Socket;
   import flash.errors.*;
   import flash.events.*;
   import archipelago.APDebugLogger;
   import flash.utils.ByteArray;

   public class APSocket extends Socket implements IUTF8MessageRecivedHandler
   {
      /**
       * Called when a TCP message from Archipelago is received.
       * There are 2 separate handlers for UTF-8 and JSON messages.
       * The JSON handler should be used for data messages.
       */
      public var onUTF8MessageReceivedCallbackHandlers:Array = [];
      public var onJSONMessageReceivedCallbackHandlers:Array = [];
      // It feels overkill to add interfaces for these two... I guess I will because we have them for everything else too but it feels kinda silly at this point.
      public var onConnectedCallbackHandlers:Array = [];
      public var onNotConnectedCallbackHandlers:Array = [];

      public var isWaitingForNewMessage:Boolean = true;
      public var currentMessageFinalLength:uint = 0;
      public var currentReceivedMessageFragments:ByteArray = new ByteArray();

      // Due to the nature of how we're sending messages in theory we could get away with just forcefully disconnecting the socket every time,
      // but due to async structuring stuff on the client's side we have to schedule closing the socket anyway, so might as well be clean too.
      /**
       * Becomes true when a `client_disconnect_soon` TCP message is received.
       * The game should stop sending new messages once this flag becomes true, so that the client can cleanly disconnect between messages.
       * The client will uncleanly close the socket anyway if its timeout runs out while waiting for its buffers to empty.
       */
      public var receivedDisconnectSoonNotice:Boolean = false;

      public function APSocket()
      {
         super();
         onUTF8MessageReceivedCallbackHandlers.push(this);
         addEventListener(Event.CLOSE, closeHandler); // This event does not fire when the game closes the socket! Only when the AP client closes it!
         addEventListener(Event.CONNECT, connectHandler);
         //addEventListener(IOErrorEvent.IO_ERROR, );
         addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
         addEventListener(ProgressEvent.SOCKET_DATA, handleSocketData);
         this.timeout = 5 * 1000; // 5 seconds, which feels a lot more reasonable/feels a lot less like the mod is just broken.
      }

      public function onUTF8MessageReceived(receivedText:String):void
      {
         if (receivedText == "client_disconnect_soon")
         {
            receivedDisconnectSoonNotice = true;
            Main.debugLogAP.print("received a client_disconnect_soon.")
         }
         // Main.debugLogAP.print("received text: \"" + receivedText + "\"");
      }

      private function onSocketClosed():void
      {
         Main.debugLogAP.print("socket disconnected.");
         receivedDisconnectSoonNotice = false;
         // in case we disconnected mid message
         isWaitingForNewMessage = true;
         currentReceivedMessageFragments = new ByteArray();
         currentMessageFinalLength = 0;
         
         for each (var disconnectCallbackHandler:IOnNotConnectedHandler in onNotConnectedCallbackHandlers)
         {
            disconnectCallbackHandler.onNotConnected();
         }
      }

      private function closeHandler(event:Event):void
      {
         onSocketClosed()
      }

      private function connectHandler(event:Event):void
      {
         Main.debugLogAP.print("socket connected!");
         receivedDisconnectSoonNotice = false;
         for each (var connectCallbackHandler:IOnConnectHandler in onConnectedCallbackHandlers)
         {
            connectCallbackHandler.onConnect();
         }
      }

      /** Small wrapper around `flash.net.Socket.close()`. Calls callbacks after closing the socket. */
      public override function close():void
      {
         super.close()
         onSocketClosed()
      }

      // in order to be allowed to use sockets in local flash player the SWF's file path must be trusted in the global settings, so yeah we'll want to tell the user
      // how to possibly work around this error if they encounter it. (in AIR it's way less restrictive and seems to just work).
      // though honestly this is probably more helpful for us so that we get in game error message popups with debug flash player while actually being allowed to use sockets.
      // https://airsdk.dev/reference/actionscript/3.0/flash/net/Socket.html
      // also the timeout takes a fair bit to expire which can be a bit annoying while trying to test this in game.
      private function securityErrorHandler(event:SecurityErrorEvent):void
      {
         Main.debugLogAP.print("Can't connect to Archipelago client. Flash Player refused to allow us to connect and threw a security error.");
         // ideally this will be handled elsewhere before release. this isn't a super graceful place to handle the client being offline.
         Main.debugLogAP.print("This error can happen if the cleint is offline. Make sure the client is listening and check the address doesn't have a typo.");
         
         Main.debugLogAP.print("Otherwise, here's how to fix it:");
         // I was hoping but unfortunately I don't think we can patch this one with JPEXS.
         Main.debugLogAP.print("If you're running EBF5 locally via Flash Player, go into Global Settings > Advanced and add this SWF file as a trusted location.");

         Main.debugLogAP.print("If you're running EBF5 via Ruffle, then allow it to connect next time when you get the pop up from Ruffle.");
         Main.debugLogAP.print("If you're running EBF5 via Steam with Epic Battle Fantasy 5.exe, then this is a bug on the mod's end.");
         // this would probably be easy to implement but testing it would probably be a lot of set up work and this is an extremely unlikely case because this is the
         // paid version of the game.
         // also just allowing it access to any localhost port could legitimately be a security issue if the swf was served from a website
         // and currently idk what port we'll use for game to client communication.
         Main.debugLogAP.print("If you're running EBF5 in a browser, then unfortunately playing the mod this way is unimplemented. You'll have to run it in one of the ways listed above.");
         Main.debugLogAP.print("Error message: " + event.text);
         for each (var disconnectCallbackHandler:IOnNotConnectedHandler in onNotConnectedCallbackHandlers)
         {
            disconnectCallbackHandler.onNotConnected();
         }

         // from the doc, another cause could be port number being lower than 1024 or higher than 65535
      }

      public function sendUTF8(text:String):void
      {
         // we need to get the length in bytes, because unicode.
         // also because archipelago uses websockets which can transfer a ton of data per websocket frame, 2 bytes feels too small (65k = 0.65 MB)
         // and while a 3 byte length would be good (up to ~16.7 MB frames) there's no easy datatype for it, so we're using 4 byte lengths.
         // part of me says that using a 4 byte length is gonna be super overkill because we're going over TCP, but the game and client are almost certainly gonna be
         // connected via localhost on the same machine, so massive packets are probably actually faster in this context.

         // after looking into it, it looks like the python commonclient (no specific reason for that example, it just has an easy to see max packet length) throws errors
         // about incoming packet size at 16 MB (probably 16 MB compressed but still), so a max of ~4 gigs (= 2^32-1 bytes) uncompressed on our end will be fine.

         // 4 byte length, and then raw UTF-8.
         var byteArr:ByteArray = new ByteArray();
         byteArr.writeUTFBytes(text);
         var length:uint = byteArr.length;
         writeUnsignedInt(length);
         writeUTFBytes(text);
         flush();
      }

      public function sendJSON(data:Object):void
      {
         var jsonString:String = JSON.stringify(data);
         sendUTF8(jsonString);
      }

      private function handleSocketData(event:ProgressEvent):void
      {
         while (bytesAvailable > 0)
         {
            // read header
            if (isWaitingForNewMessage)
            {
               if (bytesAvailable < 4) return;

               // prepare to receive payload
               currentMessageFinalLength = readUnsignedInt();
               currentReceivedMessageFragments.clear();
               isWaitingForNewMessage = false;
            }

            // read payload
            var remaining:uint = currentMessageFinalLength - currentReceivedMessageFragments.length;
            var toRead:uint = Math.min(bytesAvailable, remaining);
            readBytes(currentReceivedMessageFragments, currentReceivedMessageFragments.length, toRead);

            // payload completely received
            if (currentReceivedMessageFragments.length == currentMessageFinalLength)
            {
               // read utf-8 string from received bytes
               currentReceivedMessageFragments.position = 0;
               var msg:String = currentReceivedMessageFragments.readUTFBytes(currentReceivedMessageFragments.length);

               // event call
               for each (var handler:IUTF8MessageRecivedHandler in onUTF8MessageReceivedCallbackHandlers)
               {
                  handler.onUTF8MessageReceived(msg);
               }

               // Convert to JSON and call JSON handlers if possible
               processJSONMessage(msg);

               // prepare to receive next message
               isWaitingForNewMessage = true;
               currentMessageFinalLength = 0;
               currentReceivedMessageFragments.clear();
            }
         }
      }

      private function processJSONMessage(jsonText:String):void
      {
         var jsonData:Object = null;
         try
         {
            jsonData = JSON.parse(jsonText);
         }
         catch (e:Error)
         {
            // Ignore non-JSON messages
            return;
         }

         // Main.debugLogAP.print("Received JSON message of type: " + jsonData.type);
         
         for each (var jsonHandler:IJSONMessageRecivedHandler in onJSONMessageReceivedCallbackHandlers)
         {
            var jsonType:String = jsonData.type;
            if (jsonHandler.supportsJSONType(jsonType))
            {
               try
               {
                  jsonHandler.onJSONMessageReceived(jsonData);
               }
               catch (e:Error)
               {
                  Main.debugLogAP.print("Error while handling JSON message type " + jsonType + ": " + e);
               }
            }
         }
      }
   }
}
