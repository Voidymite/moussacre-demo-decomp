if (!inv)
{
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
    
    if (can_parry > 0)
        can_parry--;
    
    if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound) || place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2) || place_meeting(x, y, obj_hitbox_deflect) || place_meeting(x, y, obj_hitbox_counter) || place_meeting(x, y, obj_hitbox_rang))
    {
        if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_rang))
        {
            if (!taunt)
            {
                if (place_meeting(x, y, obj_hitbox_spin))
                    instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal);
                else
                    instance_create_depth(round((obj_hitbox_rang.x + x) / 2), round((obj_hitbox_rang.y + y) / 2), -10, obj_particle_slash_horizontal);
                
                score_up = 500;
                color_num = 5;
                hp--;
                
                if (global.numbers)
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -1;
                
                scr_screenshake();
            }
            else
            {
                if (place_meeting(x, y, obj_hitbox_spin))
                    instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal).image_yscale = 4;
                else
                    instance_create_depth(round((obj_hitbox_rang.x + x) / 2), round((obj_hitbox_rang.y + y) / 2), -10, obj_particle_slash_horizontal).image_yscale = 4;
                
                audio_play_sound(snd_boss_hurt_1, 1, 0);
                scr_stopsound_os_voice();
                sound = irandom_range(0, 2);
                
                if (sound == snd_background_city_1)
                    audio_play_sound(snd_boss_os_hurt_voice_1, 1, 0);
                
                if (sound == snd_background_forest_1)
                    audio_play_sound(snd_boss_os_hurt_voice_2, 1, 0);
                
                if (sound == snd_background_rain_1)
                    audio_play_sound(snd_boss_os_hurt_voice_3, 1, 0);
                
                score_up = 3000;
                color_num = 30;
                hp -= 6;
                
                if (global.numbers)
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -6;
                
                scr_screenshake_giant();
                
                if (phase >= 2)
                    sword = choose(0, 1);
                
                if (!sword)
                    moves = 4;
                else
                    moves = 7;
                
                sprite_index = spr_boss_os_hurt;
                image_speed = 0;
                image_index = choose(0, 2);
                
                if (x < obj_mick.x)
                    facing = -1;
                else
                    facing = 1;
                
                turnable = 1;
                hspd = 60 * facing;
                int_time = 30;
                state = 1;
                dm *= -1;
            }
            
            audio_play_sound(snd_mick_kill_3, 1, 0);
            
            if (global.sp < global.sp_max)
                global.sp++;
            
            if (global.numbers)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = 1;
        }
        
        if (place_meeting(x, y, obj_hitbox_doublejump))
        {
            if (!taunt)
            {
                instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical);
                score_up = 500;
                color_num = 5;
                hp--;
                
                if (global.numbers)
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -1;
                
                scr_screenshake();
            }
            else
            {
                instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical).image_yscale = 4;
                audio_play_sound(snd_boss_hurt_1, 1, 0);
                scr_stopsound_os_voice();
                sound = irandom_range(0, 2);
                
                if (sound == snd_background_city_1)
                    audio_play_sound(snd_boss_os_hurt_voice_1, 1, 0);
                
                if (sound == snd_background_forest_1)
                    audio_play_sound(snd_boss_os_hurt_voice_2, 1, 0);
                
                if (sound == snd_background_rain_1)
                    audio_play_sound(snd_boss_os_hurt_voice_3, 1, 0);
                
                score_up = 3000;
                color_num = 30;
                hp -= 6;
                
                if (global.numbers)
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -6;
                
                scr_screenshake_giant();
                
                if (phase >= 2)
                    sword = choose(0, 1);
                
                if (!sword)
                    moves = 4;
                else
                    moves = 7;
                
                sprite_index = spr_boss_os_hurt;
                image_speed = 0;
                image_index = choose(0, 2);
                
                if (x < obj_mick.x)
                    facing = -1;
                else
                    facing = 1;
                
                turnable = 1;
                hspd = 60 * facing;
                int_time = 30;
                state = 1;
                dm *= -1;
            }
            
            audio_play_sound(snd_mick_kill_3, 1, 0);
            
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
            if (!taunt)
            {
                instance_create_depth(round((obj_hitbox_groundpound.x + x) / 2), round((obj_hitbox_groundpound.y + y) / 2), -10, obj_particle_slash_vertical);
                score_up = 500;
                color_num = 5;
                hp--;
                
                if (global.numbers)
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -1;
                
                scr_screenshake();
            }
            else
            {
                instance_create_depth(round((obj_hitbox_groundpound.x + x) / 2), round((obj_hitbox_groundpound.y + y) / 2), -10, obj_particle_slash_vertical).image_yscale = 4;
                audio_play_sound(snd_boss_hurt_1, 1, 0);
                scr_stopsound_os_voice();
                sound = irandom_range(0, 2);
                
                if (sound == snd_background_city_1)
                    audio_play_sound(snd_boss_os_hurt_voice_1, 1, 0);
                
                if (sound == snd_background_forest_1)
                    audio_play_sound(snd_boss_os_hurt_voice_2, 1, 0);
                
                if (sound == snd_background_rain_1)
                    audio_play_sound(snd_boss_os_hurt_voice_3, 1, 0);
                
                score_up = 3000;
                color_num = 30;
                hp -= 6;
                
                if (global.numbers)
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -6;
                
                scr_screenshake_giant();
                
                if (phase >= 2)
                    sword = choose(0, 1);
                
                if (!sword)
                    moves = 4;
                else
                    moves = 7;
                
                sprite_index = spr_boss_os_hurt;
                image_speed = 0;
                image_index = choose(0, 2);
                
                if (x < obj_mick.x)
                    facing = -1;
                else
                    facing = 1;
                
                turnable = 1;
                hspd = 60 * facing;
                int_time = 30;
                state = 1;
                dm *= -1;
            }
            
            audio_play_sound(snd_mick_kill_3, 1, 0);
            
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
            if (!taunt)
            {
                instance_create_depth(x, y, -10, obj_particle_burst);
                
                if (place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_deflect) || place_meeting(x, y, obj_hitbox_counter))
                {
                    score_up = 500;
                    color_num = 5;
                    hp--;
                    
                    if (global.numbers)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -1;
                }
                
                if (place_meeting(x, y, obj_hitbox_bomb_2))
                {
                    score_up = 1000;
                    color_num = 10;
                    hp -= 2;
                    
                    if (global.numbers)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -2;
                }
                
                if (place_meeting(x, y, obj_hitbox_hook_3))
                {
                    score_up = 1500;
                    color_num = 15;
                    hp -= 3;
                    
                    if (global.numbers)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -3;
                }
                
                scr_screenshake();
            }
            else
            {
                instance_create_depth(x, y, -10, obj_particle_burst).image_yscale = 3;
                audio_play_sound(snd_boss_hurt_1, 1, 0);
                scr_stopsound_os_voice();
                sound = irandom_range(0, 2);
                
                if (sound == snd_background_city_1)
                    audio_play_sound(snd_boss_os_hurt_voice_1, 1, 0);
                
                if (sound == snd_background_forest_1)
                    audio_play_sound(snd_boss_os_hurt_voice_2, 1, 0);
                
                if (sound == snd_background_rain_1)
                    audio_play_sound(snd_boss_os_hurt_voice_3, 1, 0);
                
                if (place_meeting(x, y, obj_hitbox_shoot))
                {
                    score_up = 3000;
                    color_num = 30;
                    hp -= 6;
                    
                    if (global.numbers)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -6;
                    
                    if (phase >= 2)
                        sword = choose(0, 1);
                    
                    if (!sword)
                        moves = 4;
                    else
                        moves = 7;
                    
                    turnable = 1;
                    sprite_index = spr_boss_os_hurt;
                    image_speed = 0;
                    image_index = choose(0, 2);
                    int_time = 30;
                    state = 1;
                    dm *= -1;
                }
                
                if (place_meeting(x, y, obj_hitbox_bomb_2))
                {
                    score_up = 3500;
                    color_num = 35;
                    hp -= 7;
                    
                    if (global.numbers)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -7;
                    
                    if (phase >= 2)
                        sword = choose(0, 1);
                    
                    if (!sword)
                        moves = 4;
                    else
                        moves = 7;
                    
                    turnable = 1;
                    sprite_index = spr_boss_os_hurt;
                    image_speed = 0;
                    image_index = choose(0, 2);
                    int_time = 30;
                    state = 1;
                    dm *= -1;
                }
                
                if (place_meeting(x, y, obj_hitbox_hook_3))
                {
                    score_up = 4000;
                    color_num = 40;
                    hp -= 8;
                    
                    if (global.numbers)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub_4).num = -8;
                    
                    if (phase >= 2)
                        sword = choose(0, 1);
                    
                    if (!sword)
                        moves = 4;
                    else
                        moves = 7;
                    
                    turnable = 1;
                    sprite_index = spr_boss_os_hurt;
                    image_speed = 0;
                    image_index = choose(0, 2);
                    int_time = 30;
                    state = 1;
                    dm *= -1;
                }
                
                scr_screenshake_giant();
            }
            
            audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0);
            audio_play_sound(snd_mick_kill_4, 1, 0);
        }
        
        repeat (18)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
        
        repeat (54)
        {
            if (global.particles)
                instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
        }
        
        color_pic = choose(7, 8);
        
        if (global.boss_progress >= hp)
        {
            global.score += (score_up / 2);
            
            if (global.numbers && global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = score_up / 2;
            
            repeat (color_num)
                instance_create_depth(x, y, -2, obj_item_gem_follow);
        }
        
        inv = 30;
        
        with (obj_boss_ui)
        {
            image_yscale = 1.5;
            shake = 25;
        }
    }
}

