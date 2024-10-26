if (place_meeting(x, y, obj_mick) && !instance_exists(obj_object_hand_release))
{
    with (obj_mick)
    {
        if (hurt_timer == 0 && parry == 0)
        {
            if (dash_time <= 2)
            {
                instance_create_depth(x, y, -10, obj_particle_slash_vertical);
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

x += spd;

if (spd > 0 && place_meeting(x, y, obj_object_saw_goleft) && dir == 1)
{
    dir = -1;
    sound = choose(0, 1);
    
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
    {
        if (sound)
            audio_play_sound(snd_object_saw_1, 1, 0);
        else
            audio_play_sound(snd_object_saw_2, 1, 0);
    }
}

if (dir == -1)
{
    if (spd > -20)
        spd -= 0.5;
}

if (spd < 0 && place_meeting(x, y, obj_object_saw_goright) && dir == -1)
{
    dir = 1;
    sound = choose(0, 1);
    
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
    {
        if (sound)
            audio_play_sound(snd_object_saw_1, 1, 0);
        else
            audio_play_sound(snd_object_saw_2, 1, 0);
    }
}

if (dir == 1)
{
    if (spd < 20)
        spd += 0.5;
}

if (place_meeting(x, y, obj_object_saw_goleft) && place_meeting(x, y, obj_object_saw_goright))
    spd = 0;
