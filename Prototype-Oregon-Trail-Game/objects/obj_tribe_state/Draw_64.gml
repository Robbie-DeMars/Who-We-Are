/// @description Insert description here
// You can write your code in this editor
dist = room_width / 6;
draw_set_color(c_white);
draw_set_font(fnt_ui);
draw_text(dist, 50, "Food: " + string(food)); 
draw_text(dist*2, 50, "Culture: " + string(culture)); 
draw_text(dist*3, 50, "Autonomy: " + string(autonomy)); 
draw_text(dist*4, 50, "Animal Pop: " + string(animal_pop)); 
draw_text(dist*5, 50, "Aggression: " + string(aggression)); 