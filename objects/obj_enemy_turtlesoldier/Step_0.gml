if (place_meeting(x, y, obj_mick) && !place_meeting(x, y, obj_hitbox_spin) && !place_meeting(x, y, obj_hitbox_doublejump) && !place_meeting(x, y, obj_hitbox_groundpound) && !attacking)
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

if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound) || place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2) || place_meeting(x, y, obj_hitbox_deflect) || place_meeting(x, y, obj_hitbox_counter) || place_meeting(x, y, obj_hitbox_rang))
    ds_map_replace(obj_global.temp_data, key, true);

if (place_meeting(x, y, obj_object_saw_horizontal) || place_meeting(x, y, obj_object_saw_vertical) || place_meeting(x, y, obj_hitbox_sawdrone_attack_1) || place_meeting(x, y, obj_hitbox_sawdrone_attack_2))
{
    instance_create_depth(x, y, -10, obj_particle_slash_vertical);
    instance_create_depth(x, y, -10, obj_particle_enemy_dead_3).sprite_index = spr_enemy_turtlesoldier_dead_1;
    instance_create_depth(x, y, -10, obj_particle_enemy_dead_4).sprite_index = spr_enemy_turtlesoldier_dead_2;
    
    repeat (36)
        instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    
    repeat (108)
    {
        if (global.particles)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    }
    
    scr_screenshake();
    instance_destroy();
}

if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound) || place_meeting(x, y, obj_object_waterspout) || place_meeting(x, y, obj_object_collapse) || place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2) || place_meeting(x, y, obj_hitbox_deflect) || place_meeting(x, y, obj_hitbox_counter) || place_meeting(x, y, obj_hitbox_rang))
{
    if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_rang))
    {
        if (place_meeting(x, y, obj_hitbox_spin))
            instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal);
        else
            instance_create_depth(round((obj_hitbox_rang.x + x) / 2), round((obj_hitbox_rang.y + y) / 2), -10, obj_particle_slash_horizontal);
        
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_1).sprite_index = spr_enemy_turtlesoldier_dead_1;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_2).sprite_index = spr_enemy_turtlesoldier_dead_2;
        
        if (drop)
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow);
            
            global.score += 50;
            
            if (global.numbers && global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 50;
        }
        
        if (global.sp < global.sp_max)
            global.sp++;
        
        if (global.numbers)
            instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = 1;
    }
    
    if (place_meeting(x, y, obj_hitbox_doublejump))
    {
        instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical);
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_3).sprite_index = spr_enemy_turtlesoldier_dead_3;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_4).sprite_index = spr_enemy_turtlesoldier_dead_4;
        
        if (drop)
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow);
            
            global.score += 50;
            
            if (global.numbers && global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 50;
        }
        
        if (global.sp < global.sp_max)
            global.sp++;
        
        if (global.numbers)
            instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = 1;
        
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
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_3).sprite_index = spr_enemy_turtlesoldier_dead_3;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_4).sprite_index = spr_enemy_turtlesoldier_dead_4;
        
        if (drop)
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow);
            
            global.score += 50;
            
            if (global.numbers && global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 50;
        }
        
        if (global.sp < global.sp_max)
            global.sp++;
        
        if (global.numbers)
            instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = 1;
        
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
    
    if (place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2) || place_meeting(x, y, obj_hitbox_deflect) || place_meeting(x, y, obj_hitbox_counter))
    {
        no_splat = 1;
        audio_play_sound(snd_mick_kill_4, 1, 0);
        instance_create_depth(x, y, -10, obj_particle_burst);
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_5).sprite_index = spr_enemy_turtlesoldier_dead_5;
        
        if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
            audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0);
        
        if (drop)
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow);
            
            global.score += 50;
            
            if (global.numbers && global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 50;
        }
    }
    
    repeat (36)
        instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    
    repeat (108)
    {
        if (global.particles)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    }
    
    scr_screenshake();
    instance_destroy();
}

if (scared)
{
    if (!attacking)
    {
        if (x < obj_mick.x)
            image_xscale = -1;
        else
            image_xscale = 1;
    }
}

if (instance_exists(obj_mick))
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 1200)
    {
        ready = 1;
        
        if (!scared && !place_meeting(x, y, obj_wall_fake))
        {
            global.turtleseen = 1;
            scr_stopsound_guncop_voice();
            scared_sound = irandom_range(0, 1);
            
            if (scared_sound == snd_background_city_1)
                audio_play_sound(snd_enemy_guncop_scared_voice_1, 1, 0);
            
            if (scared_sound == snd_background_forest_1)
                audio_play_sound(snd_enemy_guncop_scared_voice_2, 1, 0);
            
            scared = 1;
            scared_time = 30;
            image_index = 0;
        }
        
        if (!scared && place_meeting(x, y, obj_wall_fake) && global.infakewall)
        {
            global.turtleseen = 1;
            scr_stopsound_guncop_voice();
            scared_sound = irandom_range(0, 1);
            
            if (scared_sound == snd_background_city_1)
                audio_play_sound(snd_enemy_guncop_scared_voice_1, 1, 0);
            
            if (scared_sound == snd_background_forest_1)
                audio_play_sound(snd_enemy_guncop_scared_voice_2, 1, 0);
            
            scared = 1;
            scared_time = 30;
            image_index = 0;
        }
    }
    else
    {
        ready = 0;
    }
}

