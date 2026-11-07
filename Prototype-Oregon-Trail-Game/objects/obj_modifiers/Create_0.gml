/// @description Insert description here
// You can write your code in this editor
button_text = "Modifiers"
box_height = sprite_get_height(spr_modifier);
box_width = sprite_get_width(spr_modifier);
popup = instance_create_layer(room_width / 2 - sprite_get_width(spr_modifier_list)*(7/2), 150, "Text", obj_text_box_modifiers);
popup.visible = false;
popup.text_list = [];
modifiers_ids = [];
