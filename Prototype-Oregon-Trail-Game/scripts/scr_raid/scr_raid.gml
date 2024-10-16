// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_raid(_pop_count){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	//Do for every pop
	for (raid2 = 0; raid2 < _pop_count; raid2++) {
		//Modify agression and autonomy by modifier
		scr_increment_aggression(1 + state.raid_aggression_mod);
		scr_increment_autonomy(1 + state.raid_autonomy_mod);
		//Modify the roll by the avoidance modifier
		raid_roll = round(random_range(1, 20) + state.raid_casualty_avoidance_chance_mod);
		if (raid_roll <= 2) {
			for (raid = array_length(state.pop) - 1; raid >= 0; raid--) {
				if (state.pop[raid].current_job == 4) {
					scr_remove_pop(state.pop[raid]);
					break;
				}
			}
		}
		else {
			//modify food roll by food modifier.
			scr_increment_food(round(random_range(2, 12) + state.raid_food_mod) * 2);
		}
	}
}