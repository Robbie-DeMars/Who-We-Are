// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_war_aid_option_1(){
	scr_reset_outcomes();
	scr_increment_aggression(-7);
	scr_increment_autonomy(1);
}
function scr_war_aid_option_2(){
	scr_reset_outcomes();
	scr_increment_aggression(3);
	scr_increment_autonomy(-1);
}