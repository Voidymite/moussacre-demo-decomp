if (x <= 300)
    x = 300;

if (x >= 3796)
    x = 3796;

atk--;

if (y < 0 && atk > 60)
{
    atk = irandom_range(180, 240);
    sprite_index = spr_boss_drone_idle;
    image_index = 0;
}

if (atk == 0)
{
    atk = irandom_range(180, 240);
    sprite_index = spr_boss_drone_idle;
    image_index = 0;
}

if (atk == 60)
{
    sprite_index = spr_boss_drone_shot;
    image_index = 0;
    audio_play_sound(snd_boss_os_drone_charge_1, 1, 0);
    sound = choose(0, 1);
}

if (atk <= 60 && sprite_index == spr_boss_drone_shot)
{
    if (image_index > 8 && image_index < 10)
        image_index = 6;
}

if (atk <= 20)
{
    if (atk == 20)
    {
        repeat (18)
            instance_create_depth(x + (130 * -image_xscale), y + 20, 1, obj_particle_os_shot_2);
        
        repeat (54)
        {
            if (global.particles)
                instance_create_depth(x + (130 * -image_xscale), y + 20, 1, obj_particle_os_shot_2);
        }
        
        instance_create_depth(x, y, -2, obj_hitbox_os_drone_1);
        instance_create_depth(x, y, -2, obj_particle_os_shot_1);
        sound = choose(0, 1);
        
        if (sound == snd_background_city_1)
            audio_play_sound(snd_boss_os_fly_shot_1, 1, 0);
        else
            audio_play_sound(snd_boss_os_fly_shot_2, 1, 0);
        
        if (sound == snd_background_city_1)
            audio_play_sound(snd_boss_os_drone_attack_voice_1, 1, 0);
        else
            audio_play_sound(snd_boss_os_drone_attack_voice_2, 1, 0);
        
        image_index = 10;
    }
    
    if (image_index > 17)
    {
        sprite_index = spr_boss_drone_idle;
        image_index = 0;
    }
}

if (life > 0)
{
    life--;
    x += (((obj_boss_os.x - x) + point_x) * 0.15);
    y += (((obj_boss_os.y - y - 500) + point_y) * 0.15);
}
else
{
    x += (((obj_boss_os.x - x) + point_x) * 0.025);
    y += (((obj_boss_os.y - y - 500) + point_y) * 0.025);
}

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
{
    if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_rang))
    {
        if (place_meeting(x, y, obj_hitbox_spin))
            instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal);
        else
            instance_create_depth(round((obj_hitbox_rang.x + x) / 2), round((obj_hitbox_rang.y + y) / 2), -10, obj_particle_slash_horizontal);
        
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_1).sprite_index = spr_boss_drone_dead_3;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_2).sprite_index = spr_boss_drone_dead_4;
        
        if (global.sp < global.sp_max)
            global.sp++;
        
        if (global.numbers)
            instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = 1;
    }
    
    if (place_meeting(x, y, obj_hitbox_doublejump))
    {
        instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical);
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_3).sprite_index = spr_boss_drone_dead_1;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_4).sprite_index = spr_boss_drone_dead_2;
        
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
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_3).sprite_index = spr_boss_drone_dead_1;
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_4).sprite_index = spr_boss_drone_dead_2;
        
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
        instance_create_depth(x, y, -10, obj_particle_enemy_dead_5).sprite_index = spr_boss_drone_dead_5;
        
        if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
            audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0);
    }
    
    repeat (36)
        instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
    
    repeat (108)
    {
        if (global.particles)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
    }
    
    scr_screenshake();
    instance_destroy();
}

if (size == 1)
{
    if (x < obj_mick.x)
        dir = -1;
    else
        dir = 1;
}
else
{
    size += 0.1;
}

image_xscale = size * dir;
image_yscale = size;
