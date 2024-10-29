/// @description Insert description here
// You can write your code in this editor
//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_self();

//Text
draw_text_ext(x + box_width/2, y + box_height/2, text, 20, box_width - 15);
