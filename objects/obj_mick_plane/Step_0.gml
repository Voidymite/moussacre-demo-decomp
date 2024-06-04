if (!gamepad_is_connected(0))
{
    var left_hold = (keyboard_check(ord("A")) ? true : keyboard_check(vk_left))
    var right_hold = (keyboard_check(ord("D")) ? true : keyboard_check(vk_right))
    var up_hold = (keyboard_check(ord("W")) ? true : keyboard_check(vk_up))
    var down_tap = (keyboard_check_pressed(ord("S")) ? true : keyboard_check_pressed(vk_down))
    var down_hold = (keyboard_check(ord("S")) ? true : keyboard_check(vk_down))
    var action1 = (keyboard_check(ord("L")) ? true : keyboard_check(ord("Z")))
    var action1_tap = (keyboard_check_pressed(ord("L")) ? true : keyboard_check_pressed(ord("Z")))
    var action1_release = (keyboard_check_released(ord("L")) ? true : keyboard_check_released(ord("Z")))
    var action2 = (keyboard_check(ord("º")) ? true : keyboard_check(ord("X")))
    var action3 = (keyboard_check_pressed(ord("Þ")) ? true : keyboard_check_pressed(ord("C")))
    var action5 = (keyboard_check(vk_lshift) ? true : keyboard_check(vk_rshift))
    var action5_tap = (keyboard_check_pressed(vk_lshift) ? true : keyboard_check_pressed(vk_rshift))
}
else
{
    gamepad_set_axis_deadzone(0, 0.24)
    left_hold = (gamepad_button_check(0, gp_padl) ? true : gamepad_axis_value(0, gp_axislh) < -0.3)
    right_hold = (gamepad_button_check(0, gp_padr) ? true : gamepad_axis_value(0, gp_axislh) > 0.3)
    up_hold = (gamepad_button_check(0, gp_padu) ? true : gamepad_axis_value(0, gp_axislv) < -0.3)
    down_tap = (gamepad_button_check_pressed(0, gp_padd) ? true : gamepad_axis_value(0, gp_axislv) > 0.5)
    down_hold = (gamepad_button_check(0, gp_padd) ? true : gamepad_axis_value(0, gp_axislv) > 0.3)
    action1 = gamepad_button_check(0, gp_face1)
    action1_tap = gamepad_button_check_pressed(0, gp_face1)
    action1_release = gamepad_button_check_released(0, gp_face1)
    action2 = gamepad_button_check(0, gp_face3)
    action3 = gamepad_button_check_pressed(0, gp_face2)
    action5 = gamepad_button_check(0, gp_shoulderrb)
    action5_tap = gamepad_button_check_pressed(0, gp_shoulderrb)
}
if (global.hspd <= 48)
    global.hspd += 2
if (global.hspd > 48)
    global.hspd = 48
x += global.hspd
y += vspd
rot = tilt
obj_mick.x = obj_mick_plane.x
obj_mick.y = obj_mick_plane.y
obj_mick.astate = 8
obj_mick.dir = 1
if (tilt >= 16)
    tilt = 16
if (tilt <= -16)
    tilt = -16
if up_hold
{
    tilt += tilt_spd
    vspd = -40
}
if down_hold
{
    tilt -= tilt_spd
    vspd = 40
}
if ((!up_hold) && (!down_hold))
{
    if (tilt > 0)
        tilt -= tilt_spd
    if (tilt < 0)
        tilt += tilt_spd
    vspd = 0
}
if (up_hold && down_hold)
{
    if (tilt > 0)
        tilt -= tilt_spd
    if (tilt < 0)
        tilt += tilt_spd
    vspd = 0
}
if (time > 0)
{
    time -= 1
    tilt = 0 + time / 2
}
global.hspd = 48
if action2
    shoot -= 1
if (!action2)
    shoot = 6
if (shoot == 0)
    shoot = 6
if (shoot == 5)
{
    sound = irandom_range(0, 2)
    if (sound == 0)
        audio_play_sound(snd_mick_plane_shoot_1, 1, 0)
    if (sound == 1)
        audio_play_sound(snd_mick_plane_shoot_2, 1, 0)
    if (sound == 2)
        audio_play_sound(snd_mick_plane_shoot_3, 1, 0)
    instance_create_depth((x + 220), (y + 50), (depth - 1), obj_object_plane_bullet)
}
if (obj_mick.hurt_timer >= 60)
    sprite_index = spr_object_plane_fly_mid_hurt
else
    sprite_index = spr_object_plane_fly_mid
