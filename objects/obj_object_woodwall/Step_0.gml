if (build > 0)
    build--;

if (time > 0)
    time--;

if (time <= 10)
    image_alpha = 1;

if (build == 0 && time > 0)
{
    build = 2;
    instance_create_depth(x + irandom_range(-150, 150), (y + irandom_range(-150, 150)) - 80, -10, obj_particle_poof);
}

if (place_meeting(x, y, obj_hitbox_groundpound) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_mick_plane) || place_meeting(x, y, obj_hitbox_plane_bullet) || place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2))
{
    if (place_meeting(x, y, obj_hitbox_spin))
    {
        instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal);
        audio_play_sound(snd_mick_kill_3, 1, 0);
    }
    
    if (place_meeting(x, y, obj_hitbox_doublejump))
    {
        instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical);
        audio_play_sound(snd_mick_kill_3, 1, 0);
        
        with (obj_mick)
        {
            astate = 4;
            
            if (global.badge != 1)
                djump = 0;
            else
                djump = -1;
            
            y -= 2;
            vstate = 1;
            vspd = -jump_height;
        }
    }
    
    if (place_meeting(x, y, obj_hitbox_groundpound))
    {
        instance_create_depth(round((obj_hitbox_groundpound.x + x) / 2), round((obj_hitbox_groundpound.y + y) / 2), -10, obj_particle_slash_vertical);
        audio_play_sound(snd_mick_kill_3, 1, 0);
        
        with (obj_mick)
        {
            apex = 0;
            stalled = 0;
            astate = 6;
            
            if (global.badge != 1)
                djump = 0;
            else
                djump = -1;
            
            y -= 2;
            vstate = 1;
            vspd = -jump_height;
            spin_time = 0;
            dash_time = 0;
        }
    }
    
    if (place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2))
        instance_create_depth(x, y, -10, obj_particle_burst);
    
    repeat (10)
        instance_create_depth(x + irandom_range(-100, 100), (y + irandom_range(-100, 100)) - 80, -9, obj_particle_brokenwood);
    
    repeat (30)
    {
        if (global.particles)
            instance_create_depth(x + irandom_range(-100, 100), (y + irandom_range(-100, 100)) - 80, -9, obj_particle_brokenwood);
    }
    
    instance_create_depth(x, y, -10, obj_particle_poof);
    instance_create_depth(x, y - 160, -10, obj_hitbox_woodwall);
    scr_screenshake();
    instance_destroy();
    smash = choose(0, 1);
    
    if (!smash)
        audio_play_sound(snd_object_block_break_1, 1, 0);
    else
        audio_play_sound(snd_object_block_break_2, 1, 0);
}

if (place_meeting(x, y, obj_mick) && !place_meeting(x, y, obj_hitbox_spin) && !place_meeting(x, y, obj_hitbox_doublejump) && !place_meeting(x, y, obj_hitbox_groundpound))
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
