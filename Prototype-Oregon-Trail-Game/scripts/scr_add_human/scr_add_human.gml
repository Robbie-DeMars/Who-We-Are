// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_human()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	array_push(state.pop, instance_create_layer(state.x, state.y, "Pop_Tokens", obj_pop));
}