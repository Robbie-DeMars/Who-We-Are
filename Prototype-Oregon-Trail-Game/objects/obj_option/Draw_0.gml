/// @description Insert description here
// You can write your code in this editor
//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//Textbox
draw_self();


//Text
var _text_written = string_copy(text, 1, index);
if (index <= string_length(text))
	index++;
draw_set_color(c_black);
draw_text_ext(x, y, _text_written, 25, 700);