if place_meeting(x, y, obj_wall_fake)
    global.infakewall = 1
else
    global.infakewall = 0
if place_meeting((x + global.hspd), y, obj_wall)
{
    while (!(place_meeting((x + sign(global.hspd)), y, obj_wall)))
        x += sign(global.hspd)
    instance_create_depth(x, y, -10, obj_particle_burst)
    global.hspd = 0
    global.hp = 0
    audio_play_sound(snd_mick_plane_explode, 1, 0)
    audio_play_sound(snd_mick_plane_explode, 1, 0)
    instance_create_depth(x, y, -10, obj_particle_plane_dead)
    instance_destroy()
}
if (global.hp <= 0 && (!instance_exists(obj_particle_plane_dead)))
{
    instance_create_depth(x, y, -10, obj_particle_burst)
    global.hspd = 0
    global.hp = 0
    audio_play_sound(snd_mick_plane_explode, 1, 0)
    audio_play_sound(snd_mick_plane_explode, 1, 0)
    instance_create_depth(x, y, -10, obj_particle_plane_dead)
    instance_destroy()
}
if place_meeting((x + global.hspd), y, obj_object_block_spin)
{
    while (!(place_meeting((x + sign(global.hspd)), y, obj_object_block_spin)))
        x += sign(global.hspd)
    global.hspd = 0
}
if place_meeting((x + global.hspd), y, obj_object_block_uni)
{
    while (!(place_meeting((x + sign(global.hspd)), y, obj_object_block_uni)))
        x += sign(global.hspd)
    global.hspd = 0
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
    with (obj_mick)
    {
        if (hurt_timer == 0)
        {
            if (dash_time <= 8)
            {
                instance_create_depth(x, y, -10, obj_particle_burst)
                hurt_timer = 120
                global.hp -= 1
            }
            else if global.rumble
                gamepad_set_vibration(0, 0.025, 0.025)
        }
    }
}
if (dir == -1)
    image_xscale = -1
else
    image_xscale = 1
if (hurt_timer > 0)
    hurt_timer -= 1
if (hurt_timer == 119)
{
    repeat (5)
        instance_create_depth((obj_mick.x + (irandom_range(-100, 100))), (obj_mick.y + (irandom_range(-100, 100))), -9, obj_particle_paint_blackwhite)
    repeat (15)
    {
        if global.particles
            instance_create_depth((obj_mick.x + (irandom_range(-100, 100))), (obj_mick.y + (irandom_range(-100, 100))), -9, obj_particle_paint_blackwhite)
    }
    scr_screenshake(10);
    with (obj_mick_ui_face)
        image_yscale = 1.5
    if global.rumble
        gamepad_set_vibration(0, 1, 0.4)
    apex = 0
    stalled = 0
    djump = 0
    y -= 2
    global.hspd = 0
    spin_time = 0
    dash_time = 0
    hurt_anim = irandom_range(1, 3)
    audio_play_sound(snd_mick_hurt_1, 1, 0)
    scr_stopsound_mick_voice()
    hurt_sound = irandom_range(0, 5)
    if (hurt_sound == 0)
        audio_play_sound(snd_mick_hurt_voice_1, 1, 0)
    if (hurt_sound == 1)
        audio_play_sound(snd_mick_hurt_voice_2, 1, 0)
    if (hurt_sound == 2)
        audio_play_sound(snd_mick_hurt_voice_3, 1, 0)
    if (hurt_sound == 3)
        audio_play_sound(snd_mick_hurt_voice_4, 1, 0)
    if (hurt_sound == 4)
        audio_play_sound(snd_mick_hurt_voice_5, 1, 0)
    if (hurt_sound == 5)
        audio_play_sound(snd_mick_hurt_voice_6, 1, 0)
}
if (obj_mick.hurt_timer > 0)
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
dust_time -= 1
if (dust_time == 0)
{
    if (sprite_index == spr_mick_run_fast)
        dust_time = 4
    else
        dust_time = 10
}
if (astate == 9)
{
    sprite_index = spr_mick_vine
    if action1_tap
        astate = 0
    if action2
        astate = 1
    if action3
        astate = 2
}
if (stun_timer == 24)
    audio_play_sound(snd_mick_stun_1, 1, 0)
exist_time -= 1
if (exist_time == 0)
{
    instance_activate_region((camera_get_view_x(view_camera[0]) - 2000), (camera_get_view_y(view_camera[0]) - 2000), (camera_get_view_x(view_camera[0]) + 7200), (camera_get_view_y(view_camera[0]) + 5800), true)
    exist_time = 30
}
