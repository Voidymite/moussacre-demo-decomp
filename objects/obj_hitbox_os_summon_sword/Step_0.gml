y += vspd;
vspd += 8;
dust_time--;

if (dust_time == 0)
{
    dust_time = 4;
    instance_create_depth(x, y, -1, obj_particle_dust_small);
}

if (place_meeting(x, y, obj_mick))
{
    if (x <= obj_mick.x)
    {
        with (obj_mick)
        {
            if (stun_timer == -25 && hurt_timer == 0)
            {
                if (dash_time <= 2)
                    global.hspd = 48;
                else if (global.rumble)
                    gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
    }
    else
    {
        with (obj_mick)
        {
            if (stun_timer == -25 && hurt_timer == 0)
            {
                if (dash_time <= 2)
                    global.hspd = -48;
                else if (global.rumble)
                    gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
    }
    
    with (obj_mick)
    {
        if (stun_timer == -25 && hurt_timer == 0)
        {
            if (dash_time <= 2)
            {
                stun_timer = 25;
                astate = 7;
            }
            else if (global.rumble)
            {
                gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
    }
}
