x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
time--;

if (time <= 0)
    instance_destroy();

if (time == 0 || place_meeting(x, y, obj_wall))
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
        audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0);
    
    instance_create_depth(x, y, -2, obj_particle_os_shot_1);
    instance_destroy();
}

image_angle = direction;
dust_time--;

if (dust_time == 0)
{
    dust_time = 2;
    instance_create_depth(x, y, -1, obj_particle_dust_small);
}