if (state == 0 && move == 5)
{
    taunt = 1;
}
else
{
    taunt = 0;
    image_speed = 1;
}

if (instance_exists(obj_mick))
{
    if (obj_mick.x < -2000)
        inv = 1000;
}

if (inv > 0)
    inv--;

if (hp <= 0)
{
    global.color += instance_number(obj_item_gem_follow);
    global.score += (instance_number(obj_item_gem_follow) * 10);
    obj_mick.x = -10000;
    obj_mick.y = -10000;
    room_goto(rm_finisher);
    
    if (global.hp <= 0)
        global.hp = 1;
    
    audio_stop_sound(snd_song_killed);
    instance_destroy(obj_transition_death);
    instance_destroy(obj_transition_death_blot_1);
}

if (instance_exists(obj_item_health_bounce) && global.boss_progress >= hp)
{
    with (obj_item_health_bounce)
    {
        if (!drop)
            drop = 1;
    }
}

if (move == 0 && time > 0 && !vstate)
    time--;

if (time == 0)
{
    turnable = 0;
    time = max_time;
    stop = 0;
    
    if (state == 0)
    {
        state = 1;
        stop = 1;
    }
    
    if (state == 1 && !stop)
        state = 0;
    
    if (state == 0)
    {
        if (!sword)
        {
            if (x <= 600)
                move = choose(2, 4);
            
            if (x >= 3496)
                move = choose(1, 3);
            
            if (x > 600 && x < 3496)
                move = irandom_range(1, 4);
            
            if (move == 1 || move == 2)
            {
                int_time = 15;
                instance_create_depth(x + (image_xscale * 60), y + 50, 10, obj_particle_dust_jump).image_angle = 90;
            }
            
            if (move == 3 || move == 4)
                int_time = 300;
        }
        else if (moves >= 3)
        {
            move = 6;
        }
        
        if (moves == 0)
        {
            move = 5;
            sprite_index = spr_boss_os_taunt;
            image_index = 0;
            audio_play_sound(snd_boss_os_taunt_spin_1, 1, 0);
        }
        
        if (move == 5)
        {
            if (instance_exists(obj_boss_os_drone))
            {
                with (obj_boss_os_drone)
                {
                    if (atk > 60)
                        atk += 180;
                }
            }
            
            int_time = 180;
            
            if (phase >= 2)
                sword = choose(0, 1);
        }
        
        if (move == 6)
            int_time = 1;
    }
    
    if (state == 1)
    {
        if (!sword)
        {
            if (phase < 3)
            {
                move = irandom_range(1, 4);
            }
            else if (moves > 1 && moves != 5)
            {
                move = irandom_range(1, 4);
            }
            else
            {
                if (dm == 1)
                    move = 10;
                
                if (dm == -1 && moves != 5)
                    move = irandom_range(1, 4);
            }
            
            if (moves == 5)
            {
                move = 12;
                inv = 220;
                int_time = 220;
                audio_play_sound(snd_boss_os_phase_charge_1, 1, 0);
                sprite_index = spr_boss_os_phaseshift_2;
                image_index = 0;
            }
        }
        else
        {
            if (moves == 8)
            {
                move = 11;
                inv = 190;
                int_time = 190;
                sprite_index = spr_boss_os_phaseshift_1;
                image_index = 0;
            }
            
            if (moves == 7)
            {
                move = 5;
                sprite_index = spr_boss_os_summon_sword;
                audio_play_sound(snd_boss_os_summon_load_1, 1, 0);
                image_index = 0;
            }
            
            if (moves <= 6 && moves >= 4)
                move = irandom_range(6, 8);
            
            if (moves == 3)
            {
                move = 9;
                sprite_index = spr_boss_os_toss_sword;
                image_index = 0;
            }
            
            if (phase == 2 && moves <= 2)
                move = irandom_range(1, 4);
            
            if (phase == 3)
            {
                if (moves == 2)
                    move = irandom_range(1, 4);
                
                if (moves == 1)
                {
                    if (dm == 1)
                        move = 10;
                    
                    if (dm == -1)
                        move = irandom_range(1, 4);
                }
            }
        }
        
        if (move == 1 || move == 4)
        {
            if (move == 1)
            {
                sparkle_size = 0;
                sparkle_grow = 0.18;
                sparkle_angle = 0;
                shine = 0;
                int_time = 200;
                turnable = 1;
                
                if (phase == 1)
                    sprite_index = spr_boss_os_shoot_1;
                else
                    sprite_index = spr_boss_os_shoot_2;
                
                image_index = 0;
            }
            else
            {
                int_time = 60;
                sprite_index = spr_boss_os_drone;
                image_index = 0;
            }
            
            if (move == 4)
            {
                if (phase == 1 && instance_exists(obj_boss_os_drone))
                {
                    move = 1;
                    sparkle_size = 0;
                    sparkle_grow = 0.18;
                    sparkle_angle = 0;
                    shine = 0;
                    int_time = 200;
                    turnable = 1;
                    
                    if (phase == 1)
                        sprite_index = spr_boss_os_shoot_1;
                    else
                        sprite_index = spr_boss_os_shoot_2;
                    
                    image_index = 0;
                }
                
                if (phase >= 2 && instance_number(obj_boss_os_drone) >= 2)
                {
                    move = 1;
                    sparkle_size = 0;
                    sparkle_grow = 0.18;
                    sparkle_angle = 0;
                    shine = 0;
                    int_time = 200;
                    turnable = 1;
                    
                    if (phase == 1)
                        sprite_index = spr_boss_os_shoot_1;
                    else
                        sprite_index = spr_boss_os_shoot_2;
                    
                    image_index = 0;
                }
            }
        }
        
        if (move == 2)
        {
            audio_play_sound(snd_boss_os_dash_charge_1, 1, 0);
            int_time = 340;
            sprite_index = spr_boss_os_dash;
            image_index = 0;
        }
        
        if (move == 3 || move == 5 || move == 8 || move == 9)
        {
            if (move != 8)
            {
                int_time = 620;
                
                if (move == 3)
                {
                    sprite_index = spr_boss_os_jump;
                    image_index = 0;
                }
            }
            else
            {
                int_time = 610;
                
                if (move == 8)
                {
                    sparkle_size = 0;
                    sparkle_grow = 0.2;
                    sparkle_angle = 0;
                    shine = 0;
                    sprite_index = spr_boss_os_jump;
                    image_index = 0;
                }
            }
            
            if (move == 9)
                turnable = 1;
        }
        
        if (move == 6)
        {
            int_time = 175;
            sparkle_size = 0;
            sparkle_grow = 0.2;
            sparkle_angle = 0;
            shine = 0;
            sprite_index = spr_boss_os_sword_spin;
            image_index = 0;
        }
        
        if (move == 7 || move == 10)
        {
            int_time = 1620;
            sparkle_size = 0;
            sparkle_grow = 0.2;
            sparkle_angle = 0;
            shine = 0;
            sprite_index = spr_boss_os_jump;
            image_index = 0;
        }
        
        moves--;
    }
}

