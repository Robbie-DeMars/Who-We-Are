/// @description Insert description here
// You can write your code in this editor
var _game_state = instance_nearest(0, 0, obj_game_manager);

if (_game_state.game_state == 0) {
	sprite_index = spr_assign;
}
else if (_game_state.game_state == 1) {
	sprite_index = spr_dilemma;
}