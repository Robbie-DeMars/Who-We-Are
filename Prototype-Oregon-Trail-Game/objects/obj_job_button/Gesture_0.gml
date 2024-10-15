/// @This begins the process of simulating a round
// You can write your code in this editor

//TODO: Indicate to the model to simulate a round
state = instance_nearest(0, 0, obj_tribe_state);
var _ritual_hunt = 0;
var _overhunt = 0;
var _trade = 0;
var _raid = 0;
var _nurture = 0;
var _assimilate = 0;
for (i = 0; i < array_length(state.pop); i++) {
	if (state.pop[i].current_job == 1)
		_ritual_hunt++;
	else if (state.pop[i].current_job == 2)
		_overhunt++;
	else if (state.pop[i].current_job == 3)
		_trade++;
	else if (state.pop[i].current_job == 4)
		_raid++;
	else if (state.pop[i].current_job == 5)
		_nurture++;
	else if (state.pop[i].current_job == 6)
		_assimilate++;
}

scr_ritual_hunt(_ritual_hunt);
scr_overhunt(_overhunt);
scr_trade(_trade);
scr_raid(_raid);
scr_nurture(_nurture, _overhunt);
scr_assimilate(_assimilate);

scr_pop_upkeep();

