life--;

if (image_index > 6)
{
    instance_destroy();
    gamepad_set_vibration(0, 0, 0);
}

if (place_meeting(x, y, obj_mick) && life > 0)
{
    with (obj_mick)
    {
        if (hurt_timer == 0 && parry == 0)
        {
            if (dash_time <= 2)
            {
                instance_create_depth(x, y, -10, obj_particle_burst);
                hurt_timer = 120;
                global.hp--;
                global.score -= 500;
                
                if (global.numbers)
                {
                    if (global.difficulty != 2)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = -500;
                    
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_2).num = -1;
                }
            }
            else if (global.rumble)
            {
                gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
    }
    
    if (obj_mick.parry > 0 && obj_boss_os.can_parry == 0)
    {
        instance_create_depth(obj_mick.x, obj_mick.y, -3, obj_hitbox_counter);
        obj_boss_os.can_parry = 5;
    }
}

if (can_parry > 0)
    can_parry--;

scr_screenshake();
