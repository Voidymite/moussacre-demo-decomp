if (obj_mick.astate != 14)
{
    instance_destroy();
    instance_create_depth(x, y, -10, obj_particle_poof);
    audio_stop_sound(snd_mick_rang_1);
}

if (time == 0)
{
    move_towards_point(obj_mick.x, obj_mick.y, spd);
    
    if (place_meeting(x, y, obj_mick))
    {
        instance_destroy();
        audio_stop_sound(snd_mick_rang_1);
        obj_mick.astate = 0;
    }
}
else
{
    x += ((pos_x - x) * 0.15);
    
    if (place_meeting(x, y, obj_wall) && !place_meeting(x, y, obj_wall_nowalljump))
    {
        time = 0;
        spd = 35;
    }
    
    if (x <= 0 || x >= room_width)
    {
        time = 0;
        spd = 35;
    }
}

if (spd < 100 && time == 0)
    spd += 7;

if (time > 0)
    time--;

dust_time--;

if (dust_time == 0)
{
    dust_time = 4;
    instance_create_depth(x, y, -1, obj_particle_dust_small);
}
