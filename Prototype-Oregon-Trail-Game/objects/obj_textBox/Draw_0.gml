/// @description Insert description here
// You can write your code in this editor

text = "hello world";

//Font
draw_set_font(font_bitmgothic);

//Textbox
draw_sprite(spr_textbox, 0, x, y);

//Text
draw_text(x + 15, y + 10, text);
