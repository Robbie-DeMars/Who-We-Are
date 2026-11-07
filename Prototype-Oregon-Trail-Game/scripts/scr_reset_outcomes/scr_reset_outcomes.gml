// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset_outcomes(){
	outcomes = instance_nearest(0, 0, obj_outcomes)
	outcomes.food_change = 0;
	outcomes.culture_change = 0;
	outcomes.aggression_change = 0;
	outcomes.animal_pop_change = 0;
	outcomes.human_pop_change = 0;
	outcomes.autonomy_change = 0;
}