if (moves == 0 && state == 0 && int_time == 1)
{
    if (phase == 1)
        moves = 4;
    
    if (phase >= 2)
    {
        if (sword)
        {
            move = 5;
            moves = 7;
            sprite_index = spr_boss_os_summon_sword;
            image_index = 0;
        }
        else
        {
            moves = 4;
        }
    }
    
    if (phase == 3)
        dm *= -1;
}

image_time--;

if (image_time == 0)
{
    if (sprite_index == spr_boss_os_sword_spin)
        image_time = 1;
    else
        image_time = 3;
    
    if (imaging)
    {
        if (image_alpha == 1)
            instance_create_depth(x, y, depth + 1, obj_afterimage_os);
    }
}

if (move > 0)
    int_time--;

if (state == 0)
{
    if (move == 1)
    {
        if (int_time == 14)
            audio_play_sound(snd_mick_dash_1, 1, 0);
        
        hspd = -roll;
        image_xscale = 1;
        sprite_index = spr_boss_os_roll;
    }
    
    if (move == 2)
    {
        if (int_time == 14)
            audio_play_sound(snd_mick_dash_1, 1, 0);
        
        hspd = roll;
        image_xscale = -1;
        sprite_index = spr_boss_os_roll;
    }
    
    if (move == 3)
    {
        if (int_time == 299)
        {
            audio_play_sound(snd_mick_jump_4, 1, 0);
            sound = irandom_range(0, 5);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_jump_voice_1, 1, 0);
            
            if (sound == snd_background_forest_1)
                audio_play_sound(snd_boss_os_jump_voice_2, 1, 0);
            
            vspd = -leap2;
            y -= 2;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
        }
        
        if (!vstate && int_time < 280)
            int_time = 0;
        
        hspd = -leap;
        sprite_index = spr_boss_os_leap;
    }
    
    if (move == 4)
    {
        if (int_time == 299)
        {
            audio_play_sound(snd_mick_jump_4, 1, 0);
            sound = irandom_range(0, 5);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_jump_voice_1, 1, 0);
            
            if (sound == snd_background_forest_1)
                audio_play_sound(snd_boss_os_jump_voice_2, 1, 0);
            
            vspd = -leap2;
            y -= 2;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
        }
        
        if (!vstate && int_time < 280)
            int_time = 0;
        
        hspd = leap;
        sprite_index = spr_boss_os_leap;
    }
}

