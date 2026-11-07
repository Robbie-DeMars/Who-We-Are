	// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_game_forward()
{
	game_manager = instance_nearest(0, 0, obj_game_manager);
	dilemma_manager = instance_nearest(0, 0, obj_dilemma_manager);
	state = instance_nearest(0, 0, obj_tribe_state);
	var _current_dilemma = 0;
	
	//Check to see if game is ok to move to next state
	if (game_manager.game_state == 0 ) 
	{
		game_manager.game_state = 1;
		//Since transitioning from job pick phase, do the jobs.
		scr_do_jobs();
	}
	else if (game_manager.game_state == 1) 
	{
		game_manager.game_state = 0;
		dilemma_manager.common_dilemmas[_current_dilemma].active = false;
		
		//Since transitioning from dilemmas, make sure whether it needs to be deleted or not.
		//if (!dilemma_manager.common_dilemmas[_current_dilemma].repeatable)
			//dilemma_manager.common_dilemmas[_current_dilemma].destroy = true;
			
		show_debug_message(string(dilemma_manager.last_dilemma));
		show_debug_message(string(dilemma_manager.common_dilemmas[_current_dilemma].repeatable));
		if (dilemma_manager.last_dilemma == 1 && dilemma_manager.colonial_dilemmas[_current_dilemma].repeatable == false) {
			var _new_dilemma_list = [];
			var offset = 0;
			for (var i = 0; i < array_length(dilemma_manager.colonial_dilemmas); i++) {
				if (dilemma_manager.colonial_dilemmas[i - offset] != dilemma_manager.colonial_dilemmas[_current_dilemma]) {
				_new_dilemma_list[i] = dilemma_manager.colonial_dilemmas[i - offset];
				offset++;
				}
			}
			dilemma_manager.colonial_dilemmas = _new_dilemma_list;
		}
			
		if (dilemma_manager.last_dilemma == 2 && dilemma_manager.common_dilemmas[_current_dilemma].repeatable == false) {
			show_debug_message("REMOVING DILEMMA PLEASE")
			var _new_dilemma_list = [];
			var offset = 0;
			for (var i = 0; i < array_length(dilemma_manager.common_dilemmas); i++) {
				if (dilemma_manager.common_dilemmas[i - offset] != dilemma_manager.common_dilemmas[_current_dilemma]) {
				_new_dilemma_list[i] = dilemma_manager.common_dilemmas[i - offset];
				offset++;
				}
			}
			dilemma_manager.common_dilemmas = _new_dilemma_list;
		}	
			
		scr_increment_aggression(1);
			
	}
	
	//Game Actions
	if (game_manager.game_state == 0) 
	{
		game_manager.progress_allowed = true;
	}
	else if (game_manager.game_state == 1) 
	{
		//Determine if the dilemma will be a normal or aggression one.
		game_manager.progress_allowed = false;
		var _result = irandom(20);
		if(array_length(dilemma_manager.debug_dilemmas) > 0)
		{
			_current_dilemma = random_range(0, array_length(dilemma_manager.debug_dilemmas)-1);
			_current_dilemma = round(_current_dilemma);
			dilemma_manager.debug_dilemmas[_current_dilemma].active = true;
			dilemma_manager.last_dilemma = 3;
		}
		else if(_result < state.aggression)
		{
			_current_dilemma = random_range(0, array_length(dilemma_manager.colonial_dilemmas)-1);
			_current_dilemma = round(_current_dilemma);
			dilemma_manager.colonial_dilemmas[_current_dilemma].active = true;
			dilemma_manager.last_dilemma = 1;
		}
		else
		{
			//Get dilemma (basic)
			_current_dilemma = random_range(0, array_length(dilemma_manager.common_dilemmas)-1);
			_current_dilemma = round(_current_dilemma);
			dilemma_manager.common_dilemmas[_current_dilemma].active = true;
			dilemma_manager.last_dilemma = 2;
		}
		
	}
}