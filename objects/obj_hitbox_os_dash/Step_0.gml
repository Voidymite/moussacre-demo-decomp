time++;

if (place_meeting(x, y, obj_mick) && image_index >= 5 && image_index <= 6)
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
    
    if (obj_mick.parry > 0 && can_parry == 0)
    {
        instance_create_depth(obj_mick.x, obj_mick.y, -3, obj_hitbox_counter);
        can_parry = 5;
    }
}

if (can_parry > 0)
    can_parry--;

if (image_index > 1 && image_index < 3)
    image_index = 0;

if (image_index > 6 && image_index < 8)
    image_index = 5;

if (time == 75)
{
    image_index = 3;
    sound = choose(0, 1);
    
    if (!sound)
        audio_play_sound(snd_boss_os_dash_fire_1, 1, 0);
    else
        audio_play_sound(snd_boss_os_dash_fire_2, 1, 0);
}

if (time == 105)
    image_index = 8;

if (image_index > 10)
    instance_destroy();
