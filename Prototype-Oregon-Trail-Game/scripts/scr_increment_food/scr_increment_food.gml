// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_increment_food(_amount_changed){
	state = instance_nearest(0, 0, obj_tribe_state);
	outcomes = instance_nearest(0, 0, obj_outcomes);
	state.food += _amount_changed;
	outcomes.food_change += _amount_changed;
}