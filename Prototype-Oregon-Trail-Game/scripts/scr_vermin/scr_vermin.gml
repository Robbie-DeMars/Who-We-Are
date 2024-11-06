 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_vermin_option_1()
{
	scr_reset_outcomes();
	scr_increment_food(-12);
	scr_unlock_progress();
}

function scr_vermin_option_2()
{
	scr_reset_outcomes();
	scr_increment_autonomy(-1);
	scr_unlock_progress();
}

function scr_vermin_option_3()
{
	scr_reset_outcomes();
	scr_increment_aggression(2);
	scr_unlock_progress();
}
