time--;
x += (hspd * (dir * -1));
y += vspd;
image_angle += rspd;
vspd++;

if (vspd >= 20)
    vspd = 20;

dust_time -= 0.5;

if (dust_time == 0)
{
    dust_time = 3;
    instance_create_depth(x, y, -1, obj_particle_dust_big);
}

if (place_meeting(x, y, obj_mick))
{
    if (!global.dodging && obj_mick.parry == 0)
    {
        instance_create_depth(x, y, -1, obj_particle_poof);
        instance_destroy();
    }
    
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
        
        if (parry > 0)
        {
            instance_create_depth(x, y, -3, obj_hitbox_counter);
            
            if (astate == 1 || astate == 14)
            {
                if (dir == 1)
                    instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = 0;
                else
                    instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = 180;
            }
            
            if (astate == 4)
                instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = 90;
            
            if (astate == 3)
                instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = -90;
        }
    }
}

if (time == 0 || place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_object_block_spin) || place_meeting(x, y, obj_object_block_groundpound) || place_meeting(x, y, obj_object_block_uni))
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
        audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0);
    
    instance_create_depth(x, y, -1, obj_particle_poof);
    instance_destroy();
}

if (place_meeting(x, y, obj_hitbox_counter))
    instance_destroy();
