/// @Draws the text of the button
// You can write your code in this editor


//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
//Sprite
manager = instance_nearest(0, 0, obj_game_manager);
if (manager.progress_allowed && !pressed)
	sprite_index = spr_button_good;
else if (!manager.progress_allowed)
	sprite_index = spr_button_bad;
else
	sprite_index = spr_button_good_down;
draw_self();

//Text
//draw_text_ext(x + box_width/2, y + box_height/2, text, 20, box_width - 15);
 
