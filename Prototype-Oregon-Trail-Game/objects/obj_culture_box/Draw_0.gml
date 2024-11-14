/// @description Insert description here
// You can write your code in this editor
//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Textbox
draw_self();

//Tenants Status
text = "";
if (practices_storage.practice_1_active) {
	draw_set_color(make_color_rgb(92, 60, 22));
	draw_set_font(fnt_ETArtilux_text);
	text = text + "Tenant 1: " + practices_storage.practice_1;
	draw_text_ext(x + 15, y + 70, text, 35, box_width - 150);
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "Tenant 1: " + practices_storage.practice_1;
	draw_text_ext(x + 15, y + 70, text, 35, box_width - 150);
}

text = "";
if (practices_storage.practice_2_active) {
	draw_set_color(make_color_rgb(92, 60, 22));
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\nTenant 2: " + practices_storage.practice_2 + "\n";
	draw_text_ext(x + 15, y + 270, text, 35, box_width - 150);
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\nTenant 2: " + practices_storage.practice_2 + "\n";
	draw_text_ext(x + 15, y + 270, text, 35, box_width - 150);
}

text = "";
if (practices_storage.practice_3_active) {
	draw_set_color(make_color_rgb(92, 60, 22));
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\n \nTenant 3: " + practices_storage.practice_3 + "\n";
	draw_text_ext(x + 15, y + 470, text, 35, box_width - 150);
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\n \nTenant 3: " + practices_storage.practice_3 + "\n";
	draw_text_ext(x + 15, y + 470, text, 35, box_width - 150);
}

