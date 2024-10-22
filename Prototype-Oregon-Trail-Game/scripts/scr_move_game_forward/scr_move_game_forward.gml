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
		if (!dilemma_manager.common_dilemmas[_current_dilemma].repeatable)
			dilemma_manager.common_dilemmas[_current_dilemma].destroy = true;
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
		if(_result < state.aggression)
		{
			_current_dilemma = random_range(0, array_length(dilemma_manager.colonial_dilemmas) - 1);
			_current_dilemma = round(_current_dilemma);
			dilemma_manager.colonial_dilemmas[_current_dilemma].active = true;
		}
		else
		{
			//Get dilemma (basic)
			_current_dilemma = random_range(0, array_length(dilemma_manager.common_dilemmas) - 1);
			_current_dilemma = round(_current_dilemma);
			dilemma_manager.common_dilemmas[_current_dilemma].active = true;
		}
		
	}
}