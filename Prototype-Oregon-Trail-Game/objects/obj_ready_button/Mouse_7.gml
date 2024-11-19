/// @description Insert description here
// You can write your code in this editor
if (manager.progress_allowed) 
{
	audio_play_sound(button_dgobe_freesound, 1, false);
	scr_reset_outcomes();
	move_game_forward();
	pressed = false;
}