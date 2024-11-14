/// @description Insert description here
// You can write your code in this editor

messages = 
[
"Welcome to start of the game, lets begin by gettting you familiar with the resources you need to manage. Press enter to continue.",
"Sample text"
]
popup = instance_create_layer(x, y, "Text", obj_text_box)
index = 0;
popup.text = messages[index];
active = false;
stage = 0
manager = instance_nearest(0, 0, obj_game_manager);
