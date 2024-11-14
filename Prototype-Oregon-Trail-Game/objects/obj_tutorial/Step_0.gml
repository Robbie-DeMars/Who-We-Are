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
	else if(stage > 0 && active == true)
	{
		if(keyboard_check(vk_enter))
		{
			popup.visible = false
			active = false;
			
		}
	}
}
if(stage == 7)
{
	popup.text = "Now that you have assigned all your pops to jobs you can proceed to the next step. After closing this message click the button on the right. You will be able to see the outcomes of your jobs to the right and you will get a dilemma you need to resolve."
	popup.visible = true;
	active = false;
	alarm[0] = game_get_speed(gamespeed_fps)
	manager.progress_allowed = true;
	stage++;
}