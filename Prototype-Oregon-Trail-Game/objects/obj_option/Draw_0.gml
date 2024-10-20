/// @description Insert description here
// You can write your code in this editor
//Font
draw_set_font(fnt_bitmgothic);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Textbox
draw_sprite(spr_option, 0, x, y);

var _text_written = string_copy(text, 1, index);
if (index <= string_length(text))
	index++;

//Text
draw_text_ext(x + 15, y, _text_written, 20, box_width - 15);