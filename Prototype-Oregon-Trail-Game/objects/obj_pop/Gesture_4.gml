/// @description Insert description here
// You can write your code in this editor
if (dragging) {
	var _anchor = instance_nearest(x, y, obj_pop_anchor);
	current_job = _anchor.job;
	
	
	//ARRANGE TOKENS SPACED OUT FOR GREATER VISIBILITY
	var _manager = instance_nearest(0, 0, obj_tribe_state);
	var _pops_in_job = []
	var _pops_to_arrange = 0;

	for (var _anchor2 = array_length(_manager.pop)-1; _anchor2 >= 0; _anchor2--) {
		if (_manager.pop[_anchor2].current_job == _anchor.job) {
			_pops_in_job[_pops_to_arrange] = _manager.pop[_anchor2];
			_pops_to_arrange++;
			_manager.pop[_anchor2].x = _anchor.x;
			_manager.pop[_anchor2].y = _anchor.y;
		}
	}
	
	show_debug_message(string(_pops_to_arrange));

	var _position = -(_pops_to_arrange / 2) * 20

	for (var _anchor2 = 0; _anchor2 < _pops_to_arrange; _anchor2++) {
		_pops_in_job[_anchor2].x += _position;
		_position += 20;
	}	
	
}
dragging = false;
global.draggable = true;