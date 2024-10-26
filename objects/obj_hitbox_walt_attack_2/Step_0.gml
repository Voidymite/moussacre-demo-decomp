time--;

if (!grown)
{
    image_xscale += 0.2;
    image_yscale += 0.2;
    image_angle += 10;
    
    if (image_xscale == 2)
        grown = 1;
}

if (time <= 0)
{
    image_xscale -= 0.1;
    image_yscale -= 0.1;
    image_angle++;
}

if (image_xscale <= 0 && grown)
    instance_destroy();

if (place_meeting(x, y, obj_mick))
{
    with (obj_mick)
    {
        if (hurt_timer == 0 && parry == 0 && !place_meeting(x, y, obj_wall_shield))
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
    
    if (obj_mick.parry > 0 && can_parry == 0 && !place_meeting(x, y, obj_wall_shield))
    {
        instance_create_depth(obj_mick.x, obj_mick.y, -3, obj_hitbox_counter);
        can_parry = 5;
    }
}

if (can_parry > 0)
    can_parry--;
