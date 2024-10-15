/// @description Insert description here
// You can write your code in this editor
manager = instance_nearest(0, 0, obj_tribe_state);
var _pops_in_job = 0;
for (var _anchor = array_length(manager.pop)-1; _anchor >= 0; _anchor--) {
	if (manager.pop[_anchor].current_job == job)
		_pops_in_job++;
}

if (_pops_in_job == 0)
	text = "";
else 
	text = string(_pops_in_job);
	
//Font
draw_set_font(fnt_bitmgothic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Text
draw_text_ext(x + box_height / 2, y + box_height / 2, text, box_height, box_width);