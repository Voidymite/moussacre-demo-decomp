var left_hold, right_hold, up_hold, down_tap, down_hold, down_release, action1, action1_tap, action1_release, action2, action3, action4, action5, action5_tap;

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
}

if (global.hspd <= 48)
    global.hspd += 2;

if (global.hspd > 48)
    global.hspd = 48;

x += global.hspd;
y += vspd;
rot = tilt;
obj_mick.x = obj_mick_plane.x;
obj_mick.y = obj_mick_plane.y;
obj_mick.astate = 8;
obj_mick.dir = 1;

if (tilt >= 16)
    tilt = 16;

if (tilt <= -16)
    tilt = -16;

if (up_hold)
{
    tilt += tilt_spd;
    vspd = -40;
}

if (down_hold)
{
    tilt -= tilt_spd;
    vspd = 40;
}

if (!up_hold && !down_hold)
{
    if (tilt > 0)
        tilt -= tilt_spd;
    
    if (tilt < 0)
        tilt += tilt_spd;
    
    vspd = 0;
}

if (up_hold && down_hold)
{
    if (tilt > 0)
        tilt -= tilt_spd;
    
    if (tilt < 0)
        tilt += tilt_spd;
    
    vspd = 0;
}

if (time > 0)
{
    time--;
    tilt = 0 + (time / 2);
}

global.hspd = 48;

if (action2)
    shoot--;

if (!action2)
    shoot = 6;

if (shoot == 0)
    shoot = 6;

if (shoot == 5)
{
    sound = irandom_range(0, 2);
    
    if (sound == snd_background_city_1)
        audio_play_sound(snd_mick_plane_shoot_1, 1, 0);
    
    if (sound == snd_background_forest_1)
        audio_play_sound(snd_mick_plane_shoot_2, 1, 0);
    
    if (sound == snd_background_rain_1)
        audio_play_sound(snd_mick_plane_shoot_3, 1, 0);
    
    instance_create_depth(x + 220, y + 50, depth - 1, obj_object_plane_bullet);
}

if (obj_mick.hurt_timer >= 60)
    sprite_index = spr_object_plane_fly_mid_hurt;
else
    sprite_index = spr_object_plane_fly_mid;

if (place_meeting(x, y, obj_wall_fake))
    global.infakewall = 1;
else
    global.infakewall = 0;

if (place_meeting(x + global.hspd, y, obj_wall))
{
    while (!place_meeting(x + sign(global.hspd), y, obj_wall))
        x += sign(global.hspd);
    
    instance_create_depth(x, y, -10, obj_particle_burst);
    global.hspd = 0;
    global.hp = 0;
    global.score -= (global.hp * 500);
    
    if (global.numbers && global.difficulty != 2)
    {
        instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = -500;
        instance_create_depth(-100, -100, -10001, obj_particle_addsub_2).num = -1;
    }
    
    audio_play_sound(snd_mick_plane_explode, 1, 0);
    audio_play_sound(snd_mick_plane_explode, 1, 0);
    instance_create_depth(x, y, -10, obj_particle_plane_dead);
    instance_destroy();
}

if (global.hp <= 0 && !instance_exists(obj_particle_plane_dead))
{
    instance_create_depth(x, y, -10, obj_particle_burst);
    global.hspd = 0;
    global.hp = 0;
    global.score -= (global.hp * 500);
    
    if (global.numbers && global.difficulty != 2)
    {
        instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = -500;
        instance_create_depth(-100, -100, -10001, obj_particle_addsub_2).num = -1;
    }
    
    audio_play_sound(snd_mick_plane_explode, 1, 0);
    audio_play_sound(snd_mick_plane_explode, 1, 0);
    instance_create_depth(x, y, -10, obj_particle_plane_dead);
    instance_destroy();
}

if (place_meeting(x + global.hspd, y, obj_object_block_spin))
{
    while (!place_meeting(x + sign(global.hspd), y, obj_object_block_spin))
        x += sign(global.hspd);
    
    global.hspd = 0;
}

if (place_meeting(x + global.hspd, y, obj_object_block_uni))
{
    while (!place_meeting(x + sign(global.hspd), y, obj_object_block_uni))
        x += sign(global.hspd);
    
    global.hspd = 0;
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

if (place_meeting(x, y, obj_wall))
{
    if (place_meeting(x, y - 10, obj_wall))
        y += 10;
    else
        y -= 10;
    
    vspd = 0;
}

if (place_meeting(x, y, obj_object_block_spin))
{
    if (place_meeting(x, y - 10, obj_object_block_groundpound))
        y += 10;
    else
        y -= 10;
    
    vspd = 0;
}

if (place_meeting(x, y, obj_object_block_uni))
{
    if (place_meeting(x, y - 10, obj_object_block_uni))
        y += 10;
    else
        y -= 10;
    
    vspd = 0;
}

if (place_meeting(x + global.hspd, y + vspd, obj_wall))
{
    while (!place_meeting(x + sign(global.hspd), y + sign(vspd), obj_wall))
    {
        x += sign(global.hspd);
        y += sign(vspd);
    }
    
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
    
    global.hspd = 0;
    vspd = 0;
    
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

if (dir == -1)
    image_xscale = -1;
else
    image_xscale = 1;

if (hurt_timer > 0)
    hurt_timer--;

if (hurt_timer == 119)
{
    repeat (5)
        instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
    
    repeat (15)
    {
        if (global.particles)
            instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
    }
    
    scr_screenshake();
    
    with (obj_mick_ui_face)
        image_yscale = 1.5;
    
    if (global.rumble)
        gamepad_set_vibration(0, 1, 0.4);
    
    apex = 0;
    stalled = 0;
    
    if (global.badge != 1)
        djump = 0;
    else
        djump = -1;
    
    y -= 2;
    global.hspd = 0;
    spin_time = 0;
    dash_time = 0;
    hurt_anim = irandom_range(1, 3);
    audio_play_sound(snd_mick_hurt_1, 1, 0);
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

if (obj_mick.hurt_timer > 0)
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
        gamepad_set_vibration(0, 0.4, 1);
}

if (hurt_timer == 99)
    gamepad_set_vibration(0, 0, 0);

if (stun_timer > -25)
    stun_timer--;

if (stun_timer == 24)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0.1, 0.25);
    
    apex = 0;
    stalled = 0;
    
    if (global.badge != 1)
        djump = 0;
    else
        djump = -1;
    
    spin_time = 0;
    dash_time = 0;
    sprite_index = spr_mick_stun;
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

dust_time--;

if (dust_time == 0)
{
    if (sprite_index == spr_mick_run_fast)
        dust_time = 4;
    else
        dust_time = 10;
}

if (astate == 9)
{
    sprite_index = spr_mick_vine;
    
    if (action1_tap)
        astate = 0;
    
    if (action2)
        astate = 1;
    
    if (action3)
        astate = 2;
}

if (stun_timer == 24)
    audio_play_sound(snd_mick_stun_1, 1, 0);

exist_time--;

if (exist_time == 0)
{
    instance_activate_region(camera_get_view_x(view_camera[0]) - 2000, camera_get_view_y(view_camera[0]) - 2000, camera_get_view_x(view_camera[0]) + 7200, camera_get_view_y(view_camera[0]) + 5800, true);
    exist_time = 30;
}
