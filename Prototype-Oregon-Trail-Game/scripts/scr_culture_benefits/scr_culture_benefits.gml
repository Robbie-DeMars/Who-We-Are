// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_practice_1_benefits()
{
	
	state = instance_nearest(0, 0, obj_tribe_state);
	state.ritual_hunt_culture_mod += 1;
	
	
	//This adds a description of the tradition benefits to the modifier list
	traditions = instance_nearest(0, 0, obj_cultural_practices);
	description = "Because of your tradition of " + traditions.practice_1 + " you gain one culture from ritual hunting";
	scr_add_modifier(description, "tradition1");
}

function scr_remove_pratice_1_benefits()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	state.ritual_hunt_food_mod -= 3;
	scr_remove_modifier("tradition1")
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
		true,
		"Held among the Cheyenne, Kiowa, Ponca, and Arapaho tribes in the Oklahoma area, the sun dance was a public and annual Native American religious ceremony held before the summer bison hunt. The sun dance was a four-day ceremony of fasting, dancing, and prayer. During this ceremony, members of these tribes often painted their bodies yellow and wore a bandolier of crow or raven feathers across their bodies and carried a wreath of sage in their right hand.",
		"https://www.okhistory.org/publications/enc/entry?entry=SU008#:~:text=Each%20summer%20after%20the%20sacred,and%20fast%20for%20four%20days.",
		spr_sundance
	)
	array_push(dilemmas.common_dilemmas, global.bonus_dilemma);
	
	//This adds a description of the tradition benefits to the modifier list
	traditions = instance_nearest(0, 0, obj_cultural_practices);
	description = "Because of your tradition of " + traditions.practice_2 + " you have a chance of getting a beneficial dilemmas";
	scr_add_modifier(description, "tradition2");
}

function scr_remove_practice_2_benefits()
{
	scr_remove_dilemma(global.bonus_dilemma);
	scr_remove_modifier("tradition2")
}

function scr_add_practice_3_benefits()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	state.trade_mod += 2;
	state.assimilate_aggression_mod -= 1;
	
	//This adds a description of the tradition benefits to the modifier list
	traditions = instance_nearest(0, 0, obj_cultural_practices);
	description = "Because of your tradition of " + traditions.practice_3 + " you gain more food from trading and reduce aggression further when assimilating";
	scr_add_modifier(description, "tradition3");
}

function scr_remove_practice_3_benefits()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	state.trade_mod -= 2;
	state.assimilate_aggression_mod += 1;
	scr_remove_modifier("tradition3")
}