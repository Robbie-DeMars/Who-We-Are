// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_human()
{
	outcomes = instance_nearest(0, 0, obj_outcomes);
	outcomes.human_pop_change += 1;
	state = instance_nearest(0, 0, obj_tribe_state);
	array_push(state.pop, instance_create_layer(state.x, state.y, "Pop_Tokens", obj_pop));
}

function scr_kill_human()
{
	outcomes = instance_nearest(0, 0, obj_outcomes);
	outcomes.human_pop_change -= 1
	state = instance_nearest(0, 0, obj_tribe_state);
	scr_remove_pop(array_first(state.pop))
}