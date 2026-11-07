// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_market_cornered_option_1() {
	scr_reset_outcomes();
	scr_increment_culture(-15);
	scr_increment_aggression(-2);
	scr_increment_food(300);
	scr_increment_pop(-2);
}

function scr_market_cornered_option_2() {
	scr_reset_outcomes();
	scr_increment_aggression(5);
	scr_increment_food(100);
	scr_increment_pop(-1);
}

function scr_market_cornered_option_3() {
	state = instance_nearest(0, 0, obj_tribe_state);
	scr_reset_outcomes();
	scr_increment_aggression(2);
	scr_increment_food(50 * state.animal_pop);
	scr_increment_pop(-2);
}