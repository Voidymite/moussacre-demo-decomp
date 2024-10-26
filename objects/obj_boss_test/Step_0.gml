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
    
    if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound) || place_meeting(x, y, obj_object_waterspout) || place_meeting(x, y, obj_object_collapse) || place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2))
    {
        if (place_meeting(x, y, obj_hitbox_spin))
        {
            if (!taunt)
            {
                instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal);
                global.score += 200;
                hp--;
            }
            else
            {
                instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal).image_yscale = 4;
                global.score += 800;
                hp -= 4;
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
                global.score += 200;
                hp--;
            }
            else
            {
                instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical).image_yscale = 4;
                global.score += 800;
                hp -= 4;
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
                global.score += 200;
                hp--;
            }
            else
            {
                instance_create_depth(round((obj_hitbox_groundpound.x + x) / 2), round((obj_hitbox_groundpound.y + y) / 2), -10, obj_particle_slash_vertical).image_yscale = 4;
                global.score += 800;
                hp -= 4;
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
        
        if (place_meeting(x, y, obj_hitbox_shoot) || place_meeting(x, y, obj_hitbox_hook_3) || place_meeting(x, y, obj_hitbox_bomb_2))
        {
            if (!taunt)
            {
                instance_create_depth(x, y, -10, obj_particle_burst);
                
                if (place_meeting(x, y, obj_hitbox_shoot))
                {
                    global.score += 200;
                    hp--;
                }
                
                if (place_meeting(x, y, obj_hitbox_bomb_2))
                {
                    global.score += 400;
                    hp -= 2;
                }
                
                if (place_meeting(x, y, obj_hitbox_hook_3))
                {
                    global.score += 600;
                    hp -= 3;
                }
            }
            else
            {
                instance_create_depth(x, y, -10, obj_particle_burst).image_yscale = 3;
                
                if (place_meeting(x, y, obj_hitbox_shoot))
                {
                    global.score += 800;
                    hp -= 4;
                }
                
                if (place_meeting(x, y, obj_hitbox_bomb_2))
                {
                    global.score += 1000;
                    hp -= 5;
                }
                
                if (place_meeting(x, y, obj_hitbox_hook_3))
                {
                    global.score += 1200;
                    hp -= 6;
                }
            }
            
            audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0);
            audio_play_sound(snd_mick_kill_4, 1, 0);
        }
        
        repeat (18)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
        
        repeat (54)
        {
            if (global.particles)
                instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
        }
        
        scr_screenshake();
        inv = 30;
        
        with (obj_mick_ui_face)
            image_yscale = 1.5;
    }
}

if (inv > 0)
    inv--;

if (hp <= 0)
    instance_destroy();

if (move == 0 && time > 0)
    time--;

if (time == 0)
{
    time = max_time;
    moves--;
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
        move = irandom_range(1, 2);
        int_time = 30;
    }
    
    if (state == 1)
    {
        move = irandom_range(1, 2);
        int_time = 30;
    }
}

if (move > 0)
    int_time--;

if (state == 0)
{
    if (move == 1)
        hspd = -6;
    
    if (move == 2)
        hspd = 6;
}

if (state == 1)
{
    if (move == 1)
        hspd = -18;
    
    if (move == 2)
        hspd = 18;
}

if (int_time == 0)
{
    move = 0;
    hspd = 0;
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
