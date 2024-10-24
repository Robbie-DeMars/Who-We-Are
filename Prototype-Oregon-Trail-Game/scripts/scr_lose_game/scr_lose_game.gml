// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tribe_died()
{
	room_goto(rm_game_over);
	global.lose_text = "All your people died, you lose :(";
}