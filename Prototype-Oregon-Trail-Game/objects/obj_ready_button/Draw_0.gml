/// @Draws the text of the button
// You can write your code in this editor


//Font
draw_set_font(fnt_bitmgothic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//Sprite
manager = instance_nearest(0, 0, obj_game_manager);
if (manager.progress_allowed)
	draw_sprite(spr_button, -1, x, y);
else
	draw_sprite(spr_button_disabled, -1, x, y);

//Text
draw_text_ext(x + box_width/2, y + box_height/2, text, 20, box_width - 15);
 
