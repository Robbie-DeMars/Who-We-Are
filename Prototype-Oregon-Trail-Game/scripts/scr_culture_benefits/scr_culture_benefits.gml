// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_practice_1_benefits()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	ritual_hunt_culture_mod += 1;
}

function scr_remove_pratice_1_benefits()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	ritual_hunt_food_mod -= 3;
}

function scr_add_practice_2_benefits()
{
	dilemmas = instance_nearest(0, 0, obj_dilemma_manager);
	
	global.bonus_dilemma = scr_create_dilemma
	(
		"It is time to begin preparations for the animal festival. This festival is an important celebration but it requires a great deal of resources. Perhaps it would be best to move on from the tradition.",
		[
		"We will fully commit to the animal dance",
		"We cannot afford to hold the dance this year",
		],
		[
		scr_dance_prep_option_1,
		scr_dance_prep_option_2
		],
		true
	)
	array_push(dilemmas.common_dilemmas, global.bonus_dilemma);
}

function scr_remove_practice_2_benefits()
{
	scr_remove_dilemma(global.bonus_dilemma);
}

function scr_add_practice_3_benefits()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	state.trade_mod += 2;
	assimilate_aggression_mod -= 1;
}

function scr_remove_practice_3_benefits()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	state.trade_mod -= 2;
	assimilate_aggression_mod += 1;
}