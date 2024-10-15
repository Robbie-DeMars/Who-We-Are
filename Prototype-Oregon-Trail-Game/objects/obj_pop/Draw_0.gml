/// @description Insert description here
// You can write your code in this editor
manager = instance_nearest(0, 0, obj_game_manager);
if (sated)
	draw_sprite(spr_pop, -1, x, y);
else
	draw_sprite(spr_pop_unsated, -1, x, y);