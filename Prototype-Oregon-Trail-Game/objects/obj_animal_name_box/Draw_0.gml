/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
//Textbox
draw_self();


if (keyboard_check(vk_enter)) 
{
	var _name_storage = instance_nearest(0, 0, obj_animal_name);
	_name_storage.text = text;
	room_goto(rm_define_culture);
}

if (keyboard_check(vk_anykey) && string_length(text) < 20)
{
	text = keyboard_string;
}


//Text
draw_text_ext(x, y, text, 25, 700);