time = 600
dust_time = 1
add_angle = 0
direction = point_direction(x, y, obj_mick.x, obj_mick.y)
spd = 22
stop = 0
stoppable = 1
if (place_meeting(x, y, obj_wall) ? true : (place_meeting(x, y, obj_object_block_spin) ? true : (place_meeting(x, y, obj_object_block_groundpound) ? true : place_meeting(x, y, obj_object_block_uni))))
    stoppable = 0
