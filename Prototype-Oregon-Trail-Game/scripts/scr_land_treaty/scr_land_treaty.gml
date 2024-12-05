// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_land_treaty_option_1(){
	scr_reset_outcomes();
	state = instance_nearest(0, 0, obj_tribe_state);
	state.ritual_hunt_food_mod -= 2;
	scr_increment_aggression(-3);
	scr_increment_autonomy(-2);
}

function scr_land_treaty_option_2(){
	scr_reset_outcomes();
	scr_increment_aggression(5);
}