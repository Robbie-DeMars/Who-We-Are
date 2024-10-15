/// @description Insert description here
// You can write your code in this editor
if (dragging) {
	var _anchor = instance_nearest(x, y, obj_pop_anchor);
	x = _anchor.x;
	y = _anchor.y;
	current_job = _anchor.job
	var _temp = instance_nearest(x, y, obj_tribe_state);
}
dragging = false;
global.draggable = true;