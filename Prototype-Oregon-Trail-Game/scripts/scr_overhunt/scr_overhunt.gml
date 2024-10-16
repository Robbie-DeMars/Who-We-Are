// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_overhunt(_pop_count){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	//Do for every pop - add modifier to dice roll before multiplication
	for (ohunt = 0; ohunt < _pop_count; ohunt++) {
		scr_increment_food((round(random_range(2, 12)) + state.overhunt_mod) * state.animal_pop);
	}
}