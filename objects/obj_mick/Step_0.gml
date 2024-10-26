var left_hold, right_hold, up_hold, down_tap, down_hold, down_release, action1, action1_tap, action1_release, action2, action3, action4, action5, action5_tap, action6, gun_use, hook_use, cannon_use, gun, hook, cannon;

if (!gamepad_is_connected(0))
{
    left_hold = keyboard_check(global.left) || mouse_check_button(global.left);
    right_hold = keyboard_check(global.right) || mouse_check_button(global.right);
    up_hold = keyboard_check(global.up) || mouse_check_button(global.up);
    down_tap = keyboard_check_pressed(global.down) || mouse_check_button_pressed(global.down);
    down_hold = keyboard_check(global.down) || mouse_check_button(global.down);
    down_release = keyboard_check_released(global.down) || mouse_check_button_released(global.down);
    action1 = keyboard_check(global.action1) || mouse_check_button(global.action1);
    action1_tap = keyboard_check_pressed(global.action1) || mouse_check_button_pressed(global.action1);
    action1_release = keyboard_check_released(global.action1) || mouse_check_button_released(global.action1);
    action2 = keyboard_check_pressed(global.action2) || mouse_check_button_pressed(global.action2);
    action3 = keyboard_check_pressed(global.action3) || mouse_check_button_pressed(global.action3);
    action4 = keyboard_check_pressed(global.action4) || mouse_check_button_pressed(global.action4);
    action5 = keyboard_check(global.action5) || mouse_check_button(global.action5);
    action5_tap = keyboard_check_pressed(global.action5) || mouse_check_button_pressed(global.action5);
    
    if (global.left == 1)
        left_hold = mouse_check_button(global.left);
    
    if (global.right == 1)
        right_hold = mouse_check_button(global.right);
    
    if (global.up == 1)
        up_hold = mouse_check_button(global.up);
    
    if (global.down == 1)
    {
        down_tap = mouse_check_button_pressed(global.down);
        down_hold = mouse_check_button(global.down);
        down_release = mouse_check_button_released(global.down);
    }
    
    if (global.action1 == 1)
    {
        action1 = mouse_check_button(global.action1);
        action1_tap = mouse_check_button_pressed(global.action1);
        action1_release = mouse_check_button_released(global.action1);
    }
    
    if (global.action2 == 1)
        action2 = mouse_check_button_pressed(global.action2);
    
    if (global.action3 == 1)
        action3 = mouse_check_button_pressed(global.action3);
    
    if (global.action4 == 1)
        action4 = mouse_check_button_pressed(global.action4);
    
    if (global.action5 == 1)
    {
        action5 = mouse_check_button(global.action5);
        action5_tap = mouse_check_button_pressed(global.action5);
    }
    
    if (global.demo >= 2)
    {
        action6 = keyboard_check(global.action6) || mouse_check_button(global.action6);
        gun_use = keyboard_check_pressed(global.gun) || mouse_check_button_pressed(global.gun);
        hook_use = keyboard_check_pressed(global.hook) || mouse_check_button_pressed(global.hook);
        cannon_use = keyboard_check_pressed(global.cannon) || mouse_check_button_pressed(global.cannon);
        
        if (global.action6 == 1)
            action6 = mouse_check_button(global.action6);
        
        if (global.gun == 1)
            gun = mouse_check_button_pressed(global.gun);
        
        if (global.hook == 1)
            hook = mouse_check_button_pressed(global.hook);
        
        if (global.cannon == 1)
            cannon = mouse_check_button_pressed(global.cannon);
    }
    else
    {
        action6 = keyboard_check(99999);
        gun = keyboard_check(99999);
        gun_use = keyboard_check(99999);
        hook = keyboard_check(99999);
        hook_use = keyboard_check(99999);
        cannon = keyboard_check(99999);
        cannon_use = keyboard_check(99999);
    }
}
else
{
    gamepad_set_axis_deadzone(0, 0.24);
    left_hold = gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.3 || keyboard_check(global.left) || mouse_check_button(global.left);
    right_hold = gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.3 || keyboard_check(global.right) || mouse_check_button(global.right);
    up_hold = gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.3 || keyboard_check(global.up) || mouse_check_button(global.up);
    down_tap = gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3 || keyboard_check_pressed(global.down) || mouse_check_button_pressed(global.down);
    down_hold = gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3 || keyboard_check(global.down) || mouse_check_button(global.down);
    down_release = gamepad_button_check_released(0, gp_padd) || gamepad_axis_value(0, gp_axislv) <= 0.3 || keyboard_check_released(global.down) || mouse_check_button_released(global.down);
    action1 = gamepad_button_check(0, global.c_action1) || keyboard_check(global.action1) || mouse_check_button(global.action1);
    action1_tap = gamepad_button_check_pressed(0, global.c_action1) || keyboard_check_pressed(global.action1) || mouse_check_button_pressed(global.action1);
    action1_release = gamepad_button_check_released(0, global.c_action1) || keyboard_check_released(global.action1) || mouse_check_button_released(global.action1);
    action2 = gamepad_button_check_pressed(0, global.c_action2) || keyboard_check_pressed(global.action2) || mouse_check_button_pressed(global.action2);
    action3 = gamepad_button_check_pressed(0, global.c_action3) || keyboard_check_pressed(global.action3) || mouse_check_button_pressed(global.action3);
    action4 = gamepad_button_check_pressed(0, global.c_action4) || keyboard_check_pressed(global.action4) || mouse_check_button_pressed(global.action4);
    action5 = gamepad_button_check(0, global.c_action5) || keyboard_check(global.action5) || mouse_check_button(global.action5);
    action5_tap = gamepad_button_check_pressed(0, global.c_action5) || keyboard_check_pressed(global.action5) || mouse_check_button_pressed(global.action5);
    
    if (global.left == 1)
        left_hold = mouse_check_button(global.left) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.3;
    
    if (global.right == 1)
        right_hold = mouse_check_button(global.right) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.3;
    
    if (global.up == 1)
        up_hold = mouse_check_button(global.up) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.3;
    
    if (global.down == 1)
    {
        down_tap = mouse_check_button_pressed(global.down) || gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3;
        down_hold = mouse_check_button(global.down) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3;
        down_release = mouse_check_button_released(global.down) || gamepad_button_check_released(0, gp_padd) || gamepad_axis_value(0, gp_axislv) <= 0.3;
    }
    
    if (global.action1 == 1)
    {
        action1 = mouse_check_button(global.action1) || gamepad_button_check(0, global.c_action1);
        action1_tap = mouse_check_button_pressed(global.action1) || gamepad_button_check_pressed(0, global.c_action1);
        action1_release = mouse_check_button_released(global.action1) || gamepad_button_check_released(0, global.c_action1);
    }
    
    if (global.action2 == 1)
        action2 = mouse_check_button_pressed(global.action2) || gamepad_button_check_pressed(0, global.c_action2);
    
    if (global.action3 == 1)
        action3 = mouse_check_button_pressed(global.action3) || gamepad_button_check_pressed(0, global.c_action3);
    
    if (global.action4 == 1)
        action4 = mouse_check_button_pressed(global.action4) || gamepad_button_check_pressed(0, global.c_action4);
    
    if (global.action5 == 1)
    {
        action5 = mouse_check_button(global.action5) || gamepad_button_check(0, global.c_action5);
        action5_tap = mouse_check_button_pressed(global.action5) || gamepad_button_check_pressed(0, global.c_action5);
    }
    
    if (global.demo >= 2)
    {
        action6 = gamepad_button_check(0, global.c_action6) || keyboard_check(global.action6) || mouse_check_button(global.action6);
        gun = gamepad_button_check_pressed(0, global.c_gun) || keyboard_check_pressed(global.gun) || mouse_check_button_pressed(global.gun);
        gun_use = (action6 && gun) || keyboard_check_pressed(global.gun) || mouse_check_button_pressed(global.gun);
        hook = gamepad_button_check_pressed(0, global.c_hook) || keyboard_check_pressed(global.hook) || mouse_check_button_pressed(global.hook);
        hook_use = (action6 && hook) || keyboard_check_pressed(global.hook) || mouse_check_button_pressed(global.hook);
        cannon = gamepad_button_check_pressed(0, global.c_cannon) || keyboard_check_pressed(global.cannon) || mouse_check_button_pressed(global.cannon);
        cannon_use = (action6 && cannon) || keyboard_check_pressed(global.cannon) || mouse_check_button_pressed(global.cannon);
        
        if (global.action6 == 1)
            action6 = mouse_check_button(global.action6) || gamepad_button_check(0, global.c_action6);
        
        if (global.gun == 1)
        {
            gun = mouse_check_button_pressed(global.gun) || gamepad_button_check_pressed(0, global.c_gun);
            gun_use = (action6 && gun) || mouse_check_button_pressed(global.gun);
        }
        
        if (global.hook == 1)
        {
            hook = mouse_check_button_pressed(global.hook) || gamepad_button_check_pressed(0, global.c_hook);
            hook_use = (action6 && hook) || mouse_check_button_pressed(global.hook);
        }
        
        if (global.cannon == 1)
        {
            cannon = mouse_check_button_pressed(global.cannon) || gamepad_button_check_pressed(0, global.c_cannon);
            cannon_use = (action6 && cannon) || mouse_check_button_pressed(global.cannon);
        }
    }
    else
    {
        action6 = keyboard_check(99999);
        gun = keyboard_check(99999);
        gun_use = keyboard_check(99999);
        hook = keyboard_check(99999);
        hook_use = keyboard_check(99999);
        cannon = keyboard_check(99999);
        cannon_use = keyboard_check(99999);
    }
}

