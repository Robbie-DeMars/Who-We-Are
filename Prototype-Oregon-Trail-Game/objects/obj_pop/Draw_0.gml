/// @description Insert description here
// You can write your code in this editor
manager = instance_nearest(0, 0, obj_game_manager);
if (dragging && sated) {
	current_frame++;
	if (current_frame < 60 * 2) {
		sprite_index = spr_pop_sated_pick;
		image_speed = 2;
	}
	else
		image_speed = 0;
}
else if (sated) {
	sprite_index = spr_pop_sated_down;
	current_frame = 0;
}
else if (dragging && !sated ){
	current_frame++;
	if (current_frame < 60 * 2) {
		sprite_index = spr_pop_unsated_pick;
		image_speed = 2;
	}
	else
		image_speed = 0;
}
else {
	sprite_index = spr_pop_unsated_down;
	current_frame = 0;
}
draw_self();
