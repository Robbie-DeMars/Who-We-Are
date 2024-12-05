/// @description Insert description here
// You can write your code in this editor

draw_self();
//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//Textbox

draw_set_color(c_white);
draw_text_ext(x + box_width/2, y+10, "Modifiers:\n", 20, box_width - 15);

draw_set_color(c_black);
draw_set_halign(fa_left)
draw_set_valign(fa_top)
var _text_to_draw = ""
for(var i = 0; i < array_length(text_list); i++)
{
	_text_to_draw += "*" + text_list[i] + "\n\n"
}
draw_text_ext(x+30, y + 40, _text_to_draw, 30, box_width -50);