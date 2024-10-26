if (image_xscale == 0.2 && !spawn)
{
    spawn = 1;
    audio_play_sound(snd_enemy_plane_spawn, 1, 0);
}

if (place_meeting(x, y, obj_mick_plane) && image_xscale == 1)
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
}

if (!activated && (obj_mick.x + 1600) >= x)
    activated = 1;

if (activated)
{
    x += spd;
    
    if (image_xscale < 1)
    {
        image_xscale += 0.02;
        image_yscale += 0.02;
    }
    
    if (time == 94)
    {
        sound = choose(0, 1);
        scr_stopsound_rangedplane_voice();
        
        if (sound == snd_background_city_1)
            audio_play_sound(snd_enemy_rangedplane_spawn_voice_1, 1, 0);
        
        if (sound == snd_background_forest_1)
            audio_play_sound(snd_enemy_rangedplane_spawn_voice_2, 1, 0);
    }
    
    if (spd > 48 || time == 0)
        spd--;
    
    if (spd == 48)
        time--;
    
    if (time == 60)
    {
        audio_play_sound(snd_enemy_rangedplane_attack_2, 1, 0);
        sprite_index = spr_enemy_rangedplane_attack;
    }
    
    if (sprite_index == spr_enemy_rangedplane_attack)
    {
        if (image_index >= 16 && !shot)
        {
            shot = 1;
            audio_play_sound(snd_enemy_rangedplane_attack_1, 1, 0);
            instance_create_depth(x, y + 50, -1, obj_particle_gunshot);
            instance_create_depth(x - 200, y + 50, -4, obj_hitbox_rangedplane_attack).vspd = -20;
            instance_create_depth(x - 200, y + 50, -4, obj_hitbox_rangedplane_attack).vspd = 0;
            instance_create_depth(x - 200, y + 50, -4, obj_hitbox_rangedplane_attack).vspd = 20;
        }
        
        if (image_index > 19)
            sprite_index = spr_enemy_rangedplane_done;
    }
    
    if (image_xscale != 1)
        mask_index = spr_none;
    else
        mask_index = spr_enemy_rangedplane_idle;
    
    if (place_meeting(x, y, obj_hitbox_plane_bullet) && image_xscale == 1)
    {
        scr_stopsound_rangedplane_voice();
        audio_play_sound(snd_mick_kill_4, 1, 0);
        audio_play_sound(snd_mick_plane_explode, 1, 0);
        instance_create_depth(x, y, -10, obj_particle_burst);
        instance_create_depth(x, y, -10, obj_particle_rangedplane_dead_1);
        instance_create_depth(x, y, -10, obj_particle_rangedplane_dead_2);
        
        if (drop)
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow);
            
            global.score += 50;
            
            if (global.numbers && global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 50;
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
        ds_map_replace(obj_global.temp_data, key, true);
    }
    
    if (x < (obj_mick.x - 1000))
    {
        no_splat = 1;
        instance_destroy();
    }
}