if (obj_mick.astate != 8)
{
    if (y <= -500)
        y = -500;
}

if (vstate == 0)
{
    if (astate != 1 && astate != 2 && astate != 3 && astate != 5 && astate != 7 && astate != 12 && sprite_index != spr_mick_jump_rise && !place_meeting(x - 2, y, obj_wall_nowalljump) && !place_meeting(x + 2, y, obj_wall_nowalljump))
    {
        if (place_meeting(x + global.hspd, y, obj_wall) || place_meeting(x + global.hspd, y, obj_object_block_spin) || place_meeting(x + global.hspd, y, obj_object_block_uni))
        {
            if (left_hold || right_hold)
            {
                if (astate != 15 && astate != 14)
                {
                    if (sprite_index != spr_mick_wall_ground)
                        audio_play_sound(snd_mick_wall_3, 1, 0);
                    
                    sprite_index = spr_mick_wall_ground;
                }
            }
            else
            {
                sprite_index = spr_mick_idle;
            }
        }
    }
}

if (place_meeting(x, y, obj_wall_fake))
    global.infakewall = 1;
else
    global.infakewall = 0;

if (place_meeting(x + global.hspd, y, obj_wall))
{
    while (!place_meeting(x + sign(global.hspd), y, obj_wall))
        x += sign(global.hspd);
    
    if (astate == 11)
        astate = 0;
    
    global.hspd = 0;
    
    if (astate != 1 && astate != 2 && astate != 3 && astate != 5 && astate != 7 && astate != 12 && astate != 14 && sprite_index != spr_mick_jump_rise && !place_meeting(x - 2, y, obj_wall_nowalljump) && !place_meeting(x + 2, y, obj_wall_nowalljump))
    {
        if (global.badge != 1)
        {
            if (global.badge != 1)
                djump = 0;
            else
                djump = -1;
        }
        else
        {
            djump = -1;
        }
        
        stalled = 0;
        
        if (vstate == 1)
        {
            if (astate == 4 && image_index >= 10)
                sprite_index = spr_mick_wall_air;
            
            if (astate != 4)
                sprite_index = spr_mick_wall_air;
            
            if (astate == 6)
                sprite_index = spr_mick_wall_air;
        }
        else if (left_hold || right_hold)
        {
            sprite_index = spr_mick_wall_ground;
        }
        else
        {
            sprite_index = spr_mick_idle;
        }
    }
}
else
{
    if (sprite_index == spr_mick_wall_ground)
        sprite_index = spr_mick_idle;
    
    if (sprite_index == spr_mick_wall_air)
    {
        astate = 0;
        sprite_index = spr_mick_jump_fall;
    }
}

if (place_meeting(x + global.hspd, y, obj_object_block_spin))
{
    while (!place_meeting(x + sign(global.hspd), y, obj_object_block_spin))
        x += sign(global.hspd);
    
    global.hspd = 0;
    
    if (astate != 1 && astate != 2 && astate != 3 && astate != 5 && astate != 7 && astate != 12 && astate != 14 && sprite_index != spr_mick_jump_rise && !place_meeting(x - 2, y, obj_wall_nowalljump) && !place_meeting(x + 2, y, obj_wall_nowalljump))
    {
        if (vstate == 1)
        {
            if (astate == 4 && image_index >= 10)
                sprite_index = spr_mick_wall_air;
            
            if (astate != 4)
                sprite_index = spr_mick_wall_air;
            
            if (astate == 6)
                sprite_index = spr_mick_wall_air;
        }
        else if (left_hold || right_hold)
        {
            sprite_index = spr_mick_wall_ground;
        }
        else
        {
            sprite_index = spr_mick_idle;
        }
    }
}

