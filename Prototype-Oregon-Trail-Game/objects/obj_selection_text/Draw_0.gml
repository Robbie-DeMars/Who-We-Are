/// @description Insert description here
// You can write your code in this editor
draw_self();

var _text_written = string_copy(text, 1, index);
if (index <= string_length(text))
	index++;

//Text
draw_text_ext(x + 15, y, _text_written, 20, box_width - 15);