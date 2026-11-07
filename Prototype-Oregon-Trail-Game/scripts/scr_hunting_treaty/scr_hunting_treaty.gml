function scr_hunting_treaty_option_1()
{
	scr_reset_outcomes();
	state = instance_nearest(0, 0, obj_tribe_state);
	scr_increment_autonomy(-1);
	scr_increment_aggression(-2);
	state.ritual_hunt_food_mod += 1;
	state.overhunt_mod += 1;
}

function scr_hunting_treaty_option_2()
{
	scr_reset_outcomes();
	scr_increment_aggression(1);
}

function scr_hunting_treaty_option_3()
{
	scr_reset_outcomes();
	state = instance_nearest(0, 0, obj_tribe_state);
	state.ritual_hunt_food_mod += 1;
	state.overhunt_mod += 1;
	scr_increment_autonomy(1)
	scr_increment_aggression(3);
}
	
