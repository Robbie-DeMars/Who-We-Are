/// @description Insert description here
// You can write your code in this editor
manager = instance_nearest(0, 0, obj_tribe_state);
	
//Font
draw_set_font(fnt_bitmgothic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Text
draw_text_ext(x + box_height / 2, y + box_height / 2, text, box_height, box_width);