// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_unlock_progress(){
	manager = instance_nearest(0, 0, obj_game_manager);
	manager.progress_allowed = true;
}