package archipelago
{
    import flash.display.Sprite;
    import flash.text.TextField;
    import flash.text.TextFormat;
    import flash.events.MouseEvent;
    import flash.text.TextFieldType;
    import flash.text.TextFieldAutoSize;
    import flash.events.*;

    public class APConnectUI extends flash.display.Sprite implements IOnConnectHandler, IOnNotConnectedHandler
    {
        public static var CONNECT_TEXT:String = "Connect";
        public static var TRYING_TO_CONNECT_TEXT:String = "Trying to connect...";
        public static var DISCONNECT_TEXT:String = "Disconnect";
        public var linkedApSocket:APSocket;
        private var titleText:TextField;
        private var addressField:APLineEdit;
        private var addressFieldLabel:TextField;
        private var connectionButton:APTextButton; // contextually "Connect"/"Disconnect"/'waiting to connect'
        
        // POSSIBLE(?) TODO: make sure the event listeners that this UI creates (including ones created by other classes that this UI uses) get destroyed if a teardown()
        // function gets added for this. This UI will probably be off most of the time and we'd probably prefer to not have this as just a constant memory sink.
        public function APConnectUI(apSocket:APSocket)
        {
            super();
            //addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
            linkedApSocket = apSocket;
            linkedApSocket.onConnectedCallbackHandlers.push(this);
            linkedApSocket.onNotConnectedCallbackHandlers.push(this);
            var textFormat:TextFormat = new TextFormat();
            textFormat.font = "Verdana";
            textFormat.size = 24;
            textFormat.color = 0xFFFFFF;
            titleText = new TextField();
            titleText.autoSize = TextFieldAutoSize.LEFT;
            titleText.setTextFormat(textFormat);
            titleText.defaultTextFormat = textFormat;
            titleText.selectable = false;
            titleText.appendText("AP Client Connection");

            var width:int = 300; //titleText.textWidth + 6; // +x pixels of padding

            textFormat.size = 16;
            var uiLine2Position:int = titleText.textHeight + 4; // +x pixels of padding

            addressFieldLabel = new TextField();
            addressFieldLabel.autoSize = TextFieldAutoSize.LEFT;
            addressFieldLabel.setTextFormat(textFormat);
            addressFieldLabel.defaultTextFormat = textFormat;
            addressFieldLabel.selectable = false;
            addressFieldLabel.appendText("Address:")
            addressFieldLabel.y = uiLine2Position;
            this.addChild(addressFieldLabel);

            addressField = new APLineEdit();
            addressField.autoSize = TextFieldAutoSize.LEFT;
            addressField.type = TextFieldType.INPUT;
            addressField.setTextFormat(textFormat);
            addressField.defaultTextFormat = textFormat;
            // 4999 is just some random port number that according to wikipedia's list of TCP and UDP port numbers doesn't seem to have much usage.
            addressField.appendText("localhost:4999");
            addressField.x = addressFieldLabel.width + 8; // +x pixels of padding
            addressField.y = uiLine2Position;
            addressField.border = true;
            addressField.borderColor = 0xFFFFFF;
            addressField.setMaxViewWidth(width - addressField.x - 4); // -x pixels of padding
            
            this.addChild(titleText);
            this.addChild(addressField);
            connectionButton = new APTextButton(0, 0, width, -1, CONNECT_TEXT, 16, 4);
            connectionButton.y = this.height + 4; // +x pixels of padding
            connectionButton.btn.addEventListener(MouseEvent.CLICK, onConnectionButtonPressed);
            this.addChild(connectionButton);

            this.graphics.beginFill(0x000000, 0.7);
            this.graphics.drawRect(0, 0, width, this.height);
            this.graphics.endFill();
            this.x = 0;
            this.y = 310;
        }

        public function onConnectionButtonPressed(e:MouseEvent):void
        {
            // Eventually this UI needs a 'status' textfield so that we aren't just printing these messages to the debug log.
            // I'll add that soon.
            if (!linkedApSocket.connected)
            {
                Main.debugLogAP.print("trying to connect.");
                var splitString:Array = addressField.text.split(":");
                if (splitString.length != 2 || (splitString.length == 2 && (splitString[0] == "" || splitString[1] == "")))
                {
                    Main.debugLogAP.print("Enter an address in the format of `address:port`.");
                    return;
                }
                var host:String = splitString[0];
                var port:int = parseInt(splitString[1]);
                Main.debugLogAP.print("host: " + host + " | port: " + port.toString())
                if (port < 1 || port > 65535)
                {
                    Main.debugLogAP.print("Invalid port! Must be a positive integer between 1 and 65535.")
                    return;
                }
                if (port < 1024)
                {
                    Main.debugLogAP.print("Warning: flash player doesn't like using port numbers below 1024. This port might not work.");
                }
                // only do this if the user actually entered a (probably) valid address.
                connectionButton.disableClick(); // prevent the user from pressing connect again before the timeout expires.
                connectionButton.setText(TRYING_TO_CONNECT_TEXT);
                Main.apSocket.connect(host, port);
                Main.apSocket.sendUTF8("test message sent by the game to the client. here's some unicode characters: π😀🏴‍☠️—");
            }
            else
            {
                Main.debugLogAP.print("trying to disconnect.");
                linkedApSocket.close();
            }
        }

        public function onConnect():void
        {
            connectionButton.setText(DISCONNECT_TEXT);
            connectionButton.enableClick();
        }

        public function onNotConnected():void
        {
            connectionButton.setText(CONNECT_TEXT);
            connectionButton.enableClick();
        }
    }
}