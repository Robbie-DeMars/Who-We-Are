/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space) && _text_box == noone) {
	_text_box = instance_create_layer(mouse_x, mouse_y, "Text", obj_text_box);
	_text_box.text = "Hello World! :) ";
}
else if (keyboard_check_pressed(vk_space) && _text_box != noone){
 instance_destroy(_text_box);
 _text_box = noone;
}

get_event();