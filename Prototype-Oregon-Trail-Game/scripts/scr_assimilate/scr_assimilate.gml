// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_assimilate(_pop_count){
	//Do for every pop
	for (iassimilate = 0; iassimilate < _pop_count; iassimilate++) {
		scr_increment_aggression(-1);
		scr_increment_culture(-1);
	}
}