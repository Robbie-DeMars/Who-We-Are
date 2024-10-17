// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dance_prep_option_1()
{
	scr_increment_food(-20);
	scr_increment_culture(3);
	scr_unlock_progress()
}

function scr_dance_prep_option_2()
{
	scr_increment_culture(-3);
	scr_unlock_progress()
}