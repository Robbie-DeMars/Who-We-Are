// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_increment_pop(_amount_changed){
	outcomes = instance_nearest(0, 0, obj_outcomes);
	outcomes.animal_pop_change += _amount_changed;
	state = instance_nearest(0, 0, obj_tribe_state);
	state.animal_pop += _amount_changed;
	if (state.animal_pop > 3)
		state.animal_pop = 3;
	else if (state.animal_pop < 0)
		state.animal_pop = 0;
}