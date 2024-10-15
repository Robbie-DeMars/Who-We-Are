// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_increment_aggression(_amount_changed){
	state = instance_nearest(0, 0, obj_tribe_state);
	state.aggression += _amount_changed;
	if (state.aggression > 15)
		state.aggression = 15;
	else if (state.aggression < 0)
		state.aggression = 0;
}