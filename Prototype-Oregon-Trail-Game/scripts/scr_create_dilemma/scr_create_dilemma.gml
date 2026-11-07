// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_dilemma(_text_string, _array_of_option_text, _array_of_option_funcs, _bool_repeatable, _ext_info, _link, _card)
{
	dilemma = instance_create_layer(room_width / 2, 300, "Text", obj_dilemma);
	dilemma.text = _text_string;
	dilemma.responses = _array_of_option_text;
	dilemma.effects = _array_of_option_funcs;
	dilemma.repeatable = _bool_repeatable;
	dilemma.link = _link;
	dilemma.link_text = _ext_info;
	dilemma.card = _card;
	return dilemma;
}