# Message Formats
Using JSON as the structure for the messages between the game and AP client.
Each JSON message will have a "type" field which will be used to determine how the message should be handled, and extra fields if needed for that specific message type.
Example message:
```json
{
   "type": "received_items_add",
   "items": [
      {
         "sid": "coffee",
         "count": 5
      }
   ]
}
```

## AP Client to Game Messages

### received_items_reset
Sent by the server to the game to reset the list of received items.
TODO: May need to be expanded to a general reset message for seed data in general.
```json
{
   "type": "received_items_reset"
}
```

### received_items_add
Sent by the server to the game to add one or more items to the list of received items in the game.
Currently supports SIDs for items, equips, spells, summons, and cards.
Count is optional for non-item types and defaults to 1 if not provided.
```json
{
   "type": "received_items_add",
   "items": [
      {
         "sid": "coffee",
         "count": 5
      },
      {
         "sid": "emeraldsmasher"
      },
      {
         "sid": "protect"
      },
      {
         "sid": "BossDevourer"
      }
   ]
}
```

### seed_data
Sent by the server to the game to send the initial seed data for the game.
Currently includes the starting player and starting equipment for each player.
```json
{
   "type": "seed_data",
   "start_player": "natalie",
   "start_equips": {
      "matt": ["poisonfang", "wizardrobe", "knightshelmet"],
      "natalie": ["arctictrident", "rangerskirt", "darkbobble"],
      ...
   }
}
```

### chest_data
Sent by the server to the game to send chest replacement data by chest id as defined in the AP World Locations.py.<br>
For local items, use the `sid` and `count` fields to specify the item.<br>
For remote items, use the `name` and `player` fields to specify the item by the player and item name.<br>
```json
{
   "type": "chest_data",
   "chest_replacements": {
      "152-0-0": {
         "sid": "coffee",
         "count": 5
      },
      "26-1-1": {
         "name": "Double Jump",
         "player": "Mario"
      },
      ...
   }
}
```

Sends a validation message of type "received_item_count_update" with the new count of all received items in game memory if successful.

### client_to_game_debug_message
Sent by the client to the game to print a string to the game's `APDebugLogger`.

```json
{
   "type": "client_to_game_debug_message",
   "text": "Message sent from the EBF5AP client to the in game EBF5AP APDebugLogger."
}
```

## Game to AP Client Messages

### received_item_count_update
Sent by the game to the server whenever the count of received items changes.
Used for the server to validate that items were successfully received in the game and to keep an accurate count of how many of each item the player has.
```json
{
   "type": "received_item_count_update",
   "count": 5,
}
```

### collected_items
Sent by the game to the server whenever the player collects items to let the AP client know which locations have been checked.
```json
{
   "type": "collected_items",
   "items": [
      "152-0-0",
      "26-1-1",
      ...
   ]
}
```

# Raw non-JSON UTF-8 message(s)
For messages that, for whatever reason, `APSocket` itself should or needs to handle instead of `ItemHandler`, raw non-JSON UTF-8 is used.
Ideally the use of this type of message should be minimized.

### client_disconnect_soon
```
client_disconnect_soon
```

Sent by the client to the game when the client wants to disconnect the socket soon. The game should stop sending new messages after this message is received.
The client will finish sending any messages currently in its buffers and will try to wait for a break between received messages where it can safely close the socket (I.E., if the end of one message and the start of the next message are in the same TCP packet, the client will *continue* reading, until it encounters a TCP packet that ends the previous message and that doesn't start a new one).
If the client's socket read/write buffers still aren't empty after waiting a timeout, the client will close the socket anyway, discarding the contents of its socket read/write buffers.