if (state == 1)
{
    if (move == 1)
    {
        if (int_time == 180)
            audio_play_sound(snd_boss_os_shot_charge_1, 1, 0);
        
        if (int_time <= 170)
        {
            sparkle_size += sparkle_grow;
            sparkle_grow -= 0.01;
            sparkle_angle += 8;
        }
        
        if (int_time > 140)
        {
            if (image_index > 11 && image_index < 13)
                image_index = 8;
        }
        
        if (int_time == 140)
        {
            image_index = 12;
            
            if (phase == 0)
                audio_play_sound(snd_boss_os_shot_shot_1, 1, 0);
            else
                audio_play_sound(snd_boss_os_shot_shot_2, 1, 0);
        }
        
        if (int_time == 140 && phase == 1)
        {
            instance_create_depth(x + (130 * -image_xscale), y + 20, -1, obj_hitbox_os_shot_1);
            instance_create_depth(x + (130 * -image_xscale), y + 20, -1, obj_particle_os_shot_1).size = 2;
            
            repeat (36)
                instance_create_depth(x + (130 * -image_xscale), y + 20, 1, obj_particle_os_shot_2);
            
            repeat (108)
            {
                if (global.particles)
                    instance_create_depth(x + (130 * -image_xscale), y + 20, 1, obj_particle_os_shot_2);
            }
        }
        
        if (int_time <= 140 && int_time > 125 && phase >= 2)
        {
            sparkle_grow -= 0.01;
            instance_create_depth(x + (130 * -image_xscale), y + 20, -1, obj_hitbox_os_shot_2);
            instance_create_depth(x + (130 * -image_xscale), y + 20, -1, obj_particle_os_shot_1).size = 2;
            
            if (int_time == 140)
            {
                repeat (36)
                    instance_create_depth(x + (130 * -image_xscale), y + 20, 1, obj_particle_os_shot_2);
                
                repeat (108)
                {
                    if (global.particles)
                        instance_create_depth(x + (130 * -image_xscale), y + 20, 1, obj_particle_os_shot_2);
                }
            }
            
            if (image_index > 14 && image_index < 16)
                image_index = 12;
        }
        
        if (int_time == 125 && phase >= 2)
            image_index = 16;
        
        if (image_index > 23 && phase == 1)
            int_time = 0;
        
        if (image_index > 26 && phase >= 2)
            int_time = 0;
    }
    
    if (move == 2)
    {
        if (int_time > 300)
        {
            if (image_index > 6 && image_index < 8)
                image_index = 4;
        }
        
        if (int_time == 300)
        {
            sound = irandom_range(0, 2);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_attack_voice_4, 1, 0);
            
            audio_play_sound(snd_boss_os_dash_dash_1, 1, 0);
            instance_create_depth(x - (image_xscale * 60), y + 50, 10, obj_particle_dust_jump).image_angle = 90;
            image_index = 8;
            scr_screenshake();
            shake = 10;
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5, 0.5);
        }
        
        if (int_time <= 300 && int_time > 100)
        {
            if (image_index > 11 && image_index < 13)
                image_index = 9;
            
            hspd = dash * -image_xscale;
            
            if (image_xscale == 1 && x <= obj_mick.x)
            {
                audio_play_sound(snd_boss_os_dash_screech_1, 1, 0);
                int_time = 20;
                image_index = 13;
            }
            
            if (image_xscale == -1 && x >= obj_mick.x)
            {
                audio_play_sound(snd_boss_os_dash_screech_1, 1, 0);
                int_time = 20;
                image_index = 13;
            }
        }
        
        if (int_time <= 100)
        {
            if (hspd > 0)
                hspd -= 5;
            
            if (hspd < 0)
                hspd += 5;
            
            if (image_index > 21)
                int_time = 0;
        }
        
        if (place_meeting(x + hspd, y, obj_wall))
        {
            int_time = 20;
            image_index = 13;
        }
        
        fire--;
        
        if (fire == 1)
        {
            if (int_time <= 300 && int_time > 100)
            {
                if (phase >= 2)
                    instance_create_depth(x, 2303, -1, obj_hitbox_os_dash);
                
                instance_create_depth(x - (80 * image_xscale), y + 40, 10, obj_particle_dust_burst).image_xscale = -image_xscale;
            }
            
            fire = 3;
        }
    }
    else
    {
        fire = 3;
    }
    
    if (move == 3)
    {
        if (int_time > 599)
        {
            if (image_index > 4 && image_index < 6)
                image_index = 2;
        }
        
        if (int_time == 599)
        {
            audio_play_sound(snd_mick_jump_4, 1, 0);
            y -= 2;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
            image_index = 6;
            hand = 1;
        }
        
        if (int_time <= 599 && int_time > 595)
        {
            if (image_index > 8)
                image_index = 6;
        }
        
        if (int_time <= 599 && int_time > 469)
        {
            if (x <= 300)
                x = 300;
            
            if (x >= 3796)
                x = 3796;
        }
        
        if (int_time <= 599 && int_time > 569)
        {
            if (obj_mick.x >= -2000)
            {
                x += ((obj_mick.x - x) * 0.15);
                y += ((obj_mick.y - y - 1000) * 0.15);
            }
            else
            {
                x += (((room_width / 2) - x) * 0.15);
                y += ((2200 - y - 1000) * 0.15);
            }
            
            if (image_index > 2)
                image_index = 0;
        }
        
        if (int_time == 595)
        {
            audio_play_sound(snd_boss_os_fly_copter_1, 1, 1);
            sprite_index = spr_boss_os_fly;
            image_index = 0;
        }
        
        if (int_time <= 569 && int_time > 469)
        {
            if (obj_mick.x >= -2000)
            {
                x += ((obj_mick.x - x) * 0.05);
                y += ((obj_mick.y - y - 1000) * 0.05);
            }
            else
            {
                x += (((room_width / 2) - x) * 0.05);
                y += ((2200 - y - 1000) * 0.05);
            }
            
            if (image_index > 2 && image_index < 4)
                image_index = 0;
            
            if (image_index > 5 && image_index < 7)
                image_index = 0;
            
            if (image_index > 8 && image_index < 10)
                image_index = 0;
        }
        
        if (int_time == 549 || int_time == 529 || int_time == 509 || int_time == 489)
        {
            stop = 0;
            
            if (hand == -1)
            {
                hand = 1;
                stop = 1;
            }
            
            if (hand == 1 && !stop)
                hand = -1;
            
            instance_create_depth(x + (hand * 60), y, -1, obj_hitbox_os_fly_1);
            sound = choose(0, 1);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_fly_shot_1, 1, 0);
            else
                audio_play_sound(snd_boss_os_fly_shot_2, 1, 0);
            
            if (hand == -1)
                image_index = 4;
            else
                image_index = 7;
        }
        
        if (phase >= 2)
        {
            if (int_time == 539 || int_time == 519 || int_time == 499 || int_time == 479)
            {
                stop = 0;
                
                if (hand == -1)
                {
                    hand = 1;
                    stop = 1;
                }
                
                if (hand == 1 && !stop)
                    hand = -1;
                
                instance_create_depth(x + (hand * 60), y, -1, obj_hitbox_os_fly_1);
                sound = choose(0, 1);
                
                if (sound == snd_background_city_1)
                    audio_play_sound(snd_boss_os_fly_shot_1, 1, 0);
                else
                    audio_play_sound(snd_boss_os_fly_shot_2, 1, 0);
                
                if (hand == -1)
                    image_index = 4;
                else
                    image_index = 7;
            }
        }
        
        if (int_time == 469)
        {
            audio_stop_sound(snd_boss_os_fly_copter_1);
            audio_play_sound(snd_boss_os_fly_dive_1, 1, 0);
            sound = irandom_range(0, 8);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_attack_voice_1, 1, 0);
            
            if (sound == snd_background_forest_1)
                audio_play_sound(snd_boss_os_attack_voice_2, 1, 0);
            
            if (sound == snd_background_rain_1)
                audio_play_sound(snd_boss_os_attack_voice_3, 1, 0);
            
            image_index = 10;
            instance_create_depth(x, y - 80, 10, obj_particle_dust_jump).image_yscale = -1;
        }
        
        if (int_time > 469)
            vspd = 0;
        else
            vspd = 60;
        
        if (int_time < 550 && int_time > 20)
        {
            if (image_index > 13 && image_index < 15)
                image_index = 12;
        }
        
        if (!vstate && int_time < 550 && int_time > 20)
        {
            int_time = 20;
            
            if (int_time == 20)
            {
                audio_play_sound(snd_boss_os_fly_dive_2, 1, 0);
                scr_screenshake();
                shake = 10;
                
                if (global.rumble)
                    gamepad_set_vibration(0, 0.5, 0.5);
                
                if (phase >= 2)
                {
                    instance_create_depth(x, 2303, -1, obj_hitbox_os_fly_2);
                    instance_create_depth(x, 2303, -1, obj_hitbox_os_fly_2).dir = -1;
                }
            }
        }
        
        if (int_time > 2 && int_time <= 20)
            image_index = 15;
        
        if (int_time == 2)
            image_index = 16;
        
        if (int_time == 1)
            image_index = 17;
    }
    
    if (move == 4)
    {
        if (image_index > 22)
            int_time = 0;
        
        if (int_time == 25)
        {
            audio_play_sound(snd_boss_os_drone_summon_1, 1, 0);
            sound = irandom_range(0, 3);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_taunt_voice_1, 1, 0);
            
            if (phase == 1)
                instance_create_depth(x, y - 100, -1, obj_boss_os_drone).dir = image_xscale;
            
            if (phase >= 2)
            {
                repeat (2 - instance_number(obj_boss_os_drone))
                    instance_create_depth(x, y - 100, -1, obj_boss_os_drone).dir = image_xscale;
            }
        }
    }
    
    if (move == 5)
    {
        if (image_index >= 33 && image_index <= 33.5)
            audio_play_sound(snd_boss_os_summon_pose_1, 1, 0);
        
        if (int_time >= 150)
        {
            if (image_index > 23 && image_index < 25)
                image_index = 21;
        }
        
        if (int_time == 590)
        {
            audio_play_sound(snd_boss_os_summon_summon_1, 1, 0);
            audio_play_sound(snd_mick_shoot_1, 1, 0);
            instance_create_depth(x, y - 400, -1, obj_hitbox_os_summon_sword);
            instance_create_depth(x + (image_xscale * 50), y - 100, -1, obj_particle_gunshot).sprite_index = spr_particle_gunshot_blackwhite;
            scr_screenshake();
            shake = 10;
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5, 0.5);
        }
        
        if (place_meeting(x, y, obj_hitbox_os_summon_sword))
        {
            audio_play_sound(snd_boss_os_summon_grab_1, 1, 0);
            int_time = 150;
            instance_destroy(obj_hitbox_os_summon_sword);
            image_index = 25;
        }
        
        if (int_time <= 150)
        {
            if (image_index > 43)
                int_time = 0;
        }
    }
    
    if (move == 6)
    {
        if (int_time > 129)
        {
            sparkle_size += sparkle_grow;
            sparkle_grow -= 0.02;
            sparkle_angle += 8;
            
            if (image_index > 10 && image_index < 12)
                image_index = 8;
        }
        
        if (image_index > 26)
            int_time = 0;
        
        if (int_time == 115)
            image_index = 17;
        
        if (int_time == 129)
        {
            audio_play_sound(snd_boss_os_sword_spin_1, 1, 0);
            sound = irandom_range(0, 8);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_attack_voice_1, 1, 0);
            
            if (sound == snd_background_forest_1)
                audio_play_sound(snd_boss_os_attack_voice_2, 1, 0);
            
            if (sound == snd_background_rain_1)
                audio_play_sound(snd_boss_os_attack_voice_3, 1, 0);
            
            instance_create_depth(x - (image_xscale * 60), y + 50, 10, obj_particle_dust_jump).image_angle = 90;
            imaging = 1;
            scr_screenshake();
            shake = 10;
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5, 0.5);
        }
        
        if (int_time <= 129 && int_time > 115)
        {
            if (int_time == 129)
                image_index = 12;
            
            if (image_index > 15 && image_index < 17)
                image_index = 13;
            
            hspd = round(dash * 1.75) * -image_xscale;
            instance_create_depth(x, y + 100, -1, obj_hitbox_os_attack_8);
        }
        
        if (int_time <= 115)
        {
            hspd = 0;
            imaging = 0;
        }
    }
    
    if (move == 7)
    {
        if (int_time > 1599)
        {
            if (image_index > 4 && image_index < 6)
                image_index = 2;
        }
        
        if (int_time == 1599)
        {
            audio_play_sound(snd_mick_jump_4, 1, 0);
            y -= 2;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
            image_index = 6;
            hand = 1;
        }
        
        if (int_time <= 1599 && int_time > 1589)
        {
            if (image_index > 8)
                image_index = 6;
        }
        
        if (int_time <= 1599 && int_time > 1499)
        {
            sparkle_size += sparkle_grow;
            sparkle_grow -= 0.02;
            sparkle_angle += 8;
        }
        
        if (int_time == 1589)
        {
            sprite_index = spr_boss_os_sword_doublejump;
            image_index = 0;
        }
        
        if (int_time <= 1589 && int_time > 1579)
        {
            if (image_index > 2 && image_index < 4)
                image_index = 0;
        }
        
        if (int_time == 1579)
        {
            audio_play_sound(snd_boss_os_sword_jump_spin_1, 1, 1);
            image_index = 4;
        }
        
        if (int_time <= 1579 && int_time > 600)
        {
            if (image_index > 10 && image_index < 12)
                image_index = 8;
        }
        
        if (int_time == 600)
            image_index = 12;
        
        if (int_time <= 600)
        {
            if (image_index > 15)
                image_index = 12;
        }
        
        if (int_time == 599)
        {
            y -= 2;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
            
            if (x <= 300)
                x = 300;
            
            if (x >= 3796)
                x = 3796;
        }
        
        if (int_time <= 1599 && int_time > 1589)
            vspd = -leap * 2;
        
        if (int_time <= 1589 && int_time > 600)
            vspd = 0;
        
        if (int_time == 1570)
        {
            audio_play_sound(snd_boss_os_sword_jump_spin_2, 1, 0);
            sound = irandom_range(0, 8);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_attack_voice_1, 1, 0);
            
            if (sound == snd_background_forest_1)
                audio_play_sound(snd_boss_os_attack_voice_2, 1, 0);
            
            if (sound == snd_background_rain_1)
                audio_play_sound(snd_boss_os_attack_voice_3, 1, 0);
            
            direction = point_direction(x, y, obj_mick.x, obj_mick.y);
            imaging = 1;
        }
        
        if (int_time <= 1569 && int_time > 600)
        {
            x += lengthdir_x(dash, direction);
            y += lengthdir_y(dash, direction);
            
            if (place_meeting(x, y, obj_wall) || y <= 0)
            {
                int_time = 600;
                audio_play_sound(snd_boss_os_sword_jump_spin_3, 1, 1);
                audio_stop_sound(snd_boss_os_sword_jump_spin_1);
                
                if (place_meeting(x, y, obj_wall))
                {
                    audio_play_sound(snd_boss_os_sword_jump_hit_1, 1, 0);
                    scr_screenshake();
                    shake = 10;
                    
                    if (global.rumble)
                        gamepad_set_vibration(0, 0.5, 0.5);
                }
            }
        }
        
        if (int_time == 600)
        {
            if (x <= 300)
                x = 300;
            
            if (x >= 3696)
                x = 3696;
            
            if (y >= 2000)
                y = 2100;
            
            vspd = -leap * 2;
        }
        
        if (int_time <= 590)
        {
            if (y >= 2100)
            {
                int_time = 0;
                imaging = 0;
            }
        }
    }
    
    if (move == 8)
    {
        if (int_time > 599)
        {
            if (image_index > 4 && image_index < 6)
                image_index = 2;
        }
        
        if (int_time == 595)
        {
            sprite_index = spr_boss_os_sword_dive;
            image_index = 0;
        }
        
        if (int_time <= 595 && int_time > 569)
        {
            sparkle_size += sparkle_grow;
            sparkle_grow -= 0.02;
            sparkle_angle += 8;
            
            if (image_index > 1 && image_index < 3)
                image_index = 0;
        }
        
        if (int_time == 599)
        {
            audio_play_sound(snd_mick_jump_4, 1, 0);
            y -= 2;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
            image_index = 6;
        }
        
        if (int_time <= 599 && int_time > 469)
        {
            if (x <= 300)
                x = 300;
            
            if (x >= 3796)
                x = 3796;
        }
        
        if (int_time <= 599 && int_time > 589)
        {
            if (obj_mick.x > -2000)
            {
                x += ((obj_mick.x - x) * 0.25);
                y += ((obj_mick.y - y - 1000) * 0.25);
            }
            else
            {
                x += (((room_width / 2) - x) * 0.25);
                y += ((2200 - y - 1000) * 0.25);
            }
            
            if (image_index > 1 && image_index < 3)
                image_index = 0;
        }
        
        if (int_time == 569)
        {
            audio_play_sound(snd_boss_os_fly_dive_1, 1, 0);
            audio_play_sound(snd_boss_os_fly_dive_2, 1, 0);
            sound = irandom_range(0, 8);
            
            if (sound == snd_background_city_1)
                audio_play_sound(snd_boss_os_attack_voice_1, 1, 0);
            
            if (sound == snd_background_forest_1)
                audio_play_sound(snd_boss_os_attack_voice_2, 1, 0);
            
            if (sound == snd_background_rain_1)
                audio_play_sound(snd_boss_os_attack_voice_3, 1, 0);
            
            image_index = 3;
            instance_create_depth(x, y - 80, 10, obj_particle_dust_jump).image_yscale = -1;
            imaging = 1;
        }
        
        if (int_time > 569)
        {
            vspd = 0;
        }
        else
        {
            vspd = 100;
            
            if (image_index > 6)
                image_index = 5;
        }
        
        if (!vstate && int_time > 20 && int_time < 569)
        {
            scr_screenshake();
            shake = 10;
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5, 0.5);
            
            audio_play_sound(snd_boss_os_toss_sword_1, 1, 0);
            int_time = 20;
            sprite_index = spr_boss_os_sword_dive_land;
            image_index = 0;
        }
        
        if (int_time == 20)
            imaging = 0;
        
        if (int_time > 2 && int_time <= 20)
            image_index = 0;
        
        if (int_time == 2)
            image_index = 1;
        
        if (int_time == 1)
            image_index = 2;
    }
    
    if (move == 9)
    {
        if (int_time > 20)
        {
            if (image_index >= 8 && image_index <= 8.5)
                audio_play_sound(snd_enemy_batoncop_attack_1, 1, 0);
            
            if (image_index > 19 && image_index < 21)
                image_index = 17;
        }
        
        if (image_index > 27)
            int_time = 0;
        
        if (int_time == 595)
            instance_create_depth(x, y - 400, -1, obj_hitbox_os_summon_sword);
        
        if (place_meeting(x, y, obj_hitbox_os_summon_sword))
        {
            int_time = 20;
            
            if (int_time == 20)
                image_index = 21;
            
            audio_play_sound(snd_boss_os_phase_hit_1, 1, 0);
            instance_create_depth(x, y, -1, obj_hitbox_os_attack_11);
            instance_destroy(obj_hitbox_os_summon_sword);
            scr_screenshake();
            shake = 10;
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5, 0.5);
        }
    }
    
    if (move == 10)
    {
        if (int_time > 1599)
        {
            if (image_index > 4 && image_index < 6)
                image_index = 2;
        }
        
        if (int_time <= 1549 && int_time > 999)
        {
            vspd = 0;
            y = -5000;
            
            if (int_time > 1119)
            {
                if (arm_pos > 0)
                    arm_pos -= 100;
            }
        }
        
        if (int_time == 1599)
        {
            audio_play_sound(snd_boss_os_dm_jump_1, 1, 0);
            old_depth = depth;
            depth = -20;
            arm_pos = 1200;
            max_dm_time = 28;
            y -= 2;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
            image_index = 6;
            vspd = -160;
            hand = 1;
        }
        
        if (int_time == 1549)
        {
            audio_play_sound(snd_boss_os_summon_load_1, 1, 0);
            audio_play_sound(snd_boss_os_dm_voice_1, 1, 0);
            audio_play_sound(snd_boss_os_dm_voice_1, 1, 0);
        }
        
        if (int_time <= 1499 && int_time > 1119)
        {
            dm_time--;
            
            if (dm_time == 0)
            {
                if (max_dm_time > 8)
                    max_dm_time -= 2;
                
                stop = 0;
                
                if (hand == -1)
                {
                    hand = 1;
                    arm_1_frame = 4;
                    stop = 1;
                }
                
                if (hand == 1 && !stop)
                {
                    hand = -1;
                    arm_2_frame = 4;
                }
                
                if (hand == 1)
                {
                    instance_create_depth(camera_get_view_x(view_camera[0]) + 700, camera_get_view_y(view_camera[0]) + 1200, -1, obj_hitbox_os_dm_1);
                    instance_create_depth(camera_get_view_x(view_camera[0]) + 700, camera_get_view_y(view_camera[0]) + 1200, -20, obj_particle_os_shot_1).size = 3;
                }
                else
                {
                    instance_create_depth(camera_get_view_x(view_camera[0]) + 2500, camera_get_view_y(view_camera[0]) + 1200, -1, obj_hitbox_os_dm_1);
                    instance_create_depth(camera_get_view_x(view_camera[0]) + 2500, camera_get_view_y(view_camera[0]) + 1200, -20, obj_particle_os_shot_1).size = 3;
                }
                
                sound = irandom_range(0, 2);
                
                if (sound == snd_background_city_1)
                    audio_play_sound(snd_boss_os_dm_shot_1, 1, 0);
                
                if (sound == snd_background_forest_1)
                    audio_play_sound(snd_boss_os_dm_shot_2, 1, 0);
                
                if (sound == snd_background_rain_1)
                    audio_play_sound(snd_boss_os_dm_shot_3, 1, 0);
                
                dm_time = max_dm_time;
            }
        }
        
        if (int_time <= 1119)
            arm_pos += 100;
        
        if (int_time == 1399 || int_time == 1299 || int_time == 1199)
        {
            instance_create_depth(camera_get_view_x(view_camera[0]) + 1600, camera_get_view_y(view_camera[0]) + 2000, -1, obj_hitbox_os_dm_2);
            audio_play_sound(snd_boss_os_dm_shot_4, 1, 0);
        }
        
        if (int_time == 999)
        {
            depth = old_depth;
            int_time = 0;
            y = -400;
        }
    }
    
    if (move == 11)
    {
        if (image_index >= 3 && image_index <= 3.5)
        {
            audio_play_sound(snd_boss_os_phase_crack_1, 1, 0);
            audio_play_sound(snd_boss_os_phase_crack_1, 1, 0);
        }
        
        if (image_index >= 13 && image_index <= 13.5)
        {
            audio_play_sound(snd_boss_os_phase_crack_2, 1, 0);
            audio_play_sound(snd_boss_os_phase_crack_2, 1, 0);
        }
        
        if (int_time == 130)
        {
            audio_play_sound(snd_boss_os_phase_hit_1, 1, 0);
            scr_screenshake();
            shake = 10;
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5, 0.5);
        }
        
        if (image_index > 31)
        {
            int_time = 0;
            inv = 0;
        }
    }
    
    if (move == 12)
    {
        if (int_time == 150)
        {
            audio_play_sound(snd_boss_os_phase_roar_1, 1, 0);
            obj_background.type = spr_background_os_castle_broken;
            instance_create_depth(0, 0, 0, obj_weather);
        }
        
        if (int_time <= 150)
        {
            scr_screenshake();
            
            if (shake == 0)
            {
                instance_create_depth(x, y, -10, obj_particle_wave);
                
                if (global.rumble)
                    gamepad_set_vibration(0, 0.5, 0.5);
                
                shake = 10;
            }
        }
        
        if (image_index > 47)
        {
            int_time = 0;
            inv = 0;
        }
    }
}

