/// @description Insert description here
// You can write your code in this editor
manager = instance_nearest(0, 0, obj_game_manager);
draw_set_halign(fa_left);
draw_text(0, 100, "State: " + manager.game_states[manager.game_state]); 