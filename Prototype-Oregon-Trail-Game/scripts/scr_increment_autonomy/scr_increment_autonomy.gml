// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_increment_autonomy(_amount_changed){
	outcomes = instance_nearest(0, 0, obj_outcomes);
	outcomes.autonomy_change += _amount_changed;
	state = instance_nearest(0, 0, obj_tribe_state);
	state.autonomy += _amount_changed;
	if (state.autonomy > 10)
		state.autonomy = 10;
	else if (state.autonomy <= 0)
	{
		state.autonomy = 0;
		scr_lost_independece();
	}
	
}