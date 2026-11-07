// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_modifier(_modifier_description, _modifier_id)
{
	modifier_list = instance_nearest(0, 0, obj_modifiers)
	array_push(modifier_list.popup.text_list, _modifier_description);
	array_push(modifier_list.modifiers_ids, _modifier_id);
}