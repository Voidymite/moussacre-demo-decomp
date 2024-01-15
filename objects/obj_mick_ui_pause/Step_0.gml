if (!gamepad_is_connected(0))
{
    var pause = keyboard_check_pressed(vk_escape)
    var up_tap = (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
    var down_tap = (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
    var action1 = (keyboard_check_pressed(ord("L")) || keyboard_check_pressed(ord("Z")))
    var action2 = (keyboard_check_pressed(ord("º")) || keyboard_check_pressed(ord("X")))
}
else
{
    pause = gamepad_button_check_pressed(0, gp_start)
    up_tap = (gamepad_button_check_pressed(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.3)
    down_tap = (gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3)
    action1 = gamepad_button_check_pressed(0, gp_face1)
    action2 = gamepad_button_check_pressed(0, gp_face2)
}
if (time > 0)
    time -= 1
if pause
{
    if (time == 0)
    {
        audio_play_sound(snd_menu_deselect, 1, false)
        instance_activate_all()
        instance_destroy()
        instance_destroy(obj_mick_ui_pause_select)
        instance_destroy(obj_mick_ui_pause_select_mick)
    }
}
if action2
{
    row = 0
    audio_play_sound(snd_menu_deselect, 1, false)
    if (tab == 0)
    {
        instance_activate_all()
        instance_destroy()
        instance_destroy(obj_mick_ui_pause_select)
        instance_destroy(obj_mick_ui_pause_select_mick)
    }
    if (tab == 1)
    {
        cooldown = 1
        tab = 0
    }
    if (tab == 2 || tab == 3)
    {
        cooldown = 1
        tab = 1
    }
}
if (gamepad_axis_value(0, gp_axislv) <= 0.3 && gamepad_axis_value(0, gp_axislv) >= -0.3)
    tapped = 0
if (tab == 0)
{
    if (row < 0)
        row = 3
    if (row > 3)
        row = 0
}
if (tab == 1)
{
    if (row < 0)
        row = 5
    if (row > 5)
        row = 0
}
if (tab == 2)
{
    if (row < 0)
        row = 1
    if (row > 1)
        row = 0
}
if (tab == 3)
{
    if (row < 1)
        row = 3
    if (row > 3)
        row = 1
}
if (!tapped)
{
    if up_tap
    {
        row -= 1
        tapped = 1
        audio_play_sound(snd_menu_choose, 1, false)
    }
    if down_tap
    {
        row += 1
        tapped = 1
        audio_play_sound(snd_menu_choose, 1, false)
    }
}
if (cooldown >= 0)
    cooldown -= 1
if (rumble >= 0)
    rumble -= 1
if (tab == 0)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("RESUME") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) - 450)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            audio_stop_sound(snd_song_wheremymindroamsfree)
            instance_activate_all()
            instance_destroy()
            instance_destroy(obj_mick_ui_pause_select)
            instance_destroy(obj_mick_ui_pause_select_mick)
        }
    }
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("SETTINGS") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) - 150)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            cooldown = 1
            tab = 1
            row = 0
        }
    }
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("RESTART") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) + 150)
        }
        if (action1 && (!cooldown))
        {
            audio_stop_sound(snd_song_wheremymindroamsfree)
            script_execute(scr_restart)
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
        }
    }
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("QUIT") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) + 450)
        }
        if (action1 && (!cooldown))
        {
            global.song = -1
            global.song_playing = 0
            global.song = 6
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            audio_stop_sound(snd_song_wheremymindroamsfree)
            instance_create_depth((camera_get_view_x(view_camera[0]) - 1000), camera_get_view_y((view_camera[0] - 1000)), -2000, obj_transition)
            instance_destroy(obj_mick)
            room_goto(rm_mainmenu)
        }
    }
}
if (tab == 1)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("CONTROLS") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) - 600)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            cooldown = 1
            tab = 2
            if (!gamepad_is_connected(0))
                row = 0
            else
                row = 1
        }
    }
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            if global.rumble
                x = ((obj_mick_ui_pause.x + 1600) - (((string_length("RUMBLE ON") / 2) + 2.25) * 140))
            else
                x = ((obj_mick_ui_pause.x + 1600) - (((string_length("RUMBLE OFF") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) - 360)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            if global.rumble
                global.rumble = 0
            else
            {
                global.rumble = 1
                rumble = 12
            }
        }
    }
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("AUDIO") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) - 120)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            tab = 3
            cooldown = 1
            row = 1
        }
    }
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            if (!window_get_fullscreen())
                x = ((obj_mick_ui_pause.x + 1600) - (((string_length("WINDOWED") / 2) + 2.25) * 140))
            else
                x = ((obj_mick_ui_pause.x + 1600) - (((string_length("FULLSCREEN") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) + 120)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            if window_get_fullscreen()
                window_set_fullscreen(false)
            else
                window_set_fullscreen(true)
        }
    }
    if (row == 4)
    {
        with (obj_mick_ui_pause_select)
        {
            if global.particles
                x = ((obj_mick_ui_pause.x + 1600) - (((string_length("PARTICLES HIGH") / 2) + 2.25) * 140))
            else
                x = ((obj_mick_ui_pause.x + 1600) - (((string_length("PARTICLES LOW") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) + 360)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            if global.particles
                global.particles = 0
            else
                global.particles = 1
        }
    }
    if (row == 5)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) + 600)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            tab = 0
            cooldown = 1
            row = 0
        }
    }
}
if (tab == 3)
{
    audio_set_master_gain(0, global.volume)
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("INCREASE") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) - 150)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            rot = -4
            if (volume < 15)
                volume += 1
            cooldown = 1
        }
    }
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("DECREASE") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) + 150)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            rot = 4
            if (volume > 0)
                volume -= 1
            cooldown = 1
        }
    }
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((obj_mick_ui_pause.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140))
            y = ((obj_mick_ui_pause.y + 900) + 450)
        }
        if (action1 && (!cooldown))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            tab = 1
            cooldown = 1
            row = 0
        }
    }
}
if (rot < 0)
    rot += 1
if (rot > 0)
    rot -= 1
if (volume == 15)
    global.volume = 1
if (volume == 14)
    global.volume = 0.93
if (volume == 13)
    global.volume = 0.87
if (volume == 12)
    global.volume = 0.8
if (volume == 11)
    global.volume = 0.73
if (volume == 10)
    global.volume = 0.67
if (volume == 9)
    global.volume = 0.6
if (volume == 8)
    global.volume = 0.53
if (volume == 7)
    global.volume = 0.46
if (volume == 6)
    global.volume = 0.4
if (volume == 5)
    global.volume = 0.33
if (volume == 4)
    global.volume = 0.26
if (volume == 3)
    global.volume = 0.2
if (volume == 2)
    global.volume = 0.13
if (volume == 1)
    global.volume = 0.06
if (volume == 0)
    global.volume = 0
if (tab != 1)
    gamepad_set_vibration(0, 0, 0)
scroll_x += 8
scroll_y += 4.5
if (scroll_x == 3200)
    scroll_x -= 3200
if (scroll_y == 1800)
    scroll_y -= 1800