if (scared)
    idle = spr_enemy_turtlesoldier_ready;

if (scared_time > 0)
    scared_time--;

if (scared_time > 2)
{
    sprite_index = spr_enemy_turtlesoldier_scared;
    
    if (image_index == 4)
        image_index = 2;
}

if (scared_time == 2)
    image_index = 4;

if (scared_time == 1)
    image_index = 5;

if (scared_time == 0 && !attacking)
    sprite_index = idle;

if (scared && !place_meeting(x, y, obj_wall_fake))
    attack_time--;

if (scared && place_meeting(x, y, obj_wall_fake) && global.infakewall)
    attack_time--;

if (attack_time == 0)
{
    image_index = 0;
    attacking = 1;
    attack_time = 120;
}

if (sprite_index == spr_enemy_turtlesoldier_attack && image_index >= 7)
{
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
            
            if (parry > 0)
                instance_create_depth(obj_mick.x, obj_mick.y, -3, obj_hitbox_counter);
        }
    }
}

if (attacking)
{
    attack_time = 99;
    
    if (image_index == 6 && point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
        audio_play_sound(snd_enemy_turtlesoldier_attack_3, 1, 0);
    
    sprite_index = spr_enemy_turtlesoldier_attack;
    
    if (image_index > 15)
        image_index = 7;
    
    if (x <= obj_mick.x)
        hspd++;
    else
        hspd--;
}

if (hspd > 50)
    hspd--;

if (hspd < -50)
    hspd++;

if (bounce_cool > 0)
    bounce_cool--;

if (place_meeting(x + hspd, y, obj_wall))
{
    while (!place_meeting(x + sign(hspd), y, obj_wall))
        x += sign(hspd);
    
    no_bounce = 0;
    
    if (hspd < 0)
    {
        if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400 && bounce_cool == 0)
        {
            bounce_sound = choose(0, 1);
            
            if (bounce_sound)
                audio_play_sound(snd_enemy_turtlesoldier_attack_1, 1, 0);
            else
                audio_play_sound(snd_enemy_turtlesoldier_attack_2, 1, 0);
        }
        
        bounce_cool = 5;
        x += 50;
        hspd = 50;
        no_bounce = 1;
    }
    
    if (hspd > 0 && !no_bounce)
    {
        if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400 && bounce_cool == 0)
        {
            bounce_sound = choose(0, 1);
            
            if (bounce_sound)
                audio_play_sound(snd_enemy_turtlesoldier_attack_1, 1, 0);
            else
                audio_play_sound(snd_enemy_turtlesoldier_attack_2, 1, 0);
        }
        
        bounce_cool = 5;
        x -= 50;
        hspd = -50;
    }
}

if (place_meeting(x + hspd, y, obj_object_block_spin))
{
    while (!place_meeting(x + sign(hspd), y, obj_object_block_spin))
        x += sign(hspd);
    
    hspd *= 1;
    
    if (vspd < 0)
        x += 20;
    
    if (vspd >= 0)
        x -= 20;
}

if (place_meeting(x + hspd, y, obj_object_block_uni))
{
    while (!place_meeting(x + sign(hspd), y, obj_object_block_uni))
        x += sign(hspd);
    
    hspd *= 1;
    
    if (vspd < 0)
        x += 20;
    
    if (vspd >= 0)
        x -= 20;
}

if (place_meeting(x, y + vspd, obj_wall))
{
    while (!place_meeting(x, y + sign(vspd), obj_wall))
        y += sign(vspd);
    
    vspd = 0;
}

if (place_meeting(x, y + vspd, obj_object_block_groundpound))
{
    while (!place_meeting(x, y + sign(vspd), obj_object_block_groundpound))
        y += sign(vspd);
    
    vspd = 0;
}

if (place_meeting(x, y + vspd, obj_object_block_uni))
{
    while (!place_meeting(x, y + sign(vspd), obj_object_block_uni))
        y += sign(vspd);
    
    vspd = 0;
}

if (place_meeting(x + hspd, y + vspd, obj_wall))
{
    while (!place_meeting(x + sign(hspd), y + sign(vspd), obj_wall))
    {
        x += sign(hspd);
        y += sign(vspd);
    }
    
    hspd = 0;
    vspd = 0;
}

if (place_meeting(x + hspd, y + vspd, obj_object_block_uni))
{
    while (!place_meeting(x + sign(hspd), y + sign(vspd), obj_object_block_uni))
    {
        x += sign(hspd);
        y += sign(vspd);
    }
    
    hspd = 0;
    vspd = 0;
}

if (!place_meeting(x - 2, y, obj_wall) && !place_meeting(x + 2, y, obj_wall) && image_index >= 7 && attacking)
    x += hspd;

if (place_meeting(x, y + 2, obj_wall) || place_meeting(x, y + 2, obj_object_block_groundpound) || place_meeting(x, y + 2, obj_object_block_uni))
    vstate = 0;

if (!place_meeting(x, y + 2, obj_wall) && !place_meeting(x, y + 2, obj_object_block_groundpound) && !place_meeting(x, y + 2, obj_object_block_uni))
    vstate = 1;

if (vstate)
{
    y += vspd;
    vspd += 2;
    
    if (vspd >= 48)
        vspd = 48;
}
else
{
    vspd = 0;
}

if (y > (room_height + 500))
{
    no_splat = 1;
    instance_destroy();
}

if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id);
