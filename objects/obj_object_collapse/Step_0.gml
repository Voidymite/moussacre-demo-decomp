if (global.hp > 0)
    spd = (3 * (y - obj_mick.y)) / 1400;
else
    spd = 0;

if (place_meeting(x, y, obj_mick))
{
    instance_create_depth(obj_mick.x, obj_mick.y, -10, obj_particle_burst).image_yscale = 3;
    global.hp = 0;
    global.score -= (global.hp * 500);
    obj_mick.pain = 1;
    hurt_timer = 120;
}

if (moving && global.hp > 0)
{
    y -= spd;
    
    with (obj_background)
        sink += ((3 * (obj_object_collapse.y - obj_mick.y)) / 25000);
}

shake_time--;

if (shake_time == 0)
{
    shake_time = 20;
    
    if (moving && y <= 12372)
    {
        scr_screenshake_light();
        
        if (global.rumble)
            gamepad_set_vibration(0, 0.025, 0.025);
    }
}

dust--;

if (dust == 0)
{
    dust = 6;
    
    if (moving)
    {
        if (sound)
        {
            sound = snd_background_city_1;
            audio_play_sound(snd_object_collapse_building_2, 1, 1);
        }
        
        repeat (3)
            instance_create_depth(random_range(0, 3200), y - 100, -5, obj_particle_smoke_1);
        
        repeat (8)
        {
            if (global.particles)
                instance_create_depth(random_range(0, 3200), y - 100, -5, obj_particle_smoke_1);
        }
    }
}
