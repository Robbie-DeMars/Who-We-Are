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


if ((keyboard_check(vk_enter) && practices_storage.definition_stage == 2) && string_length(keyboard_string) > 0) {
	practices_storage.practice_2 = text;
	practices_storage.definition_stage = 3;
	keyboard_string = "";
	
}

if ((keyboard_check(vk_anykey) && string_length(text) < 50)  && practices_storage.definition_stage == 2) {
	text = keyboard_string;
}

//Glow to indicate in use.
if (practices_storage.definition_stage >= 2) {
	sprite_index = spr_option_wooded;
}
else {
	sprite_index = spr_option_tattered;
}


//Text
draw_text_ext(x, y, text, 25, 700);