/// @description Insert description here
// You can write your code in this editor

//ARRANGE TOKENS SPACED OUT FOR GREATER VISIBILITY
manager = instance_nearest(0, 0, obj_tribe_state);
var _pops_in_job = []
var _pops_to_arrange = 0;

for (var _anchor2 = array_length(manager.pop)-1; _anchor2 >= 0; _anchor2--) {
	if (manager.pop[_anchor2].current_job == job) {
		pops_in_job[_anchor2] = manager.pop[_anchor2];
		_pops_to_arrange++;
	}
}

var _position = -(_pops_to_arrange / 2) * 20

for (var _anchor2 = 0; _anchor2 < _pops_to_arrange; _anchor2++) {
	pops_in_job[_anchor2].x += _position;
	_position += 20;
}
