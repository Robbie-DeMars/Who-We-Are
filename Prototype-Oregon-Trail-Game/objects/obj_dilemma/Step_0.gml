/// @description Insert description here
// You can write your code in this editor

if (active) {
	//Ensure ui elements are initialized properly
	if (text_box == noone) {
		text_box = instance_create_layer(x, y, "Text", obj_text_box);
		text_box.text = text;
	}
	if (array_length(options) < array_length(responses)) {
		for (var _i = 0; _i < array_length(responses); _i++) {
			options[_i] = instance_create_layer(x, y + text_box.box_height + _i*20, "Text", obj_option);
			options[_i].text = responses[_i];
			options[_i].function_to_call = effects[_i];
			options[_i].parent = id;
			
		}
	}
	
	//Set visible
	if (text_box != noone)
		text_box.visible = true;
	for (var _i = 0; _i < array_length(options); _i++) {
		if (options[_i] != noone)
			options[_i].visible = true;
	}
	
}
else {
	if (text_box != noone)
		text_box.visible = false;
	for (var _i = 0; _i < array_length(options); _i++) {
		if (options[_i] != noone)
			options[_i].visible = false;
	}
}

if (destroy) {
	for (var _i = array_length(options) - 1; _i >= 0; i--) {
		instance_destroy(options[_i]);
	}
	instance_destroy(id);
}