if (place_meeting(x + global.hspd, y, obj_object_block_uni))
{
    while (!place_meeting(x + sign(global.hspd), y, obj_object_block_uni))
        x += sign(global.hspd);
    
    global.hspd = 0;
    
    if (astate != 1 && astate != 2 && astate != 3 && astate != 5 && astate != 7 && astate != 12 && astate != 14 && sprite_index != spr_mick_jump_rise && !place_meeting(x - 2, y, obj_wall_nowalljump) && !place_meeting(x + 2, y, obj_wall_nowalljump))
    {
        if (vstate == 1)
        {
            if (astate == 4 && image_index >= 10)
                sprite_index = spr_mick_wall_air;
            
            if (astate != 4)
                sprite_index = spr_mick_wall_air;
            
            if (astate == 6)
                sprite_index = spr_mick_wall_air;
        }
        else if (left_hold || right_hold)
        {
            sprite_index = spr_mick_wall_ground;
        }
        else
        {
            sprite_index = spr_mick_idle;
        }
    }
}

if (place_meeting(x, y + vspd, obj_wall))
{
    while (!place_meeting(x, y + sign(vspd), obj_wall))
        y += sign(vspd);
    
    if (astate == 11)
        astate = 0;
    
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

if (place_meeting(x, y, obj_wall))
{
    if (place_meeting(x, y - 10, obj_wall))
        y += 10;
    else
        y -= 10;
    
    if (astate == 11)
        astate = 0;
    
    vspd = 0;
}

if (place_meeting(x, y, obj_object_block_spin))
{
    if (place_meeting(x, y - 10, obj_object_block_groundpound))
        y += 10;
    else
        y -= 10;
    
    if (astate == 11)
        astate = 0;
    
    vspd = 0;
}

if (place_meeting(x, y, obj_object_block_uni))
{
    if (place_meeting(x, y - 10, obj_object_block_uni))
        y += 10;
    else
        y -= 10;
    
    if (astate == 11)
        astate = 0;
    
    vspd = 0;
}

if (place_meeting(x + global.hspd, y + vspd, obj_wall))
{
    while (!place_meeting(x + sign(global.hspd), y + sign(vspd), obj_wall))
    {
        x += sign(global.hspd);
        y += sign(vspd);
    }
    
    y -= 2;
    
    if (astate == 11)
        astate = 0;
    
    global.hspd = 0;
    vspd = 0;
}

if (place_meeting(x + global.hspd, y + vspd, obj_object_block_uni))
{
    while (!place_meeting(x + sign(global.hspd), y + sign(vspd), obj_object_block_uni))
    {
        x += sign(global.hspd);
        y += sign(vspd);
    }
    
    y -= 2;
    global.hspd = 0;
    vspd = 0;
}

if (gamepad_axis_value(0, gp_axislv) <= 0.25 && vstate == 1 && !keyboard_check(global.down))
    pound_used = 0;

if (astate == 3)
{
    if (sprite_index != spr_mick_groundpound_fall)
    {
        image_index = 0;
        sprite_index = spr_mick_groundpound_fall;
    }
    
    if (image_index > 3 && sprite_index == spr_mick_groundpound_fall)
        image_index--;
}

if (land_time > 0)
    land_time--;

if (place_meeting(x, y + 2, obj_object_spring))
{
    stalled = 0;
    
    if (global.badge != 1)
    {
        if (global.badge != 1)
            djump = 0;
        else
            djump = -1;
    }
    else
    {
        djump = -1;
    }
    
    djump_time = 1;
    c_time = 10;
}

if (place_meeting(x, y + 2, obj_wall) || place_meeting(x, y + 2, obj_object_block_groundpound) || place_meeting(x, y + 2, obj_object_block_uni))
{
    if (vstate == 1)
    {
        if (astate != 14 && !down_hold)
            land_time = 3;
        
        if (astate == 0)
            image_index = 0;
        
        walk_sound = choose(0, 1);
        
        if (walk_sound == snd_background_city_1)
            audio_play_sound(snd_mick_walk_1, 1, 0);
        else
            audio_play_sound(snd_mick_walk_2, 1, 0);
    }
    
    vstate = 0;
    apex = 0;
    stalled = 0;
    
    if (global.badge != 1)
    {
        if (global.badge != 1)
            djump = 0;
        else
            djump = -1;
    }
    else
    {
        djump = -1;
    }
    
    djump_time = 1;
    c_time = 10;
    bounce = 0;
    
    if (action1_release || !action1 || jump_buffer)
        jump_used = 0;
    
    if (!gamepad_is_connected(0))
        pound_used = 0;
    else
        pound_used = 1;
    
    if (astate == 0 || astate == 3 || astate == 4 || astate == 5 || astate == 6)
    {
        if (sprite_index != spr_mick_wall_ground)
            sprite_index = spr_mick_idle;
        
        astate = 0;
    }
}
else
{
    vstate = 1;
    
    if (astate == 0)
    {
        if (vspd < 0)
        {
            if (astate != 14)
                sprite_index = spr_mick_jump_rise;
        }
        else if (sprite_index != spr_mick_jump_fall && sprite_index != spr_mick_wall_air)
        {
            image_index = 1;
            sprite_index = spr_mick_jump_fall;
        }
    }
    
    if (image_index > 3 && sprite_index == spr_mick_jump_rise)
        image_index--;
    
    if (image_index > 3 && sprite_index == spr_mick_jump_fall)
        image_index--;
}

if (c_time > 0)
    c_time--;

if (!action1 && !apex && astate != 5 && astate != 6 && astate != 10 && astate != 11 && astate != 12 && !global.lock && !bounce)
{
    vspd = 0;
    apex = 1;
}

if (astate != 0 && astate != 12)
    bounce = 0;

if (vstate)
{
    if (action1_tap && place_meeting(x, y + 300, obj_wall))
        jump_buffer = 1;
    
    if (astate != 8)
        y += vspd;
    
    if (astate != 8 && astate != 9 && astate != 11)
        vspd += grav;
    
    if (sprite_index != spr_mick_wall_air)
    {
        if (vspd >= vspd_cap && astate != 11 && astate != 3)
            vspd = vspd_cap;
    }
    else if (vspd >= round(vspd_cap / 2))
    {
        vspd = round(vspd_cap / 2);
    }
    
    if (down_tap && !pound_used && astate != 1 && astate != 7 && astate != 8 && astate != 10 && astate != 14 && astate != 3)
    {
        audio_play_sound(snd_mick_groundpound_1, 1, 0);
        instance_create_depth(x, y - 80, 10, obj_particle_dust_jump).image_yscale = -1;
        astate = 3;
        vspd = round(vspd_cap * 1.25);
        pound_used = 1;
        
        if (global.badge == 2)
            parry = 8;
    }
    
    if (astate == 3)
        vspd = round(vspd_cap * 1.25);
    
    if (sprite_index == spr_mick_groundpound_fall && astate != 3)
        sprite_index = spr_mick_jump_rise;
    
    if (vspd < 0)
    {
        if (astate == 0)
        {
        }
    }
    
    if (vspd >= 0)
        apex = 1;
    
    if (djump_time > 0)
        djump_time--;
    
    if (wjump_time > 0)
        wjump_time--;
    
    if (wkick_time > 0)
        wkick_time--;
    
    if (place_meeting(x + 2, y, obj_wall) || place_meeting(x + 2, y, obj_object_block_spin))
    {
        if (!place_meeting(x + 2, y, obj_wall_nowalljump) && !action6 && right_hold && action1_tap && astate != 1 && astate != 7 && astate != 8 && astate != 10 && astate != 14 && wjump_time == 0 && !global.lock)
        {
            audio_play_sound(snd_mick_wall_2, 1, 0);
            jump_buffer = 0;
            instance_create_depth(x + (dir * 60), y, 10, obj_particle_dust_jump).image_angle = 90;
            image_xscale = -obj_mick.dir;
            apex = 0;
            stalled = 0;
            y -= 2;
            wjump_time = 8;
            wkick_time = 1;
            vstate = 1;
            vspd = -jump_height;
            astate = 0;
            
            if (global.badge != 1)
            {
                if (global.badge != 1)
                    djump = 0;
                else
                    djump = -1;
            }
            else
            {
                djump = -1;
            }
            
            djump_time = 1;
            
            if (running)
            {
            }
        }
    }
    
    if (place_meeting(x - 2, y, obj_wall) || place_meeting(x - 2, y, obj_object_block_spin))
    {
        if (!place_meeting(x - 2, y, obj_wall_nowalljump) && !action6 && left_hold && action1_tap && astate != 1 && astate != 7 && astate != 8 && astate != 10 && astate != 14 && wjump_time == 0 && !global.lock)
        {
            audio_play_sound(snd_mick_wall_2, 1, 0);
            jump_buffer = 0;
            instance_create_depth(x + (dir * 60), y, 10, obj_particle_dust_jump).image_angle = 90;
            image_xscale = -obj_mick.dir;
            apex = 0;
            stalled = 0;
            y -= 2;
            wjump_time = 8;
            wkick_time = 1;
            vstate = 1;
            vspd = -jump_height;
            astate = 0;
            
            if (global.badge != 1)
            {
                if (global.badge != 1)
                    djump = 0;
                else
                    djump = -1;
            }
            else
            {
                djump = -1;
            }
            
            djump_time = 1;
            c_time = 0;
            
            if (running)
            {
            }
        }
    }
    
    if (wjump_time > 0 && running)
    {
        if (dir == 1 && left_hold)
        {
            global.hspd = -hspd_cap;
            wjump_time = 0;
        }
        
        if (dir == -1 && right_hold)
        {
            global.hspd = hspd_cap;
            wjump_time = 0;
        }
    }
    
    if (action1_tap && !action6 && astate != 1 && astate != 7 && astate != 8 && astate != 9 && astate != 10 && astate != 11 && astate != 14 && djump < djump_max && djump_time == 0 && !global.lock && c_time == 0)
    {
        if (place_meeting(x + 2, y, obj_wall) || place_meeting(x + 2, y, obj_object_block_spin))
        {
            if (!left_hold || place_meeting(x + 2, y, obj_wall_nowalljump))
            {
                jump_buffer = 0;
                instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
                apex = 0;
                stalled = 0;
                astate = 4;
                djump++;
                y -= 2;
                vstate = 1;
                vspd = -round(jump_height * 0.75);
                
                if (global.badge == 2)
                    parry = 8;
                
                djump_sound = irandom_range(0, 7);
                audio_play_sound(snd_mick_doublejump_5, 1, 0);
                
                if (djump < 2)
                    audio_play_sound(snd_mick_doublejump_6, 1, 0);
                
                scr_stopsound_mick_voice();
                
                if (djump_sound == snd_background_city_1)
                    audio_play_sound(snd_mick_doublejump_voice_1, 1, 0);
                
                if (djump_sound == snd_background_forest_1)
                    audio_play_sound(snd_mick_doublejump_voice_2, 1, 0);
                
                if (djump_sound == snd_background_rain_1)
                    audio_play_sound(snd_mick_doublejump_voice_3, 1, 0);
                
                if (djump_sound == snd_background_snow_1)
                    audio_play_sound(snd_mick_doublejump_voice_4, 1, 0);
            }
        }
        
        if (place_meeting(x - 2, y, obj_wall) || place_meeting(x - 2, y, obj_object_block_spin))
        {
            if (!right_hold || place_meeting(x - 2, y, obj_wall_nowalljump))
            {
                jump_buffer = 0;
                instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
                apex = 0;
                stalled = 0;
                astate = 4;
                djump++;
                y -= 2;
                vstate = 1;
                vspd = -round(jump_height * 0.75);
                
                if (global.badge == 2)
                    parry = 8;
                
                djump_sound = irandom_range(0, 7);
                audio_play_sound(snd_mick_doublejump_5, 1, 0);
                
                if (djump < 2)
                    audio_play_sound(snd_mick_doublejump_6, 1, 0);
                
                scr_stopsound_mick_voice();
                
                if (djump_sound == snd_background_city_1)
                    audio_play_sound(snd_mick_doublejump_voice_1, 1, 0);
                
                if (djump_sound == snd_background_forest_1)
                    audio_play_sound(snd_mick_doublejump_voice_2, 1, 0);
                
                if (djump_sound == snd_background_rain_1)
                    audio_play_sound(snd_mick_doublejump_voice_3, 1, 0);
                
                if (djump_sound == snd_background_snow_1)
                    audio_play_sound(snd_mick_doublejump_voice_4, 1, 0);
            }
        }
        
        if (!place_meeting(x - 2, y, obj_wall) && !place_meeting(x + 2, y, obj_wall) && !place_meeting(x - 2, y, obj_object_block_spin) && !place_meeting(x + 2, y, obj_object_block_spin))
        {
            jump_buffer = 0;
            instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
            apex = 0;
            stalled = 0;
            astate = 4;
            djump++;
            y -= 2;
            vstate = 1;
            vspd = -round(jump_height * 0.75);
            
            if (global.badge == 2)
                parry = 8;
            
            djump_sound = irandom_range(0, 7);
            audio_play_sound(snd_mick_doublejump_5, 1, 0);
            
            if (djump < 2)
                audio_play_sound(snd_mick_doublejump_6, 1, 0);
            
            scr_stopsound_mick_voice();
            
            if (djump_sound == snd_background_city_1)
                audio_play_sound(snd_mick_doublejump_voice_1, 1, 0);
            
            if (djump_sound == snd_background_forest_1)
                audio_play_sound(snd_mick_doublejump_voice_2, 1, 0);
            
            if (djump_sound == snd_background_rain_1)
                audio_play_sound(snd_mick_doublejump_voice_3, 1, 0);
            
            if (djump_sound == snd_background_snow_1)
                audio_play_sound(snd_mick_doublejump_voice_4, 1, 0);
        }
        
        if (astate == 4)
        {
            if (sprite_index != spr_mick_doublejump)
            {
                sprite_index = spr_mick_doublejump;
                
                if (djump < 2)
                    image_index = 0;
                else
                    image_index = 10;
                
                jumpspin_time = 28;
            }
            else
            {
                if (djump < 2)
                    image_index = 0;
                else
                    image_index = 10;
                
                jumpspin_time = 28;
            }
        }
    }
    
    if (sprite_index == spr_mick_doublejump && image_index > 17)
        image_index = 10;
    
    if (astate != 4)
        audio_stop_sound(snd_mick_doublejump_6);
    
    if (astate != 4)
        jumpspin_time = 0;
}
else
{
    vspd = 0;
}

if (vstate == 0 || c_time > 0)
{
    if (action1 || jump_buffer)
    {
        if (!action6 && astate != 1 && astate != 7 && astate != 8 && astate != 9 && astate != 10 && !global.lock)
        {
            if (!jump_used || astate == 9)
            {
                jump_buffer = 0;
                instance_create_depth(x, y + 100, 10, obj_particle_dust_jump);
                land_time = 0;
                y -= 2;
                vstate = 1;
                vspd = -jump_height;
                jump_used = 1;
                image_index = 0;
                c_time = 0;
                jump_sound = irandom_range(0, 5);
                apex = 0;
                audio_play_sound(snd_mick_jump_4, 1, 0);
                scr_stopsound_mick_voice();
                
                if (jump_sound == snd_background_city_1)
                    audio_play_sound(snd_mick_jump_voice_1, 1, 0);
                
                if (jump_sound == snd_background_forest_1)
                    audio_play_sound(snd_mick_jump_voice_2, 1, 0);
                
                if (jump_sound == snd_background_rain_1)
                    audio_play_sound(snd_mick_jump_voice_3, 1, 0);
            }
        }
    }
}

if (sprite_index == spr_mick_doublejump && image_index >= 1 && image_index <= 8)
    instance_create_depth(x, y, 0, obj_hitbox_doublejump);

if (sprite_index == spr_mick_groundpound_fall)
    instance_create_depth(x, y + 64, 0, obj_hitbox_groundpound);

if (astate == 6 && sprite_index != spr_mick_groundpound_rise && sprite_index != spr_mick_wall_air)
{
    image_index = 0;
    sprite_index = spr_mick_groundpound_rise;
}

if (sprite_index == spr_mick_groundpound_rise && image_index > 15)
    image_index = 12;

if (!global.riding)
{
    if (action5 && astate != 5 && astate != 7 && astate != 8)
    {
        running = 1;
        land_time = 0;
    }
    else
    {
        running = 0;
    }
    
    if (dash_time < 8 && !running)
    {
        if (global.hspd >= 8 && astate != 11)
            global.hspd -= acc;
        
        if (global.hspd <= -8 && astate != 11)
            global.hspd += acc;
    }
    else if (dash_time >= 8 || running)
    {
        if (astate == 2)
            sprite_index = spr_mick_dash;
        
        if (global.hspd >= 48 && astate != 11)
        {
            if (global.hspd >= hspd_cap)
                global.hspd = hspd_cap;
        }
        
        if (global.hspd <= -48 && astate != 11)
        {
            if (global.hspd <= -hspd_cap)
                global.hspd = -hspd_cap;
        }
    }
    
    if (left_hold || right_hold)
    {
        if (!walked && astate == 0 && vstate == 0)
            image_index = 0;
        
        walked = 1;
        hstate = 1;
        
        if (vstate == 0)
        {
            if (dash_time <= 8)
            {
                if (global.hspd <= round(hspd_cap * 0.83) && global.hspd >= -round(hspd_cap * 0.83))
                {
                    if (!running && astate == 0 && sprite_index != spr_mick_wall_ground)
                    {
                        if (!left_hold || !right_hold)
                            sprite_index = spr_mick_walk;
                    }
                    
                    if (running && astate == 0 && sprite_index != spr_mick_wall_ground)
                        sprite_index = spr_mick_run_slow;
                }
                else
                {
                    if (sprite_index != spr_mick_run_fast)
                    {
                    }
                    
                    if (sprite_index != spr_mick_spin && astate == 0)
                        sprite_index = spr_mick_run_fast;
                }
            }
        }
    }
    else
    {
        hstate = 0;
    }
    
    x += global.hspd;
    
    if (astate != 15)
    {
        if (!left_hold && !right_hold)
        {
            walked = 0;
            
            if (global.hspd < 0)
                global.hspd += acc;
            
            if (global.hspd > 0)
                global.hspd -= acc;
        }
    }
    else if (crouch_time == 0)
    {
        walked = 0;
        
        if (global.hspd < 0)
            global.hspd += acc;
        
        if (global.hspd > 0)
            global.hspd -= acc;
    }
    
    if (!left_hold || !right_hold)
    {
        if (left_hold && dash_time < 8 && astate != 7 && astate != 8 && astate != 15)
        {
            dir = -1;
            
            if (wkick_time == 0)
            {
                if (!running)
                    global.hspd = -walk_spd;
                else if (global.hspd > -hspd_cap)
                    global.hspd -= (acc * 3);
                else
                    global.hspd = -hspd_cap;
            }
        }
        
        if (right_hold && dash_time < 8 && astate != 7 && astate != 8 && astate != 15)
        {
            dir = 1;
            
            if (wkick_time == 0)
            {
                if (!running)
                    global.hspd = walk_spd;
                else if (global.hspd < hspd_cap)
                    global.hspd += (acc * 3);
                else
                    global.hspd = hspd_cap;
            }
        }
    }
    else if (!running && astate == 0)
    {
        global.hspd = 0;
    }
    
    image_time--;
    
    if (image_time == 0)
    {
        image_time = 3;
        
        if (global.hspd > round(hspd_cap * 0.83) || global.hspd < -round(hspd_cap * 0.83))
        {
            if (image_alpha == 1)
                instance_create_depth(x, y, 2, obj_afterimage);
        }
        
        if (dash_time > 8 && image_alpha == 1)
            instance_create_depth(x, y, 2, obj_afterimage);
    }
    
    if (global.hspd <= walk_spd || global.hspd >= -walk_spd)
    {
        if (sprite_index == spr_mick_walk || sprite_index == spr_mick_crouch_3)
        {
            if (dust_time == 1)
                instance_create_depth(x - (80 * dir), y + 100, 10, obj_particle_dust_small);
        }
    }
    
    if (sprite_index == spr_mick_wall_air && dust_time == 1)
        instance_create_depth(x + (60 * dir), y, 10, obj_particle_dust_small);
    
    if (global.hspd <= hspd_cap || global.hspd >= -hspd_cap)
    {
        if (sprite_index == spr_mick_run_fast && dust_time == 1)
            instance_create_depth(x - (80 * dir), y + 40, 10, obj_particle_dust_burst).image_xscale = obj_mick.image_xscale;
    }
}

if (action2 && !action6 && astate != 1 && astate != 7 && astate != 8 && astate != 10 && astate != 14)
{
    astate = 1;
    spin_time = 28;
    c_time = 0;
    dashed = 0;
    image_index = 0;
    
    if (global.badge == 2)
        parry = 8;
    
    audio_play_sound(snd_mick_spin_1, 1, 0);
    scr_stopsound_mick_voice();
}

if (astate == 1)
    sprite_index = spr_mick_spin;

if (astate != 0 && astate != 1)
    audio_stop_sound(snd_mick_spin_1);

if (spin_time > 1)
{
    spin_time--;
    
    if (!stalled && astate == 1)
        vspd = 1;
    
    if (spin_time == 1)
    {
        if (astate == 1)
            stalled = 1;
        
        astate = 0;
    }
    
    if (astate != 1 && astate != 10)
        spin_time = 0;
}

if (jumpspin_time > 0)
    jumpspin_time--;

if (sprite_index == spr_mick_spin && image_index >= 1 && image_index <= 8)
    instance_create_depth(x, y, 0, obj_hitbox_spin);

if (astate != 2 && dash_time > 2)
    dash_time = 2;

if (action3 && !action6 && astate != 1 && astate != 2 && astate != 7 && astate != 8 && astate != 14 && !dashed && !global.lock)
{
    audio_play_sound(snd_mick_dash_1, 1, 0);
    dash_time = 20;
    astate = 2;
    dashed = 1;
    c_time = 0;
    
    if (left_hold)
        dir = -1;
    
    if (right_hold)
        dir = 1;
    
    global.hspd = hspd_cap * dir;
    image_index = 0;
    instance_create_depth(x - (dir * 60), y + 50, 10, obj_particle_dust_jump).image_angle = 90;
    image_xscale = obj_mick.dir;
}

if (astate == 2 && dash_time >= 19)
    global.hspd = hspd_cap * dir;

if (dash_time > 0)
{
    dash_time--;
    
    if (!running)
    {
    }
    
    if (dash_time == 1)
    {
        dashed = 0;
        gamepad_set_vibration(0, 0, 0);
        
        if (astate != 1 && astate != 3 && astate != 4 && astate != 7)
            astate = 0;
    }
}

if (dash_time <= 0)
    dashed = 0;

if (crouch_time < 15 && astate != 15)
    crouch_time++;

if (crouch_time < 0)
    crouch_time = 0;

if (vstate == 0 && astate == 0 && down_hold)
{
    astate = 15;
    
    if (sprite_index != spr_mick_crouch_1 && sprite_index != spr_mick_crouch_2 && sprite_index != spr_mick_crouch_3 && sprite_index != spr_mick_crouch_4)
        crouch_time -= 5;
    
    sprite_index = spr_mick_crouch_4;
    image_index = 0;
}

if (astate == 15)
{
    if (sprite_index == spr_mick_crouch_4 && image_index > 1)
    {
        if (global.hspd >= 36 || global.hspd <= -36)
            sprite_index = spr_mick_crouch_3;
        
        if (global.hspd >= 26 && global.hspd < 36)
            sprite_index = spr_mick_crouch_2;
        
        if (global.hspd <= -26 && global.hspd > -36)
            sprite_index = spr_mick_crouch_2;
        
        if (global.hspd < 26 && global.hspd > -26)
            sprite_index = spr_mick_crouch_1;
    }
    
    if (sprite_index != spr_mick_crouch_4)
    {
        if (global.hspd >= 36 || global.hspd <= -36)
            sprite_index = spr_mick_crouch_3;
        
        if (global.hspd >= 26 && global.hspd < 36)
            sprite_index = spr_mick_crouch_2;
        
        if (global.hspd <= -26 && global.hspd > -36)
            sprite_index = spr_mick_crouch_2;
        
        if (global.hspd < 26 && global.hspd > -26)
            sprite_index = spr_mick_crouch_1;
    }
    
    if (crouch_time > 0)
        crouch_time--;
    
    if (!down_hold && down_release)
        astate = 0;
    
    if (vstate)
        astate = 0;
}

if (dir == -1)
    image_xscale = -1;
else
    image_xscale = 1;

if (astate == 1 && spin_time < 27 && global.badge == 3 && action2)
{
    sprite_index = spr_mick_rang;
    image_index = 0;
    instance_create_depth(x, y, -4, obj_hitbox_rang);
    astate = 14;
    spin_time = 0;
    
    if (global.badge == 2)
        parry = 8;
}

if (astate == 14)
{
    if (!instance_exists(obj_hitbox_rang))
        astate = 0;
}

if (dash_time > 2)
    global.dodging = 1;
else if (hurt_timer > 1)
    global.dodging = 1;
else
    global.dodging = 0;

if (hurt_timer > 0)
    hurt_timer--;

if (parry > 0)
    parry--;

if (hurt_timer == 119)
{
    if (global.damaged < 100)
        global.damaged++;
    
    repeat (5)
        instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
    
    repeat (15)
    {
        if (global.particles)
            instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
    }
    
    with (obj_mick_ui_face)
    {
        image_yscale = 1.5;
        shake = 25;
    }
    
    if (global.rumble)
    {
        if (pain == 0)
        {
            gamepad_set_vibration(0, 1, 0.4);
        }
        else
        {
            gamepad_set_vibration(0, 1, 1);
            
            if (global.damaged < 100)
                global.damaged++;
        }
    }
    
    apex = 0;
    stalled = 0;
    astate = 5;
    
    if (global.badge != 1)
    {
        if (global.badge != 1)
            djump = 0;
        else
            djump = -1;
    }
    else
    {
        djump = -1;
    }
    
    y -= 2;
    vstate = 1;
    global.hspd = 0;
    vspd = -round(jump_height * 0.75);
    spin_time = 0;
    dash_time = 0;
    hurt_anim = irandom_range(1, 3);
    
    if (pain == 0)
        audio_play_sound(snd_mick_hurt_1, 1, 0);
    else
        audio_play_sound(snd_mick_hurt_2, 1, 0);
    
    scr_stopsound_mick_voice();
    hurt_sound = irandom_range(0, 5);
    
    if (hurt_sound == snd_background_city_1)
        audio_play_sound(snd_mick_hurt_voice_1, 1, 0);
    
    if (hurt_sound == snd_background_forest_1)
        audio_play_sound(snd_mick_hurt_voice_2, 1, 0);
    
    if (hurt_sound == snd_background_rain_1)
        audio_play_sound(snd_mick_hurt_voice_3, 1, 0);
    
    if (hurt_sound == snd_background_snow_1)
        audio_play_sound(snd_mick_hurt_voice_4, 1, 0);
    
    if (hurt_sound == snd_boss_finisher_dive_1)
        audio_play_sound(snd_mick_hurt_voice_5, 1, 0);
    
    if (hurt_sound == snd_boss_finisher_dive_2)
        audio_play_sound(snd_mick_hurt_voice_6, 1, 0);
}

if (hurt_timer == 118)
{
    if (pain == 0)
        scr_screenshake();
    else
        scr_screenshake_giant();
}

if (!global.riding)
{
    if (hurt_timer > 20)
    {
        flash--;
        
        if (flash == -3)
            flash = 4;
        
        if (flash > 0)
            image_alpha = 1;
        else
            image_alpha = 0;
    }
    else
    {
        image_alpha = 1;
    }
    
    if (hurt_timer == 1)
    {
        flash = 4;
        image_alpha = 1;
    }
}
else
{
    image_alpha = 0;
}

if (astate == 8)
    image_alpha = 0;

if (astate == 5)
{
    if (hurt_anim == 1)
        sprite_index = spr_mick_hurt_1;
    
    if (hurt_anim == 2)
        sprite_index = spr_mick_hurt_2;
    
    if (hurt_anim == 3)
        sprite_index = spr_mick_hurt_3;
}

if (hurt_timer == 109)
{
    if (global.rumble)
    {
        if (pain == 0)
            gamepad_set_vibration(0, 0.4, 1);
    }
}

if (hurt_timer == 99)
{
    if (pain == 0)
        gamepad_set_vibration(0, 0, 0);
}

if (hurt_timer == 79)
{
    pain = 0;
    gamepad_set_vibration(0, 0, 0);
}

if (stun_timer > -25)
    stun_timer--;

if (stun_timer == 24)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0.1, 0.25);
    
    apex = 0;
    stalled = 0;
    
    if (global.badge != 1)
    {
        if (global.badge != 1)
            djump = 0;
        else
            djump = -1;
    }
    else
    {
        djump = -1;
    }
    
    spin_time = 0;
    dash_time = 0;
    sprite_index = spr_mick_stun;
    scr_stopsound_mick_voice();
}

