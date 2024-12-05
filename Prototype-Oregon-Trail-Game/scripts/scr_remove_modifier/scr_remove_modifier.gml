// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_remove_modifier(_modifier_id)
{
	modifier_list = instance_nearest(0, 0, obj_modifiers)
	_index = array_get_index(modifier_list.modifiers_ids, _modifier_id);
	if(_index != -1)
	{
		array_delete(modifier_list.popup.text_list, _index, 1);
		array_delete(modifier_list.modifiers_ids, _index, 1);
	}
}

var _f = function(_element, _index, _id)
{
	return (_element == _id)
}