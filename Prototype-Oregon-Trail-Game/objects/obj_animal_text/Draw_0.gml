/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_self();

var _text_written = string_copy(text, 1, index);
if (index <= string_length(text))
	index++;

//Text
draw_text_ext(x, y, _text_written, 25, 800);