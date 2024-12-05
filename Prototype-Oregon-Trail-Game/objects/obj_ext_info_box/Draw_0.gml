/// @description Insert description here
// You can write your code in this editor

//Font
draw_set_font(fnt_ETArtilux_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Textbox
draw_self();


//Text
if (text != text_last_frame) {
	index = 0;
}
if (delay >= frame_delay) {
delay = 0;
	if (index <= string_length(text)) {
		index++;
		audio_play_sound(snd_bass, 1, false);
	}
}
else {
	delay++;
}


draw_set_color(c_black);
var _text_written = string_copy(text, 1, index);
draw_text_ext(x - 250, y, _text_written, 25, 900);
draw_sprite_ext(card, 0, x + 450, y, 4, 4, 0, c_white, 1);

text_last_frame = text;