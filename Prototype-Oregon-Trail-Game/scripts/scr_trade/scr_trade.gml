// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trade(_pop_count){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	//Do for every pop
	for (trade = 0; trade < _pop_count; trade++) {
		state.food += round(random_range(2, 12)) - state.aggression;
	}
}