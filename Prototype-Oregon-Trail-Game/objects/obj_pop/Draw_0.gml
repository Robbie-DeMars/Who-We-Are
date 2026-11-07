/// @description Insert description here
// You can write your code in this editor
manager = instance_nearest(0, 0, obj_game_manager);
if (dragging && sated) {
	current_frame++;
	if (current_frame < 60 * 2) {
		sprite_index = spr_pop_sated_pick;
		image_speed = 2;
		if (layer != layer_get_id("Pop_Lifted"))
			layer = layer_get_id("Pop_Lifted");
	}
	else
		image_speed = 0;
}
else if (sated) {
	sprite_index = spr_pop_sated_down;
	if (layer != layer_get_id("Pop_Tokens"))
		layer = layer_get_id("Pop_Tokens");
	current_frame = 0;
}
else if (dragging && !sated ){
	current_frame++;
	if (current_frame < 60 * 2) {
		sprite_index = spr_pop_unsated_pick;
		if (layer != layer_get_id("Pop_Lifted"))
			layer = layer_get_id("Pop_Lifted");
		image_speed = 2;
	}
	else
		image_speed = 0;
}
else {
	sprite_index = spr_pop_unsated_down;
	if (layer != layer_get_id("Pop_Tokens"))
		layer = layer_get_id("Pop_Tokens");
	current_frame = 0;
}
draw_self();
