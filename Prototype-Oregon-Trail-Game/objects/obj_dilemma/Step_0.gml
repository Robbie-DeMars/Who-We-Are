/// @description Insert description here
// You can write your code in this editor

if (active) 
{
	//Ensure ui elements are initialized properly
	if (text_box == noone) 
	{
		text_box = instance_create_layer(x, y, "Text", obj_text_box);
		text_box.text = text;
	}
	if (link_more_info_button == noone && link != "") {
		link_more_info_button = instance_create_layer(room_width - 128, room_height - 64, "Info", obj_more_info_button);
		link_more_info_button.link = link;
		link_more_info_button.text = link_text;
		link_more_info_button.card = card;
	}
	if (array_length(options) < array_length(responses)) {
		for (var _dilemma_var = 0; _dilemma_var < array_length(responses); _dilemma_var++) {
			options[_dilemma_var] = instance_create_layer(x, y + text_box.box_height / 2 + box_offset + (_dilemma_var)*box_offset, "Text", obj_option);
			options[_dilemma_var].y -= sprite_get_height(spr_option);
			options[_dilemma_var].text = responses[_dilemma_var];
			options[_dilemma_var].function_to_call = effects[_dilemma_var];
			options[_dilemma_var].parent = id;
			
		}
	}
	
	//Set visible
	if (text_box != noone)
		text_box.visible = true;
	for (var _i = 0; _i < array_length(options); _i++) 
	{
		if (options[_i] != noone)
			options[_i].visible = true;
	}
	
}
else 
{
	
	if (text_box != noone) {
		instance_destroy(text_box);
		text_box = noone;
	}
	if (link_more_info_button != noone) {
		instance_destroy(link_more_info_button);
		link_more_info_button = noone;
	}
	for (var _i = 0; _i < array_length(options); _i++) 
	{
		if (options[_i] != noone) 
		{
			instance_destroy(options[_i]);
		}
	}
	options = [];
}

if (destroy) 
{
	instance_destroy(text_box);
	for (var _i = array_length(options) - 1; _i >= 0; i--) {
		instance_destroy(options[_i]);
	}
	instance_destroy(link_more_info_button);
	instance_destroy(id);
}