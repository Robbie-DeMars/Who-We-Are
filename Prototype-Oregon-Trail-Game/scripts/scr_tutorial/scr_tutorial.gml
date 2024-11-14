// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tutorial_start()
{
	tutorial = instance_create_layer(room_width / 2, 300, "Text", obj_tutorial);
	tutorial.manager.progress_allowed = false;
	tutorial.alarm[0] = game_get_speed(gamespeed_fps);
}


function scr_tutorial_job(_job)
{
	_animal_name = instance_nearest(0, 0, obj_animal_name)
	tutorial = instance_nearest(0,0,obj_tutorial)
	switch(_job)
	{
		case 1:
			tutorial.popup.text = "You have choosen the ritual hunt job. Pops assigned to this job will generate a random amount of food. A higher " + _animal_name.text + " population will lead to more food. Ritual hunting will also produce a point of culture for every pop assigned to the job. Press enter to close this message";
			break;
		case 2:
			tutorial.popup.text = "You have choosen the overhunt job. Pops assigned to this job will a generate a random but large amount of food. A higher " + _animal_name.text + " population will lead to more food. However, this also increases the chances of " + _animal_name.text + " population shrinking. Press enter to close this message";
			break;
		case 3:
			tutorial.popup.text = "You have choosen the trade job. Pops assigned to this job will generate a random amount of food but higher levels of aggression will directly reduce the amount. Press enter to close this message";
			break;
		case 4:
			tutorial.popup.text = "You have choosen the raiding job. Pops assigned to this job will generate a large random amount of food. However, there is a small chance they die in the process and raiding generates aggression. Press enter to close this message"
			break;
		case 5:
			tutorial.popup.text = "You have choosen the nurture population job. Pops assigned to this job will decrease the chance that " + _animal_name.text + " population declines this round. With enough pops assigned to the job there will be a small chance it increases instead. Press enter to close this message"
			break;
		case 6:
			tutorial.popup.text = "You have choosen the assimilate job. Pops assigned to this job will reduce aggression but also reduce culture. Press enter to close this message."
			break;
	}
	tutorial.popup.visible = true;
	tutorial.active = true;
}