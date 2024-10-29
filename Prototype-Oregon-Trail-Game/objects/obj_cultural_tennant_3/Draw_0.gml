/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
//Textbox
draw_self();


if ((keyboard_check(vk_enter) && practices_storage.definition_stage == 3) && string_length(keyboard_string) > 0) {
	practices_storage.practice_3 = text;
	keyboard_string = "";
	room_goto(rm_main_game);
}

if ((keyboard_check(vk_anykey) && string_length(text) < 50)  && practices_storage.definition_stage == 3) {
	text = keyboard_string;
}


//Text
draw_text_ext(x + 15, y, text, 20, box_width - 15);