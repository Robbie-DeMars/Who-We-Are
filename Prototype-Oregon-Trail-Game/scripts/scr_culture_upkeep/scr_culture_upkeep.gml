// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_culture_upkeep()
{
	state = instance_nearest(0, 0, obj_tribe_state);
	practices_storage = instance_nearest(0, 0, obj_cultural_practices);
	if (state.culture < 5 && practices_storage.practice_3_active) {
		practices_storage.practice_3_active = false;
		scr_remove_practice_3_benefits();
	}
	if (state.culture < -5 && practices_storage.practice_2_active) {
		practices_storage.practice_2_active = false;
		scr_remove_practice_2_benefits();
	}
	if (state.culture < -10 && practices_storage.practice_1_active) {
		practices_storage.practice_1_active = false;
		scr_remove_pratice_1_benefits();
	}
}