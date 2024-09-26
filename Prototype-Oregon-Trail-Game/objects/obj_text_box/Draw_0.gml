/// @description Insert description here
// You can write your code in this editor

//Font
draw_set_font(fnt_bitmgothic);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Textbox
draw_sprite(spr_textbox, 0, x, y);

//Text
draw_text_ext(x + 15, y + 10, text, 20, box_width - 15);