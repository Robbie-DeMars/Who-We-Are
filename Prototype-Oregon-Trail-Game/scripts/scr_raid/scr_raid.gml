// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_raid(_pop_count){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	//Do for every pop
	for (raid2 = 0; raid2 < _pop_count; raid2++) {
		scr_increment_aggression(1);
		scr_increment_autonomy(1);
		raid_roll = round(random_range(1, 20));
		if (raid_roll <= 2) {
			for (raid = array_length(state.pop) - 1; raid >= 0; raid--) {
				if (state.pop[raid].current_job == 4) {
					scr_remove_pop(state.pop[raid]);
					break;
				}
			}
		}
		else {
			scr_increment_food(round(random_range(2, 12)) * 2);
		}
	}
}