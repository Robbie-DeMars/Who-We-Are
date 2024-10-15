// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pop_upkeep(){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	pop_count = array_length(state.pop);
	starved_pops = [];
	starving = 0;
	
	for (pop_upkeep = array_length(state.pop) - 1; pop_upkeep >= 0; pop_upkeep--) {
		if (state.food < 6) {
			if (state.pop[pop_upkeep].sated) {
				state.pop[pop_upkeep].sated = false;
			}
			else {
				starved_pops[starving] = state.pop[pop_upkeep];
				starving++;
			}
		}
		else {
			state.food -= 6;
			if (!state.pop[pop_upkeep].sated)
				state.pop[pop_upkeep].sated = true;
		}
	}
	for (pop_upkeep = starving - 1; pop_upkeep >= 0; pop_upkeep--) {
		scr_remove_pop(starved_pops[pop_upkeep]);
	}
}