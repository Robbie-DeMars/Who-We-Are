/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black)
draw_self();
draw_text_ext(x + box_width/2, y + box_height/2, button_text, 20, box_width - 15);
