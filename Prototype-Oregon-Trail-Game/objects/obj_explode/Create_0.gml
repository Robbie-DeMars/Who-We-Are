/// @description Insert description here
// You can write your code in this editor
frames_left = 10;
part_system = part_system_create(ps_explode);
emitter = part_emitter_create(part_system);
part_emitter_region(part_system, emitter, x, x, y, y, ps_shape_rectangle, ps_distr_linear);
part_system_position(part_system, x, y);