if (stun_timer == 19)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0.25, 0.1);
}

if (stun_timer == 14)
    gamepad_set_vibration(0, 0, 0);

if (stun_timer == 0)
    astate = 0;

if (x <= -2000)
    astate = 8;

if (global.sp >= global.sp_max)
    global.sp = global.sp_max;

if (global.hp <= 0 || y > (room_height + 500))
{
    if (!instance_exists(obj_particle_mick_dead_1))
    {
        if (pain == 0)
            scr_screenshake();
        else
            scr_screenshake_giant();
        
        scr_stopsound_mick_voice();
        death_sound = irandom_range(0, 2);
        audio_group_stop_all(snd_background_forest_1);
        audio_play_sound(snd_song_killed, 100, 0);
        global.song_playing = 0;
        global.song = -1;
        global.damaged = 100;
        
        if (global.difficulty == 0 && global.loss_ask)
            global.losses++;
        
        if (death_sound == snd_background_city_1)
            audio_play_sound(snd_mick_death_voice_1, 1, 0);
        
        if (death_sound == snd_background_forest_1)
            audio_play_sound(snd_mick_death_voice_2, 1, 0);
        
        if (death_sound == snd_background_rain_1)
            audio_play_sound(snd_mick_death_voice_3, 1, 0);
        
        if (y > (room_height + 500))
            global.score -= (global.hp * 500);
        
        audio_play_sound(snd_mick_death_1, 1, 0);
        global.hp = 0;
        instance_create_depth(x, y, -10, obj_transition_death);
        instance_create_depth(x, y, -10, obj_particle_mick_dead_1);
        
        repeat (36)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
        
        repeat (108)
        {
            if (global.particles)
                instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
        }
        
        astate = 8;
        x = -100000;
        y = -100000;
        hurt_timer = 10000;
    }
    
    if (room == rm_os_1)
        global.boss_progress = obj_boss_os.hp;
}

