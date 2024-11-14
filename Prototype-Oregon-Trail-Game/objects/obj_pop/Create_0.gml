/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_xscale = 2;
image_yscale = 2;
current_frame = 0;

global.draggable = true;
dragging = false;
sated = true;
current_job = 0;
sick = false;
manager = instance_nearest(0, 0, obj_game_manager);
tutorial_assigned = false;