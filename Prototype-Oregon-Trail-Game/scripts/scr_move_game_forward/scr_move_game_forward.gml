// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_game_forward(){
	game_manager = instance_nearest(0, 0, obj_game_manager);
	dilemma_manager = instance_nearest(0, 0, obj_dilemma_manager);
	
	
	//Check to see if game is ok to move to next state
	if (game_manager.game_state == 0 ) {
		game_manager.game_state = 1;
		scr_do_jobs();
	}
	else if (game_manager.game_state == 1) {
		game_manager.game_state = 0;
	}
	
	//Game Actions
	if (game_manager.game_state == 0) {
		game_manager.progress_allowed = true;
	}
	else if (game_manager.game_state == 1) {
		//Get dilemma (basic)
		game_manager.progress_allowed = false;
		
		var _rand = random_range(0, array_length(dilemma_manager.common_dilemmas) - 1)
		_rand = round(_rand);
		dilemma_manager.common_dilemmas[_rand].active = true;
	}
}