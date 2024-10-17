function scr_hunting_treaty_option_1()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	scr_increment_autonomy(-1);
	scr_increment_aggression(-2);
	state.ritual_hunt_food_mod += 1;
	state.overhunt_mod += 1;
	scr_unlock_progress();
}

function scr_hunting_treaty_option_2()
{
	scr_increment_aggression(1);
	scr_unlock_progress();
}

function scr_hunting_treaty_option_3()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	state.ritual_hunt_food_mod += 1;
	state.overhunt_mod += 1;
	scr_increment_autonomy(1)
	scr_increment_aggression(3);
	scr_unlock_progress();
}
	
