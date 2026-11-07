/// @description Insert description here
// You can write your code in this editor
var _x_pos;
var _y_pos;
if (keyboard_check_pressed(vk_space) && _text_box == noone) 
{
	_x_pos = room_width / 2 - sprite_get_width(spr_textbox) / 2;
	_y_pos = room_height - sprite_get_height(spr_textbox);
	_text_box = instance_create_layer(_x_pos, _y_pos, "Text", obj_text_box);
	_text_box.text = "Hello World! :) ";
}
else if (keyboard_check_pressed(vk_space) && _text_box != noone){
 instance_destroy(_text_box);
 _text_box = noone;
}

//get_event();