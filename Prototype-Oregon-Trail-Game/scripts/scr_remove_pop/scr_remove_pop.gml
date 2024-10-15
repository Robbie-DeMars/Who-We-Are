// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_remove_pop(_ref_to_pop){
	state = instance_nearest(0, 0, obj_tribe_state);
	new_array = [];
	pop_found = false;
	
	//Find pop location in array
	for (rem_pop = 0; rem_pop < array_length(state.pop); rem_pop++) {
		
		if (pop_found) {
			new_array[rem_pop - 1] = state.pop[rem_pop];
		}
		else if (state.pop[rem_pop] != _ref_to_pop) {
			new_array[i] = state.pop[i];
		}
		else if (state.pop[rem_pop] == _ref_to_pop) {
			show_debug_message("Found bad pop");
			pop_found = true;
		}
	}
	
	state.pop = new_array;
	instance_destroy(_ref_to_pop);
}