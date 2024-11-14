/// @description Insert description here
// You can write your code in this editor


if(global.tutorial)
{
	//Initial stage of the tutorial explaining resources
	if(stage == 0 && active)
	{
		if(keyboard_check(vk_enter))
		{
			index++;
			if(index < array_length(messages))
			{
				popup.text = messages[index]
				active = false
				alarm[0] = game_get_speed(gamespeed_fps)
			}
			else
			{
				popup.visible = false;
				stage++;
				active = false;
			}
		}
	}
	else if(stage < 7 && active == true)
	{
		if(keyboard_check(vk_enter))
		{
			popup.visible = false
			active = false;
			stage++;
			if(stage == 7)
				manager.progress_allowed = true;
		}
	}
}
