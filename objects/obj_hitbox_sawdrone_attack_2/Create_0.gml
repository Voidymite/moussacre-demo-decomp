time = 300;
dust_time = 1;
add_angle = 0;
direction = point_direction(x, y, obj_mick.x, obj_mick.y);
spd = 80;
image_time = 3;
stop = 0;
stoppable = 1;

if (place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_object_block_spin) || place_meeting(x, y, obj_object_block_groundpound) || place_meeting(x, y, obj_object_block_uni))
    stoppable = 0;
