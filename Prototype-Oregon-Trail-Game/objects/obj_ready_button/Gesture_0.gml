/// @This begins the process of simulating a round
// You can write your code in this editor

//TODO: Indicate to the model to simulate a round
if (manager.progress_allowed) {
	scr_reset_outcomes();
	move_game_forward();
}