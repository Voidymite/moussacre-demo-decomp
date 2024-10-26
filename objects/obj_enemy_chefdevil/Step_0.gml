if (place_meeting(x, y, obj_mick) && !place_meeting(x, y, obj_hitbox_spin) && !place_meeting(x, y, obj_hitbox_doublejump) && !place_meeting(x, y, obj_hitbox_groundpound))
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

if (place_meeting(x, y, obj_hitbox_walt_attack_1) || place_meeting(x, y, obj_hitbox_walt_attack_2))
{
    if (!place_meeting(x, y, obj_wall_shield))
    {
        instance_create_depth(x, y, -10, obj_particle_burst);
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_5).sprite_index = spr_enemy_guncop_dead_5;
        audio_play_sound(snd_object_walt_ice_3, 1, 0);
        no_splat = 1;
        
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
}

if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound) || place_meeting(x, y, obj_object_waterspout) || place_meeting(x, y, obj_object_collapse) || place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2) || place_meeting(x, y, obj_hitbox_deflect) || place_meeting(x, y, obj_hitbox_counter) || place_meeting(x, y, obj_hitbox_rang))
{
    if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_rang))
    {
        if (place_meeting(x, y, obj_hitbox_spin))
            instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal);
        else
            instance_create_depth(round((obj_hitbox_rang.x + x) / 2), round((obj_hitbox_rang.y + y) / 2), -10, obj_particle_slash_horizontal);
        
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
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_3).sprite_index = spr_enemy_guncop_dead_3;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_4).sprite_index = spr_enemy_guncop_dead_4;
        
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
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_3).sprite_index = spr_enemy_guncop_dead_3;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_4).sprite_index = spr_enemy_guncop_dead_4;
        
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
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_5).sprite_index = spr_enemy_guncop_dead_5;
        
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
            scr_stopsound_chefdevil_voice();
            scared_sound = irandom_range(0, 1);
            
            if (scared_sound == snd_background_city_1)
            {
            }
            
            if (scared_sound == snd_background_forest_1)
            {
            }
            
            scared = 1;
            scared_time = 30;
            image_index = 0;
        }
        
        if (!scared && place_meeting(x, y, obj_wall_fake) && global.infakewall)
        {
            scr_stopsound_chefdevil_voice();
            scared_sound = irandom_range(0, 1);
            
            if (scared_sound == snd_background_city_1)
            {
            }
            
            if (scared_sound == snd_background_forest_1)
            {
            }
            
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

if (!ready)
    idle = spr_enemy_chefdevil_ready;
else
    idle = spr_enemy_chefdevil_ready;

if (scared_time > 0)
    scared_time--;

if (scared_time > 2)
{
    sprite_index = spr_enemy_chefdevil_ready;
    
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
    if (ready)
    {
        image_index = 0;
        attacking = 1;
        attack_time = 120;
    }
    else
    {
        attack_time = 1;
    }
}

if (attacking)
{
    sprite_index = spr_enemy_chefdevil_attack;
    
    if (image_index == 10)
    {
    }
    
    if (image_index > 23)
    {
        sprite_index = idle;
        attacking = 0;
    }
    
    if (image_index == 0)
    {
        audio_play_sound(snd_enemy_chefdevil_attack_1, 1, 0);
        audio_play_sound(snd_enemy_chefdevil_attack_voice_1, 1, 0);
    }
    
    if (image_index < 16)
        instance_create_depth((x - (100 * image_xscale)) + irandom_range(-40, 40), y + 64 + irandom_range(-40, 40), -1, obj_particle_dust_big);
    
    if (image_index == 16)
    {
        audio_play_sound(snd_enemy_chefdevil_attack_2, 1, 0);
        
        repeat (3)
            instance_create_depth(x - 100, y - 2, -4, obj_hitbox_chefdevil_attack).dir = image_xscale;
        
        instance_create_depth(x - (100 * image_xscale), y - 64, 10, obj_particle_gunshot);
    }
}

if (hspd > 0)
    hspd--;

if (hspd < 0)
    hspd++;

if (place_meeting(x + hspd, y, obj_wall))
{
    while (!place_meeting(x + sign(hspd), y, obj_wall))
        x += sign(hspd);
    
    hspd = 0;
}

if (place_meeting(x + hspd, y, obj_object_block_spin))
{
    while (!place_meeting(x + sign(hspd), y, obj_object_block_spin))
        x += sign(hspd);
    
    hspd = 0;
}

if (place_meeting(x + hspd, y, obj_object_block_uni))
{
    while (!place_meeting(x + sign(hspd), y, obj_object_block_uni))
        x += sign(hspd);
    
    hspd = 0;
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

if (place_meeting(x + 2, y, obj_wall))
{
    if (image_xscale == 1)
        x += hspd;
    else
        x += 0;
}

if (place_meeting(x - 2, y, obj_wall))
{
    if (image_xscale == -1)
        x += hspd;
    else
        x += 0;
}

if (!place_meeting(x - 2, y, obj_wall) && !place_meeting(x + 2, y, obj_wall))
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
    instance_destroy();
    no_splat = 1;
}

if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id);
