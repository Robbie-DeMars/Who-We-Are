/// @description Insert description here
// You can write your code in this editor

//Font
draw_set_font(fnt_bitmgothic);

//Textbox
draw_sprite(spr_textbox, 0, x_pos, y_pos);

//Text
draw_text_ext(x_pos + 15, y_pos + 10, text, 20, box_width - 15);