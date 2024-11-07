/// @description Insert description here
// You can write your code in this editor

//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//Textbox
draw_self();

//Text


//draw_set_color(c_gray)
//draw_text_ext(x + 39, y + 28, text, 20, box_width - 15);
draw_set_color(make_color_rgb(112, 108, 46));
draw_text_ext(x + 39, y + 28, text, 20, box_width - 15);
draw_text_ext(x + 39, y + 29, text, 20, box_width - 15);
draw_set_color(make_color_rgb(172, 168, 46));
draw_text_ext(x + 41, y + 32, text, 20, box_width - 15);
draw_text_ext(x + 41, y + 31, text, 20, box_width - 15);
draw_set_color(make_color_rgb(138, 132, 45));
draw_text_ext(x + 40, y + 30, text, 20, box_width - 15);
gpu_set_blendmode(bm_normal)

/*draw_set_color(make_color_rgb(112, 108, 46));
draw_text_ext(x + 39, y + 28, text, 20, box_width - 15);
draw_text_ext(x + 39, y + 29, text, 20, box_width - 15);
draw_set_color(make_color_rgb(172, 168, 46));
draw_text_ext(x + 41, y + 32, text, 20, box_width - 15);
draw_text_ext(x + 41, y + 31, text, 20, box_width - 15);
draw_set_color(make_color_rgb(138, 132, 45));
draw_text_ext(x + 40, y + 30, text, 20, box_width - 15);
