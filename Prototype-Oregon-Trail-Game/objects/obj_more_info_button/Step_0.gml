/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter)) {
	instance_destroy(button);
	button = noone;
	instance_destroy(text_box);
	text_box = noone;
}