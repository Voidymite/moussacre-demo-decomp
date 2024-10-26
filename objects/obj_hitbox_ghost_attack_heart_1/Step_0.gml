time--;
dust_time--;
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
image_angle = direction - 90;

if (dust_time == 0)
{
    dust_time = 4;
    instance_create_depth(x, y, -1, obj_particle_dust_small);
}

if (place_meeting(x, y, obj_wall))
{
    scr_screenshake();
    instance_create_depth(x, y, -1, obj_particle_heart_1_temp);
    
    repeat (50)
        instance_create_depth(x, y, -1, obj_particle_heart_2_temp);
    
    instance_destroy();
}
