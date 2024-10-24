// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_remove_dilemma(_ref_to_dil)
{
	manager = instance_nearest(0, 0, obj_dilemma_manager);
	new_array = [];
	dilemma_found = false;
	
	//Find dilemma location in array
	for (rem_dil = 0; rem_dil < array_length(manager.common_dilemmas); rem_dil++) {
		
		if (dilemma_found) {
			new_array[rem_dil - 1] = manager.common_dilemmas[rem_dil];
		}
		else if (manager.common_dilemmas[rem_dil] != _ref_to_dil) {
			new_array[rem_dil] = manager.common_dilemmas[rem_dil];
		}
		else if (manager.common_dilemmas[rem_dil] == _ref_to_dil) {
			dilemma_found = true;
		}
	}
	
	manager.common_dilemmas = new_array;
	instance_destroy(_ref_to_dil);
}