if (instance_exists(obj_mick))
{
    if (obj_mick.x >= -2000)
    {
        if (phase == 1 && hp <= 48 && state == 0 && move == 0)
        {
            phase = 2;
            sword = 1;
            moves = 8;
        }
        
        if (phase == 2 && hp <= 24 && state == 0 && move == 0)
        {
            phase = 3;
            sword = 0;
            moves = 5;
            dm = 1;
            max_time = 15;
        }
    }
    else if (state == 0 && move == 0)
    {
        time = 10000;
    }
}

if (hp <= 48 && hp > 24 && global.boss_progress >= 48)
{
    with (obj_boss_ui)
    {
        if (sprite_index != spr_boss_os_ui_hurt)
        {
            sprite_index = spr_boss_os_ui_hurt;
            
            repeat (50)
                instance_create_depth(obj_boss_os.x, obj_boss_os.y, -2, obj_item_gem_follow);
        }
    }
}

if (hp <= 24 && global.boss_progress >= 24)
{
    with (obj_boss_ui)
    {
        if (sprite_index != spr_boss_os_ui_dying)
        {
            sprite_index = spr_boss_os_ui_dying;
            
            repeat (50)
                instance_create_depth(obj_boss_os.x, obj_boss_os.y, -2, obj_item_gem_follow);
        }
    }
}

