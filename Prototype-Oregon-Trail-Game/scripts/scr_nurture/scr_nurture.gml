// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_nurture(_pop_count, _pops_overhunting){
	state = instance_nearest(0, 0, obj_tribe_state);
	
	//Deal with animal pop
	difference = _pop_count - _pops_overhunting - 2;
	dice_roll = round(random_range(1, 20));
	if (difference > 0) {
		if (dice_roll <= difference)
			state.animal_pop++;
	}
	else if (difference < 0) {
		if (dice_roll <= difference * -1)
			state.animal_pop--;
	}
	
	//Do for every pop
	for (inurture = 0; inurture < _pop_count; inurture++) {
		state.culture++;
	}
}