time--;

if (!active)
{
    depth = obj_mick.depth - 1 - (time * 0.01);
    x += ((point_x - x) * 0.15);
    y += ((point_y - y) * 0.15);
    size *= 0.95;
    image_angle += spd;
}
else
{
    sprite_index = spr_hitbox_os_dm_1;
    size += 0.027;
    depth = obj_mick.depth + 1;
    x = x_pos + irandom_range(-30, 30);
    y = y_pos + irandom_range(-30, 30);
}

if (image_xscale <= 1.2)
{
    x_pos = x;
    y_pos = y;
    active = 1;
    
    if (boom)
    {
        audio_play_sound(snd_boss_os_dm_blast_1, 1, 0);
        boom = 0;
    }
}

image_xscale = size;
image_yscale = size;

if (place_meeting(x, y, obj_mick) && active)
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

if (active)
{
    shake--;
    
    if (shake == 0)
    {
        shake = 4;
        scr_screenshake_light();
        
        if (global.rumble)
            gamepad_set_vibration(0, 0.25, 0.25);
    }
    
    if (shake == 1)
        gamepad_set_vibration(0, 0, 0);
}

if (active && image_xscale >= 5)
    image_alpha -= 0.05;

if (image_alpha <= 0)
{
    instance_destroy();
    gamepad_set_vibration(0, 0, 0);
}