if (inv || global.difficulty == 2)
    global.hp = global.hp_max;

dust_time--;

if (dust_time == 0)
{
    if (sprite_index == spr_mick_run_fast)
        dust_time = 4;
    else
        dust_time = 10;
    
    if (sprite_index == spr_mick_hook)
        dust_time = 2;
}

if (astate == 9)
{
    sprite_index = spr_mick_vine;
    
    if (action1_tap || action2 || action3 || action4)
        astate = 0;
}

if (gun_use && global.sp < 1)
    audio_play_sound(snd_menu_cantselect, 1, 0);

if (hook_use && global.sp < 3)
    audio_play_sound(snd_menu_cantselect, 1, 0);

if (cannon_use && global.sp < 2)
    audio_play_sound(snd_menu_cantselect, 1, 0);

if (action6)
{
}
else
{
}

if (gun_use && astate != 1 && astate != 7 && astate != 8 && astate != 10 && astate != 14 && global.sp >= 1)
{
    if (image_xscale == 1)
        instance_create_depth(x + 100, y - 20, -4, obj_hitbox_shoot).image_xscale = -1;
    else
        instance_create_depth(x - 100, y - 20, -4, obj_hitbox_shoot);
    
    global.sp--;
    
    if (global.numbers)
        instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = -1;
    
    astate = 10;
    spin_time = 14;
    stalled = 0;
    c_time = 0;
    dashed = 0;
    vspd = -round(jump_height * 0.42);
    image_index = 0;
    instance_create_depth(x + (150 * dir), y, 10, obj_particle_gunshot).sprite_index = spr_particle_gunshot_blackwhite;
    sound = choose(0, 1);
    
    if (sound == snd_background_city_1)
        audio_play_sound(snd_mick_shoot_1, 1, 0);
    else
        audio_play_sound(snd_mick_shoot_2, 1, 0);
    
    audio_play_sound(snd_mick_shoot_1, 1, 0);
}

