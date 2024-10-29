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
	draw_set_color(c_white);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "Tenant 1: " + practices_storage.practice_1;
	draw_text_ext(x + 15, y + 10, text, 35, box_width - 15);
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "Tenant 1: " + practices_storage.practice_1;
	draw_text_ext(x + 15, y + 10, text, 35, box_width - 15);
}

text = "";
if (practices_storage.practice_2_active) {
	draw_set_color(c_white);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\nTenant 2: " + practices_storage.practice_2 + "\n";
	draw_text_ext(x + 15, y + 210, text, 35, box_width - 15);
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\nTenant 2: " + practices_storage.practice_2 + "\n";
	draw_text_ext(x + 15, y + 210, text, 35, box_width - 15);
}

text = "";
if (practices_storage.practice_3_active) {
	draw_set_color(c_white);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\n \nTenant 3: " + practices_storage.practice_3 + "\n";
	draw_text_ext(x + 15, y + 410, text, 35, box_width - 15);
}
else {
	draw_set_color(c_red);
	draw_set_font(fnt_ETArtilux_text);
	text = text + "\n \nTenant 3: " + practices_storage.practice_3 + "\n";
	draw_text_ext(x + 15, y + 410, text, 35, box_width - 15);
}

