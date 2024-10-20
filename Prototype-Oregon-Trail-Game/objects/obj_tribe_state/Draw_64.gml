/// @description Insert description here
// You can write your code in this editor
dist = room_width / 6;
var _animal_name = instance_nearest(0, 0, obj_animal_name);
draw_set_color(c_white);
draw_set_font(fnt_bitmgothic);
draw_text(dist, 50, "Food: " + string(food)); 
draw_text(dist*2, 50, "Culture: " + string(culture)); 
draw_text(dist*3, 50, "Autonomy: " + string(autonomy)); 
draw_text(dist*4, 50, _animal_name.text + " Pop: " + string(animal_pop)); 
draw_text(dist*5, 50, "Aggression: " + string(aggression)); 


//Tenants Status
practice_display.text = "";
if (practices.practice_1_active) {
	draw_set_color(c_white);
	draw_set_font(fnt_bitmgothic);
	practice_display.text = practice_display.text + "Tenant 1: " + practices.practice_1 + "\n";
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_bitmgothic);
	practice_display.text = practice_display.text + "Tenant 1: " + practices.practice_1 + "\n";
}

if (practices.practice_2_active) {
	draw_set_color(c_white);
	draw_set_font(fnt_bitmgothic);
	practice_display.text = practice_display.text + "Tenant 2: " + practices.practice_2 + "\n";
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_bitmgothic);
	practice_display.text = practice_display.text + "Tenant 2: " + practices.practice_2 + "\n";
}

if (practices.practice_3_active) {
	draw_set_color(c_white);
	draw_set_font(fnt_bitmgothic);
	practice_display.text = practice_display.text + "Tenant 3: " + practices.practice_3 + "\n";
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_bitmgothic);
	practice_display.text = practice_display.text + "Tenant 3: " + practices.practice_3 + "\n";
}
draw_set_color(c_white);
draw_set_font(fnt_bitmgothic);