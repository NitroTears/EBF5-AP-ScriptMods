package archipelago
{
    public interface IOnNotConnectedHandler 
    {
        /** includes disconnects and stuff like socket.connect() timeouts. */
        function onNotConnected():void;
    }
}