if (hp <= 60 && hp > 48 && hp_give >= 7)
{
    instance_create_depth(x, y, 0, obj_item_health_bounce);
    hp_give = 6;
}

if (hp <= 48 && hp > 36 && hp_give >= 6)
{
    instance_create_depth(x, y, 0, obj_item_health_bounce);
    hp_give = 5;
}

if (hp <= 36 && hp > 24 && hp_give >= 5)
{
    instance_create_depth(x, y, 0, obj_item_health_bounce);
    hp_give = 4;
}

if (hp <= 24 && hp > 18 && hp_give >= 4)
{
    instance_create_depth(x, y, 0, obj_item_health_bounce);
    hp_give = 3;
}

if (hp <= 18 && hp > 12 && hp_give >= 3)
{
    instance_create_depth(x, y, 0, obj_item_health_bounce);
    hp_give = 2;
}

if (hp <= 12 && hp > 6 && hp_give >= 2)
{
    instance_create_depth(x, y, 0, obj_item_health_bounce);
    hp_give = 1;
}

if (hp <= 6 && hp_give >= 1)
{
    instance_create_depth(x, y, 0, obj_item_health_bounce);
    hp_give = 0;
}

if (shake > 0)
    shake--;

if (shake == 1)
    gamepad_set_vibration(0, 0, 0);

