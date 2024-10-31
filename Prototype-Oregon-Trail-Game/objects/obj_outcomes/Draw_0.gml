/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _text = "Food: " + string(food_change) + 
"\nCulture " + string(culture_change) +
"\nAutonomy: " + string(autonomy_change) +
"\nAnimal Pop: " + string(animal_pop_change) +
"\nHuman Pop: " + string(human_pop_change) + 
"\nAggression: " + string(aggression_change);
draw_text_ext(x + 15, y + 10, _text, 35, box_width - 15);