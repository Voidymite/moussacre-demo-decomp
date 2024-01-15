if (!gamepad_is_connected(0))
{
    var left_hold = (keyboard_check(ord("A")) || keyboard_check(vk_left))
    var right_hold = (keyboard_check(ord("D")) || keyboard_check(vk_right))
    var up_hold = (keyboard_check(ord("W")) || keyboard_check(vk_up))
    var down_tap = (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
    var down_hold = (keyboard_check(ord("S")) || keyboard_check(vk_down))
    var action1 = (keyboard_check(ord("L")) || keyboard_check(ord("Z")))
    var action1_tap = (keyboard_check_pressed(ord("L")) || keyboard_check_pressed(ord("Z")))
    var action1_release = (keyboard_check_released(ord("L")) || keyboard_check_released(ord("Z")))
    var action2 = (keyboard_check_pressed(ord("º")) || keyboard_check_pressed(ord("X")))
    var action3 = (keyboard_check_pressed(ord("Þ")) || keyboard_check_pressed(ord("C")))
    var action4 = (keyboard_check(vk_lshift) || keyboard_check(vk_rshift))
    var action4_tap = (keyboard_check_pressed(vk_lshift) || keyboard_check_pressed(vk_rshift))
}
else
{
    gamepad_set_axis_deadzone(0, 0.24)
    left_hold = (gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.3)
    right_hold = (gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.3)
    up_hold = (gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.3)
    down_tap = (gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5)
    down_hold = (gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3)
    action1 = gamepad_button_check(0, gp_face1)
    action1_tap = gamepad_button_check_pressed(0, gp_face1)
    action1_release = gamepad_button_check_released(0, gp_face1)
    action2 = gamepad_button_check_pressed(0, gp_face3)
    action3 = gamepad_button_check_pressed(0, gp_face2)
    action4 = gamepad_button_check(0, gp_shoulderrb)
    action4_tap = gamepad_button_check_pressed(0, gp_shoulderrb)
}
if place_meeting(x, y, obj_wall_fake)
    global.infakewall = 1
else
    global.infakewall = 0
if place_meeting((x + global.hspd), y, obj_wall)
{
    while (!(place_meeting((x + sign(global.hspd)), y, obj_wall)))
        x += sign(global.hspd)
    global.hspd = 0
    if (astate != 1 && astate != 3 && astate != 7 && sprite_index != spr_mick_jump_rise && (!(place_meeting((x - 2), y, obj_wall_nowalljump))) && (!(place_meeting((x + 2), y, obj_wall_nowalljump))))
    {
        djump = 0
        stalled = 0
        if (vstate == 1)
        {
            if (astate == 4 && image_index >= 10)
                sprite_index = spr_mick_wall_air
            if (astate != 4)
                sprite_index = spr_mick_wall_air
            if (astate == 6)
                sprite_index = spr_mick_wall_air
        }
        else if (left_hold || right_hold)
        {
            if (sprite_index != spr_mick_wall_ground)
                audio_play_sound(snd_mick_wall_3, 1, false)
            sprite_index = spr_mick_wall_ground
        }
        else
            sprite_index = spr_mick_idle
    }
}
else
{
    if (sprite_index == spr_mick_wall_ground)
        sprite_index = spr_mick_idle
    if (sprite_index == spr_mick_wall_air)
    {
        astate = 0
        sprite_index = spr_mick_jump_fall
    }
}
if place_meeting((x + global.hspd), y, obj_object_block_spin)
{
    while (!(place_meeting((x + sign(global.hspd)), y, obj_object_block_spin)))
        x += sign(global.hspd)
    global.hspd = 0
    if (astate != 1 && astate != 3 && astate != 7 && sprite_index != spr_mick_jump_rise && (!(place_meeting((x - 2), y, obj_wall_nowalljump))) && (!(place_meeting((x + 2), y, obj_wall_nowalljump))))
    {
        if (vstate == 1)
        {
            if (astate == 4 && image_index >= 10)
                sprite_index = spr_mick_wall_air
            if (astate != 4)
                sprite_index = spr_mick_wall_air
            if (astate == 6)
                sprite_index = spr_mick_wall_air
        }
        else if (left_hold || right_hold)
            sprite_index = spr_mick_wall_ground
        else
            sprite_index = spr_mick_idle
    }
}
if place_meeting((x + global.hspd), y, obj_object_block_uni)
{
    while (!(place_meeting((x + sign(global.hspd)), y, obj_object_block_uni)))
        x += sign(global.hspd)
    global.hspd = 0
    if (astate != 1 && astate != 3 && astate != 7 && sprite_index != spr_mick_jump_rise && (!(place_meeting((x - 2), y, obj_wall_nowalljump))) && (!(place_meeting((x + 2), y, obj_wall_nowalljump))))
    {
        if (vstate == 1)
        {
            if (astate == 4 && image_index >= 10)
                sprite_index = spr_mick_wall_air
            if (astate != 4)
                sprite_index = spr_mick_wall_air
            if (astate == 6)
                sprite_index = spr_mick_wall_air
        }
        else if (left_hold || right_hold)
            sprite_index = spr_mick_wall_ground
        else
            sprite_index = spr_mick_idle
    }
}
if place_meeting(x, (y + vspd), obj_wall)
{
    while (!(place_meeting(x, (y + sign(vspd)), obj_wall)))
        y += sign(vspd)
    vspd = 0
}
if place_meeting(x, (y + vspd), obj_object_block_groundpound)
{
    while (!(place_meeting(x, (y + sign(vspd)), obj_object_block_groundpound)))
        y += sign(vspd)
    vspd = 0
}
if place_meeting(x, (y + vspd), obj_object_block_uni)
{
    while (!(place_meeting(x, (y + sign(vspd)), obj_object_block_uni)))
        y += sign(vspd)
    vspd = 0
}
if place_meeting(x, y, obj_wall)
{
    if place_meeting(x, (y - 10), obj_wall)
        y += 10
    else
        y -= 10
    vspd = 0
}
if place_meeting(x, y, obj_object_block_spin)
{
    if place_meeting(x, (y - 10), obj_object_block_groundpound)
        y += 10
    else
        y -= 10
    vspd = 0
}
if place_meeting(x, y, obj_object_block_uni)
{
    if place_meeting(x, (y - 10), obj_object_block_uni)
        y += 10
    else
        y -= 10
    vspd = 0
}
if place_meeting((x + global.hspd), (y + vspd), obj_wall)
{
    while (!(place_meeting((x + sign(global.hspd)), (y + sign(vspd)), obj_wall)))
    {
        x += sign(global.hspd)
        y += sign(vspd)
    }
    global.hspd = 0
    vspd = 0
}
if place_meeting((x + global.hspd), (y + vspd), obj_object_block_uni)
{
    while (!(place_meeting((x + sign(global.hspd)), (y + sign(vspd)), obj_object_block_uni)))
    {
        x += sign(global.hspd)
        y += sign(vspd)
    }
    global.hspd = 0
    vspd = 0
}
if (gamepad_axis_value(0, gp_axislv) <= 0.5 && vstate == 1)
    pound_used = 0
if (astate == 3)
{
    if (sprite_index != spr_mick_groundpound_fall)
    {
        image_index = 0
        sprite_index = spr_mick_groundpound_fall
    }
    if (image_index > 3 && sprite_index == spr_mick_groundpound_fall)
        image_index -= 1
}
if (land_time > 0)
    land_time -= 1
if (place_meeting(x, (y + 2), obj_wall) || place_meeting(x, (y + 2), obj_object_block_groundpound) || place_meeting(x, (y + 2), obj_object_block_uni))
{
    if (vstate == 1)
    {
        land_time = 3
        if (astate == 0)
            image_index = 0
        walk_sound = choose(0, 1)
        if (walk_sound == snd_item_gem_9)
            audio_play_sound(snd_mick_walk_1, 1, false)
        else
            audio_play_sound(snd_mick_walk_2, 1, false)
    }
    vstate = 0
    apex = 0
    stalled = 0
    djump = 0
    djump_time = 1
    c_time = 10
    if (action1_release || (!action1) || jump_buffer)
        jump_used = 0
    if (!gamepad_is_connected(0))
        pound_used = 0
    else
        pound_used = 1
    if (astate == 0 || astate == 3 || astate == 4 || astate == 5 || astate == 6)
    {
        if (sprite_index != spr_mick_wall_ground)
            sprite_index = spr_mick_idle
        astate = 0
    }
}
else
{
    vstate = 1
    if (astate == 0)
    {
        if (vspd < 0)
            sprite_index = spr_mick_jump_rise
        else if (sprite_index != spr_mick_jump_fall && sprite_index != spr_mick_wall_air && c_time == 0)
        {
            image_index = 0
            sprite_index = spr_mick_jump_fall
        }
    }
    if (image_index > 4 && sprite_index == spr_mick_jump_rise)
        image_index -= 1
    if (image_index > 3 && sprite_index == spr_mick_jump_fall)
        image_index -= 1
}
if (c_time > 0)
    c_time -= 1
if ((!action1) && (!apex) && astate != 5 && astate != 6 && (!global.lock))
{
    vspd = 0
    apex = 1
}
if vstate
{
    if (action1_tap && place_meeting(x, (y + 300), obj_wall))
        jump_buffer = 1
    y += vspd
    vspd += 2
    if (sprite_index != spr_mick_wall_air)
    {
        if (vspd >= 48)
            vspd = 48
    }
    else if (vspd >= 24)
        vspd = 24
    if (down_tap && (!pound_used) && astate != 1 && astate != 7 && astate != 8 && astate != 3)
    {
        audio_play_sound(snd_mick_groundpound_1, 1, false)
        instance_create_depth(x, (y - 80), 10, obj_particle_dust_jump).image_yscale = -1
        astate = 3
        vspd = 48
        pound_used = 1
    }
    if (vspd < 0)
    {
        if (astate == 0)
        {
        }
    }
    if (vspd >= 0)
    {
        apex = 1
        if (astate == 0)
        {
        }
    }
    if (djump_time > 0)
        djump_time -= 1
    if (wjump_time > 0)
        wjump_time -= 1
    if (wkick_time > 0)
        wkick_time -= 1
    if (place_meeting((x + 2), y, obj_wall) || place_meeting((x + 2), y, obj_object_block_spin))
    {
        if ((!(place_meeting((x + 2), y, obj_wall_nowalljump))) && right_hold && action1_tap && astate != 1 && astate != 7 && astate != 8 && wjump_time == 0 && (!global.lock))
        {
            audio_play_sound(snd_mick_wall_2, 1, false)
            jump_buffer = 0
            instance_create_depth((x + (dir * 60)), y, 10, obj_particle_dust_jump).image_angle = 90
            image_xscale = (-obj_mick.dir)
            apex = 0
            stalled = 0
            y -= 2
            wjump_time = 8
            wkick_time = 1
            vstate = 1
            vspd = -48
            astate = 0
            djump = 0
            djump_time = 1
            if running
                global.hspd = -48
        }
    }
    if (place_meeting((x - 2), y, obj_wall) || place_meeting((x - 2), y, obj_object_block_spin))
    {
        if ((!(place_meeting((x - 2), y, obj_wall_nowalljump))) && left_hold && action1_tap && astate != 1 && astate != 7 && astate != 8 && wjump_time == 0 && (!global.lock))
        {
            audio_play_sound(snd_mick_wall_2, 1, false)
            jump_buffer = 0
            instance_create_depth((x + (dir * 60)), y, 10, obj_particle_dust_jump).image_angle = 90
            image_xscale = (-obj_mick.dir)
            apex = 0
            stalled = 0
            y -= 2
            wjump_time = 8
            wkick_time = 1
            vstate = 1
            vspd = -48
            astate = 0
            djump = 0
            djump_time = 1
            c_time = 0
            if running
                global.hspd = 48
        }
    }
    if (action1_tap && astate != 1 && astate != 7 && astate != 8 && (!djump) && djump_time == 0 && (!global.lock) && c_time == 0)
    {
        if (place_meeting((x + 2), y, obj_wall) || place_meeting((x + 2), y, obj_object_block_spin))
        {
            if ((!left_hold) || place_meeting((x + 2), y, obj_wall_nowalljump))
            {
                jump_buffer = 0
                instance_create_depth(x, (y + 100), 10, obj_particle_dust_jump)
                apex = 0
                stalled = 0
                astate = 4
                djump = 1
                y -= 2
                vstate = 1
                vspd = -36
                djump_sound = irandom_range(0, 7)
                audio_play_sound(snd_mick_doublejump_5, 1, false)
                audio_play_sound(snd_mick_doublejump_6, 1, false)
                script_execute(scr_stopsound_mick_voice)
                if (djump_sound == snd_item_gem_9)
                    audio_play_sound(snd_mick_doublejump_voice_1, 1, false)
                if (djump_sound == snd_mick_ui_wow_time)
                    audio_play_sound(snd_mick_doublejump_voice_2, 1, false)
                if (djump_sound == snd_mick_doublejump_voice_4)
                    audio_play_sound(snd_mick_doublejump_voice_3, 1, false)
                if (djump_sound == snd_mick_spin_1)
                    audio_play_sound(snd_mick_doublejump_voice_4, 1, false)
            }
        }
        if (place_meeting((x - 2), y, obj_wall) || place_meeting((x - 2), y, obj_object_block_spin))
        {
            if ((!right_hold) || place_meeting((x - 2), y, obj_wall_nowalljump))
            {
                jump_buffer = 0
                instance_create_depth(x, (y + 100), 10, obj_particle_dust_jump)
                apex = 0
                stalled = 0
                astate = 4
                djump = 1
                y -= 2
                vstate = 1
                vspd = -36
                djump_sound = irandom_range(0, 7)
                audio_play_sound(snd_mick_doublejump_5, 1, false)
                audio_play_sound(snd_mick_doublejump_6, 1, false)
                script_execute(scr_stopsound_mick_voice)
                if (djump_sound == snd_item_gem_9)
                    audio_play_sound(snd_mick_doublejump_voice_1, 1, false)
                if (djump_sound == snd_mick_ui_wow_time)
                    audio_play_sound(snd_mick_doublejump_voice_2, 1, false)
                if (djump_sound == snd_mick_doublejump_voice_4)
                    audio_play_sound(snd_mick_doublejump_voice_3, 1, false)
                if (djump_sound == snd_mick_spin_1)
                    audio_play_sound(snd_mick_doublejump_voice_4, 1, false)
            }
        }
        if ((!(place_meeting((x - 2), y, obj_wall))) && (!(place_meeting((x + 2), y, obj_wall))) && (!(place_meeting((x - 2), y, obj_object_block_spin))) && (!(place_meeting((x + 2), y, obj_object_block_spin))))
        {
            jump_buffer = 0
            instance_create_depth(x, (y + 100), 10, obj_particle_dust_jump)
            apex = 0
            stalled = 0
            astate = 4
            djump = 1
            y -= 2
            vstate = 1
            vspd = -36
            djump_sound = irandom_range(0, 7)
            audio_play_sound(snd_mick_doublejump_5, 1, false)
            audio_play_sound(snd_mick_doublejump_6, 1, false)
            script_execute(scr_stopsound_mick_voice)
            if (djump_sound == snd_item_gem_9)
                audio_play_sound(snd_mick_doublejump_voice_1, 1, false)
            if (djump_sound == snd_mick_ui_wow_time)
                audio_play_sound(snd_mick_doublejump_voice_2, 1, false)
            if (djump_sound == snd_mick_doublejump_voice_4)
                audio_play_sound(snd_mick_doublejump_voice_3, 1, false)
            if (djump_sound == snd_mick_spin_1)
                audio_play_sound(snd_mick_doublejump_voice_4, 1, false)
        }
        if (astate == 4)
        {
            if (sprite_index != spr_mick_doublejump)
            {
                image_index = 0
                sprite_index = spr_mick_doublejump
                jumpspin_time = 28
            }
            else if (djump == 1)
            {
                image_index = 0
                sprite_index = spr_mick_doublejump
                jumpspin_time = 28
            }
        }
    }
    if (sprite_index == spr_mick_doublejump && image_index > 17)
        image_index = 10
    if (astate != 4)
        audio_stop_sound(snd_mick_doublejump_6)
    if (astate != 4)
        jumpspin_time = 0
}
else
    vspd = 0
if (vstate == 0 || c_time > 0)
{
    if (action1 || jump_buffer)
    {
        if (astate != 1 && astate != 7 && astate != 8 && (!global.lock))
        {
            if (!jump_used)
            {
                jump_buffer = 0
                instance_create_depth(x, (y + 100), 10, obj_particle_dust_jump)
                land_time = 0
                y -= 2
                vstate = 1
                vspd = -48
                jump_used = 1
                image_index = 0
                c_time = 0
                jump_sound = irandom_range(0, 5)
                apex = 0
                audio_play_sound(snd_mick_jump_4, 1, false)
                script_execute(scr_stopsound_mick_voice)
                if (jump_sound == snd_item_gem_9)
                    audio_play_sound(snd_mick_jump_voice_1, 1, false)
                if (jump_sound == snd_mick_ui_wow_time)
                    audio_play_sound(snd_mick_jump_voice_2, 1, false)
                if (jump_sound == snd_mick_doublejump_voice_4)
                    audio_play_sound(snd_mick_jump_voice_3, 1, false)
            }
        }
    }
}
if (sprite_index == spr_mick_doublejump && image_index >= 1 && image_index <= 8)
    instance_create_depth(x, y, 0, obj_hitbox_doublejump)
if (sprite_index == spr_mick_groundpound_fall)
    instance_create_depth(x, (y + 64), 0, obj_hitbox_groundpound)
if (astate == 6 && sprite_index != spr_mick_groundpound_rise && sprite_index != spr_mick_wall_air)
{
    image_index = 0
    sprite_index = spr_mick_groundpound_rise
}
if (sprite_index == spr_mick_groundpound_rise && image_index > 15)
    image_index = 12
if (action4 && astate != 5 && astate != 7 && astate != 8)
{
    running = 1
    land_time = 0
}
else
    running = 0
if (dash_time >= 8)
    global.dodging = 1
else if (hurt_timer > 1)
    global.dodging = 1
else
    global.dodging = 0
if (dash_time < 8 && (!running))
{
    if (global.hspd >= 8)
        global.hspd -= 2
    if (global.hspd <= -8)
        global.hspd += 2
}
else if (dash_time >= 8 || running)
{
    if (astate == 2)
        sprite_index = spr_mick_dash
    if (global.hspd >= 48)
        global.hspd = 48
    if (global.hspd <= -48)
        global.hspd = -48
}
if (left_hold || right_hold)
{
    if ((!walked) && astate == 0 && vstate == 0)
        image_index = 0
    walked = 1
    hstate = 1
    if (vstate == 0)
    {
        if (dash_time <= 8)
        {
            if (global.hspd <= 40 && global.hspd >= -40)
            {
                if ((!running) && astate == 0 && sprite_index != spr_mick_wall_ground)
                {
                    if ((!left_hold) || (!right_hold))
                        sprite_index = spr_mick_walk
                }
                if (running && astate == 0 && sprite_index != spr_mick_wall_ground)
                    sprite_index = spr_mick_run_slow
            }
            else
            {
                if (sprite_index != spr_mick_run_fast)
                {
                }
                if (sprite_index != spr_mick_spin && astate == 0)
                    sprite_index = spr_mick_run_fast
            }
        }
    }
}
else
    hstate = 0
x += global.hspd
if ((!left_hold) && (!right_hold))
{
    walked = 0
    if (global.hspd < 0)
        global.hspd += 2
    if (global.hspd > 0)
        global.hspd -= 2
}
if ((!left_hold) || (!right_hold))
{
    if (left_hold && dash_time < 8 && astate != 7 && astate != 8)
    {
        dir = -1
        if (wkick_time == 0)
        {
            if (!running)
                global.hspd = -20
            else if (global.hspd > -48)
                global.hspd -= 4
            else
                global.hspd = -48
        }
    }
    if (right_hold && dash_time < 8 && astate != 7 && astate != 8)
    {
        dir = 1
        if (wkick_time == 0)
        {
            if (!running)
                global.hspd = 20
            else if (global.hspd < 48)
                global.hspd += 4
            else
                global.hspd = 48
        }
    }
}
else if (!running)
{
    global.hspd = 0
    if (!vstate)
        sprite_index = spr_mick_idle
    else
        sprite_index = spr_mick_jump_fall
}
image_time -= 1
if (image_time == 0)
{
    image_time = 3
    if (global.hspd > 40 || global.hspd < -40)
        instance_create_depth(x, y, 1, obj_afterimage)
    if (dash_time > 8)
        instance_create_depth(x, y, 1, obj_afterimage)
}
if (global.hspd <= 20 || global.hspd >= -20)
{
    if (sprite_index == spr_mick_walk && dust_time == 1)
        instance_create_depth((x - (80 * dir)), (y + 100), 10, obj_particle_dust_small)
}
if (sprite_index == spr_mick_wall_air && dust_time == 1)
    instance_create_depth((x + (60 * dir)), y, 10, obj_particle_dust_small)
if (global.hspd <= 48 || global.hspd >= -48)
{
    if (sprite_index == spr_mick_run_fast && dust_time == 1)
        instance_create_depth((x - (80 * dir)), (y + 40), 10, obj_particle_dust_burst).image_xscale = obj_mick.image_xscale
}
if (action2 && astate != 1 && astate != 7 && astate != 8)
{
    astate = 1
    spin_time = 28
    c_time = 0
    dashed = 0
    image_index = 0
    audio_play_sound(snd_mick_spin_1, 1, false)
    script_execute(scr_stopsound_mick_voice)
    spin_sound = irandom_range(0, 5)
    if (spin_sound == snd_item_gem_9)
    {
    }
    if (spin_sound == snd_mick_ui_wow_time)
    {
    }
    if (spin_sound == snd_mick_doublejump_voice_4)
    {
    }
}
if (astate == 1)
    sprite_index = spr_mick_spin
if (astate != 0 && astate != 1)
    audio_stop_sound(snd_mick_spin_1)
if (spin_time > 1)
{
    spin_time -= 1
    if (!stalled)
        vspd = 1
    if (spin_time == 1)
    {
        stalled = 1
        astate = 0
    }
}
if (jumpspin_time > 0)
    jumpspin_time -= 1
if (sprite_index == spr_mick_spin && image_index >= 1 && image_index <= 8)
    instance_create_depth(x, y, 0, obj_hitbox_spin)
if (action3 && astate != 1 && astate != 2 && astate != 7 && astate != 8 && (!dashed) && (!global.lock))
{
    audio_play_sound(snd_mick_dash_1, 1, false)
    dash_time = 20
    astate = 2
    dashed = 1
    c_time = 0
    global.hspd = (40 * dir)
    image_index = 0
    instance_create_depth((x - (dir * 60)), (y + 50), 10, obj_particle_dust_jump).image_angle = 90
    image_xscale = obj_mick.dir
}
if (dash_time > 0)
{
    dash_time -= 1
    if (!running)
    {
    }
    if (dash_time == 1)
    {
        dashed = 0
        gamepad_set_vibration(0, 0, 0)
        if (astate != 1 && astate != 4)
            astate = 0
    }
}
if (dash_time <= 0)
    dashed = 0
if (dir == -1)
    image_xscale = -1
else
    image_xscale = 1
if (hurt_timer > 0)
    hurt_timer -= 1
if (hurt_timer == 119)
{
    script_execute(scr_screenshake)
    with (obj_mick_ui_face)
        image_yscale = 1.5
    if global.rumble
        gamepad_set_vibration(0, 1, 0.4)
    apex = 0
    stalled = 0
    astate = 5
    djump = 0
    y -= 2
    vstate = 1
    global.hspd = 0
    vspd = -36
    spin_time = 0
    dash_time = 0
    hurt_anim = irandom_range(1, 3)
    audio_play_sound(snd_mick_hurt_1, 1, false)
    script_execute(scr_stopsound_mick_voice)
    hurt_sound = irandom_range(0, 5)
    if (hurt_sound == snd_item_gem_9)
        audio_play_sound(snd_mick_hurt_voice_1, 1, false)
    if (hurt_sound == snd_mick_ui_wow_time)
        audio_play_sound(snd_mick_hurt_voice_2, 1, false)
    if (hurt_sound == snd_mick_doublejump_voice_4)
        audio_play_sound(snd_mick_hurt_voice_3, 1, false)
    if (hurt_sound == snd_mick_spin_1)
        audio_play_sound(snd_mick_hurt_voice_4, 1, false)
    if (hurt_sound == snd_object_walt_death_1)
        audio_play_sound(snd_mick_hurt_voice_5, 1, false)
    if (hurt_sound == snd_object_collapse_building_1)
        audio_play_sound(snd_mick_hurt_voice_6, 1, false)
}
if (hurt_timer > 0)
{
    flash -= 1
    if (flash == -3)
        flash = 4
    if (flash > 0)
        image_alpha = 1
    else
        image_alpha = 0
}
else
    image_alpha = 1
if (astate == 5)
{
    if (hurt_anim == 1)
        sprite_index = spr_mick_hurt_1
    if (hurt_anim == 2)
        sprite_index = spr_mick_hurt_2
    if (hurt_anim == 3)
        sprite_index = spr_mick_hurt_3
}
if (hurt_timer == 109)
{
    if global.rumble
        gamepad_set_vibration(0, 0.4, 1)
}
if (hurt_timer == 99)
    gamepad_set_vibration(0, 0, 0)
if (stun_timer > -25)
    stun_timer -= 1
if (stun_timer == 24)
{
    if global.rumble
        gamepad_set_vibration(0, 0.1, 0.25)
    apex = 0
    stalled = 0
    djump = 0
    spin_time = 0
    dash_time = 0
    sprite_index = spr_mick_stun
}
if (stun_timer == 19)
{
    if global.rumble
        gamepad_set_vibration(0, 0.25, 0.1)
}
if (stun_timer == 14)
    gamepad_set_vibration(0, 0, 0)
if (stun_timer == 0)
    astate = 0
if (global.hp <= 0 || y > (room_height + 500))
{
    if (!instance_exists(obj_particle_mick_dead_1))
    {
        script_execute(scr_screenshake)
        script_execute(scr_stopsound_mick_voice)
        death_sound = irandom_range(0, 2)
        audio_group_stop_all(snd_mick_ui_wow_time)
        audio_play_sound(snd_song_killed, 100, false)
        global.song_playing = 0
        global.song = -1
        if (death_sound == snd_item_gem_9)
            audio_play_sound(snd_mick_death_voice_1, 1, false)
        if (death_sound == snd_mick_ui_wow_time)
            audio_play_sound(snd_mick_death_voice_2, 1, false)
        if (death_sound == snd_mick_doublejump_voice_4)
            audio_play_sound(snd_mick_death_voice_3, 1, false)
        audio_play_sound(snd_mick_death_1, 1, false)
        global.hp = 0
        instance_create_depth(x, y, -10, obj_transition_death)
        instance_create_depth(x, y, -10, obj_particle_mick_dead_1).image_xscale = obj_mick.image_xscale
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        if global.particles
        {
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
        }
        astate = 8
        x = -100000
        y = -100000
    }
}
dust_time -= 1
if (dust_time == 0)
{
    if (sprite_index == spr_mick_run_fast)
        dust_time = 4
    else
        dust_time = 10
}
if (left_hold || right_hold)
{
    if ((!vstate) && sprite_index == spr_mick_walk)
    {
        walk_time -= 1
        walk_sound = choose(0, 1)
        if (walk_time == 0)
        {
            walk_time = 15
            if (walk_sound == snd_item_gem_9)
                audio_play_sound(snd_mick_walk_1, 1, false)
            else
                audio_play_sound(snd_mick_walk_2, 1, false)
        }
    }
    else
        walk_time = 20
}
else
    walk_time = 20
if (left_hold || right_hold)
{
    if ((!vstate) && sprite_index == spr_mick_run_fast)
    {
        run_time -= 1
        if (run_time == 0)
        {
            audio_play_sound(snd_mick_run_1, 1, false)
            run_time = 28
        }
    }
    else
    {
        run_time = 2
        audio_stop_sound(snd_mick_run_1)
    }
}
else
{
    run_time = 2
    audio_stop_sound(snd_mick_run_1)
}
if (left_hold || right_hold)
{
    if ((!vstate) && sprite_index == spr_mick_run_slow)
    {
        run_time_2 -= 1
        if (run_time_2 == 0)
        {
            audio_play_sound(snd_mick_run_2, 1, false)
            run_time_2 = 14
        }
    }
    else
    {
        run_time_2 = 2
        audio_stop_sound(snd_mick_run_2)
    }
}
else
{
    run_time_2 = 2
    audio_stop_sound(snd_mick_run_2)
}
if action4_tap
{
}
if (left_hold || right_hold)
{
    if (vstate && sprite_index == spr_mick_wall_air)
    {
        wall_time -= 1
        if (wall_time == 0)
        {
            wall_time = 60
            audio_play_sound(snd_mick_wall_1, 1, false)
        }
    }
    else
    {
        wall_time = 2
        audio_stop_sound(snd_mick_wall_1)
    }
}
else
{
    wall_time = 2
    audio_stop_sound(snd_mick_wall_1)
}
if (stun_timer == 24)
    audio_play_sound(snd_mick_stun_1, 1, false)
exist_time -= 1
if (exist_time == 0)
{
    instance_activate_region((camera_get_view_x(view_camera[0]) - 2000), (camera_get_view_y(view_camera[0]) - 2000), (camera_get_view_x(view_camera[0]) + 7200), (camera_get_view_y(view_camera[0]) + 5800), true)
    exist_time = 30
}