if (int_time == 0)
{
    move = 0;
    hspd = 0;
    turnable = 1;
    
    if (!landing)
    {
        if (!sword)
            sprite_index = spr_boss_os_idle;
        else if (moves <= 6 && moves >= 3)
            sprite_index = spr_boss_os_idle_sword;
        else
            sprite_index = spr_boss_os_idle;
    }
    else
    {
        if (!sword)
            sprite_index = spr_boss_os_land;
        else
            sprite_index = spr_boss_os_land_sword;
        
        if (landing == 3)
            image_index = 0;
        
        if (landing == 2)
            image_index = 1;
        
        if (landing == 1)
            image_index = 2;
    }
}

if (landing > 0)
    landing--;

if (taunt)
{
    if (image_index > 23)
        image_index = 8;
    
    if (image_index >= 6 && image_index <= 7)
        audio_play_sound(snd_boss_os_taunt_pose_1, 1, 0);
}

if (instance_exists(obj_mick))
{
    if (turnable)
    {
        if (x < obj_mick.x)
            image_xscale = -1;
        else
            image_xscale = 1;
    }
}

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
    landing = 3;
}

if (place_meeting(x, y + vspd, obj_object_block_groundpound))
{
    while (!place_meeting(x, y + sign(vspd), obj_object_block_groundpound))
        y += sign(vspd);
    
    vspd = 0;
    landing = 3;
}