if (astate == 10)
    sprite_index = spr_mick_shoot;

if (hook_use && astate != 1 && astate != 7 && astate != 8 && astate != 10 && astate != 14 && global.sp >= 3 && !instance_exists(obj_hitbox_hook_1) && !instance_exists(obj_hitbox_hook_2))
{
    audio_play_sound(snd_mick_hook_1, 1, 0);
    
    if (!left_hold && !right_hold && !up_hold && !down_hold)
    {
        if (obj_mick.dir == -1)
            instance_create_depth(x, y, -4, obj_hitbox_hook_1).dir = 4;
        
        if (obj_mick.dir == 1)
            instance_create_depth(x, y, -4, obj_hitbox_hook_1).dir = 0;
    }
    
    if (!left_hold && right_hold && !up_hold && !down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 0;
    
    if (!left_hold && right_hold && !up_hold && down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 1;
    
    if (!left_hold && !right_hold && !up_hold && down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 2;
    
    if (left_hold && !right_hold && !up_hold && down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 3;
    
    if (left_hold && !right_hold && !up_hold && !down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 4;
    
    if (left_hold && !right_hold && up_hold && !down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 5;
    
    if (!left_hold && !right_hold && up_hold && !down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 6;
    
    if (!left_hold && right_hold && up_hold && !down_hold)
        instance_create_depth(x, y + 40, -4, obj_hitbox_hook_1).dir = 7;
}

if (astate == 11)
{
    sprite_index = spr_mick_hook;
    instance_create_depth(x, y, 0, obj_hitbox_hook_3);
    
    if (place_meeting(x, y, obj_wall_nowalljump) && y <= 300)
    {
        astate = 0;
        vspd = 0;
    }
    
    if (action1_tap || action2 || action3 || action4)
        astate = 0;
    
    if (dust_time == 1)
        instance_create_depth(x, y + 20, 10, obj_particle_dust_big);
}

if (cannon_use && astate != 1 && astate != 7 && astate != 8 && astate != 10 && astate != 14 && global.sp >= 2)
{
    y -= 8;
    vspd = -round(jump_height / 0.6);
    image_index = 0;
    sprite_index = spr_mick_bomb;
    bounce = 1;
    global.sp -= 2;
    
    if (global.numbers)
        instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = -2;
    
    astate = 12;
    stalled = 0;
    c_time = 0;
    dashed = 0;
    instance_create_depth(x, y + 325, 10, obj_particle_gunshot).sprite_index = spr_particle_gunshot_blackwhite;
    instance_create_depth(x, y + 325, -4, obj_hitbox_bomb_1);
    audio_play_sound(snd_mick_bomb_1, 1, 0);
    sound = choose(0, 1);
    
    if (sound == snd_background_city_1)
        audio_play_sound(snd_mick_shoot_1, 1, 0);
    else
        audio_play_sound(snd_mick_shoot_2, 1, 0);
}

if (astate == 12)
{
    sprite_index = spr_mick_bomb;
    
    if (image_index > 6)
    {
        astate = 0;
        image_index = 0;
    }
}

if (astate == 13)
    sprite_index = spr_mick_rocket;

if (left_hold || right_hold)
{
    if (!vstate && sprite_index == spr_mick_walk)
    {
        walk_time--;
        walk_sound = choose(0, 1);
        
        if (walk_time == 0)
        {
            walk_time = 15;
            
            if (walk_sound == snd_background_city_1)
                audio_play_sound(snd_mick_walk_1, 1, 0);
            else
                audio_play_sound(snd_mick_walk_2, 1, 0);
        }
    }
    else
    {
        walk_time = 20;
    }
}
else
{
    walk_time = 20;
}

if (left_hold || right_hold)
{
    if (!vstate && sprite_index == spr_mick_run_fast)
    {
        run_time--;
        
        if (run_time == 0)
        {
            audio_play_sound(snd_mick_run_1, 1, 0);
            run_time = 28;
        }
    }
    else
    {
        run_time = 2;
        audio_stop_sound(snd_mick_run_1);
    }
}
else
{
    run_time = 2;
    audio_stop_sound(snd_mick_run_1);
}

if (left_hold || right_hold)
{
    if (!vstate && sprite_index == spr_mick_run_slow)
    {
        run_time_2--;
        
        if (run_time_2 == 0)
        {
            audio_play_sound(snd_mick_run_2, 1, 0);
            run_time_2 = 14;
        }
    }
    else
    {
        run_time_2 = 2;
        audio_stop_sound(snd_mick_run_2);
    }
}
else
{
    run_time_2 = 2;
    audio_stop_sound(snd_mick_run_2);
}

if (action5_tap)
{
}

if (left_hold || right_hold || down_hold)
{
    if (vstate && sprite_index == spr_mick_wall_air)
    {
        wall_time--;
        
        if (wall_time == 0)
        {
            wall_time = 60;
            audio_play_sound(snd_mick_wall_1, 1, 0);
        }
    }
    else if (sprite_index == spr_mick_crouch_3)
    {
        wall_time--;
        
        if (wall_time == 0)
        {
            wall_time = 60;
            audio_play_sound(snd_mick_wall_1, 1, 0);
        }
    }
    else
    {
        wall_time = 2;
        audio_stop_sound(snd_mick_wall_1);
    }
}
else
{
    wall_time = 2;
    audio_stop_sound(snd_mick_wall_1);
}

if (astate == 11)
{
    hook_time--;
    
    if (hook_time == 0)
    {
        audio_play_sound(snd_mick_hook_3, 1, 0);
        hook_time = 28;
    }
}
else
{
    hook_time = 1;
    audio_stop_sound(snd_mick_hook_3);
}

if (stun_timer == 24)
    audio_play_sound(snd_mick_stun_1, 1, 0);

exist_time--;

if (exist_time == 0)
{
    instance_activate_region(camera_get_view_x(view_camera[0]) - 2000, camera_get_view_y(view_camera[0]) - 2000, camera_get_view_x(view_camera[0]) + 7200, camera_get_view_y(view_camera[0]) + 5800, true);
    exist_time = 30;
}
