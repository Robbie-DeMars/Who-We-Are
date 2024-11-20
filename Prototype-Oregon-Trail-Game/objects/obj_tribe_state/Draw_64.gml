/// @description Insert description here
// You can write your code in this editor
dist = room_width / 6;
var _animal_pop = "High";
var _animal_name = instance_nearest(0, 0, obj_animal_name);
draw_set_color(make_color_rgb(92, 60, 22));
draw_set_font(fnt_ETArtilux_text);
draw_text(dist, 50, "Food\n" + string(food)); 
draw_text(dist*2, 50, "Cult.\n" + string(culture)); 
draw_text(dist*3, 50, "Auto.\n" + string(autonomy));

if (animal_pop == 1) 
	_animal_pop = "Low";
else if (animal_pop == 2)
	_animal_pop = "Med";
else 
	_animal_pop = "High";

draw_text(dist*4, 50, _animal_name.text + " Pop\n" + _animal_pop); 
draw_text(dist*5, 50, "Aggro\n" + string(aggression)); 