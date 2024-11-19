/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


var _food_text = "";
var _culture_text = "";
var _autonomy_text = "";
var _animal_text = "";
var _pop_text = "";
var _aggression_text = "";


if (food_change > 0) {
	_food_text = "+" + string(food_change);
}
else {
	_food_text = string(food_change);
}

if (culture_change > 0) {
	_culture_text = "+" + string(culture_change);
}
else {
	_culture_text = string(culture_change);
}


if (autonomy_change > 0) {
	_autonomy_text = "+" + string(autonomy_change);
}
else {
	_autonomy_text = string(autonomy_change);
}


if (animal_pop_change > 0) {
	_animal_text = "+" + string(animal_pop_change);
}
else {
	_animal_text = string(animal_pop_change);
}


if (human_pop_change > 0) {
	_pop_text = "+" + string(human_pop_change);
}
else {
	_pop_text = string(human_pop_change);
}


if (aggression_change > 0) {
	_aggression_text = "+" + string(aggression_change);
}
else {
	_aggression_text = string(aggression_change);
}





var _text = "Food: " + _food_text + 
"\nCulture " + _culture_text +
"\nAutonomy: " + _autonomy_text +
"\nAnimal Pop: " + _animal_text +
"\nHuman Pop: " + _pop_text + 
"\nAggression: " + _aggression_text;
draw_set_color(c_white);
draw_text_ext(x + 15, y + 10, _text, 35, box_width - 15);