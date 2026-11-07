/// @description Insert description here
// You can write your code in this editor
if (button == noone) {
	button = instance_create_layer(room_width - 512, room_height - 64, "Info", obj_link_button);
	button.link = link;
}
if (text_box == noone) {
	text_box = instance_create_layer(room_width / 2, room_height / 2, "Info", obj_ext_info_box);
	text_box.text = text;
	text_box.card = card;
}