if (place_meeting(x, y + vspd, obj_object_block_uni))
{
    while (!place_meeting(x, y + sign(vspd), obj_object_block_uni))
        y += sign(vspd);
    
    vspd = 0;
    landing = 3;
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
    landing = 3;
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
    landing = 3;
}

x += hspd;
y += vspd;

if (place_meeting(x, y + 2, obj_wall) || place_meeting(x, y + 2, obj_object_block_groundpound) || place_meeting(x, y + 2, obj_object_block_uni))
{
    if (vstate)
    {
        sound = choose(0, 1);
        
        if (sound == snd_background_city_1)
            audio_play_sound(snd_mick_walk_1, 1, 0);
        else
            audio_play_sound(snd_mick_walk_2, 1, 0);
    }
    
    vstate = 0;
}

if (!place_meeting(x, y + 2, obj_wall) && !place_meeting(x, y + 2, obj_object_block_groundpound) && !place_meeting(x, y + 2, obj_object_block_uni))
    vstate = 1;

if (vstate)
{
    if (state == 0)
    {
        if (move == 3 || move == 4)
        {
            vspd += 20;
        }
        else if (move == 7)
        {
            vspd += 8;
        }
        else
        {
            vspd += 2;
            sprite_index = spr_boss_os_leap;
        }
    }
    else
    {
        if (move != 3 && move != 8)
            vspd += 2;
        
        if (move == 0)
            sprite_index = spr_boss_os_leap;
    }
}
else
{
    vspd = 0;
    
    if (audio_is_playing(snd_boss_os_sword_jump_spin_3))
        audio_stop_sound(snd_boss_os_sword_jump_spin_3);
}
