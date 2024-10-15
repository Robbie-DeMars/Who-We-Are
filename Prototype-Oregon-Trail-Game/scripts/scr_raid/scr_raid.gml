// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_raid(_pop_count){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	//Do for every pop
	for (raid2 = 0; raid2 < _pop_count; raid2++) {
		state.aggression++;
		state.autonomy++;
		raid_roll = random_range(1, 20);
		if (raid_roll <= 2) {
			for (raid = array_length(state.pop) - 1; raid >= 0; raid--) {
				if (state.pop[raid].job == 4) {
					scr_remove_pop(state.pop[raid])
				}
			}
		}
		else {
			state.food += random_range(2, 12) * 2;
		}
	}
}