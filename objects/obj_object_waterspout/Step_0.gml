if (place_meeting(x, y, obj_mick))
{
    if (x <= obj_mick.x)
    {
        with (obj_mick)
        {
            if (stun_timer <= 10 && hurt_timer == 0)
            {
                if (dash_time <= 2)
                    global.hspd = 24;
                else if (global.rumble)
                    gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
    }
    else
    {
        with (obj_mick)
        {
            if (stun_timer <= 10 && hurt_timer == 0)
            {
                if (dash_time <= 2)
                    global.hspd = -24;
                else if (global.rumble)
                    gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
    }
    
    with (obj_mick)
    {
        if (stun_timer <= 10 && hurt_timer == 0)
        {
            if (dash_time <= 2)
            {
                stun_timer = 25;
                audio_play_sound(snd_object_waterspout_2, 1, 0);
                astate = 7;
                
                repeat (6)
                    instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_water);
                
                if (global.particles)
                {
                    repeat (18)
                        instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_water);
                }
            }
            else if (global.rumble)
            {
                gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
    }
}

if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id);
