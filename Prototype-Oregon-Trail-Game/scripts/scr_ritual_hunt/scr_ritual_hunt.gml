// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ritual_hunt(_pop_count){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	//Do for every pop
	for (rhunt = 0; rhunt < _pop_count; rhunt++) {
		scr_increment_food(round(random_range(1, 6)) * state.animal_pop);
		scr_increment_culture(1);
	}
}