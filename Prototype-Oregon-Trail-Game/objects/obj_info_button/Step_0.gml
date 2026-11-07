/// @description Insert description here
// You can write your code in this editor
if(active)
{
	popup.visible = true;
	if(keyboard_check(vk_enter))
	{
		active = false;
		popup.visible = false;
	}
}