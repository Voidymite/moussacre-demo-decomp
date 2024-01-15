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
if action2
{
    if (tab > 0)
    {
        audio_play_sound(snd_menu_deselect, 1, false)
        ini_open("TheWayILikeIt")
        script_execute(scr_save_settings)
        ini_close()
    }
    if (tab > 0)
        row = 0
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
if ((!tapped) && (!instance_exists(obj_transition)))
{
    if up_tap
    {
        audio_play_sound(snd_menu_choose, 1, false)
        row -= 1
        tapped = 1
    }
    if down_tap
    {
        audio_play_sound(snd_menu_choose, 1, false)
        row += 1
        tapped = 1
    }
}
if (cooldown >= 0)
    cooldown -= 1
if (rumble >= 0)
    rumble -= 1
if (tab != 1)
{
}
if (tab == 0)
{
    with (obj_discord)
        image_alpha = 1
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((800 - (((string_length("PLAY") / 2) + 2.25) * 140)) + 100)
            y = 700
        }
        if (action1 && (!cooldown) && (!instance_exists(obj_transition)))
        {
            script_execute(scr_restart)
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            global.song_playing = 0
            global.song = 5
            with (obj_global)
                time = 30
        }
    }
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = ((800 - (((string_length("SETTINGS") / 2) + 2.25) * 140)) + 100)
            y = 1000
        }
        if (action1 && (!cooldown) && (!instance_exists(obj_transition)))
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
            x = ((800 - (((string_length("QUIT") / 2) + 2.25) * 140)) + 100)
            y = 1300
        }
        if (action1 && (!cooldown) && (!instance_exists(obj_transition)))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            game_end()
        }
    }
    if (row == 3)
    {
        with (obj_discord)
            picked = 1
        with (obj_mick_ui_pause_select)
        {
            x = 1150
            y = 255
        }
        if (action1 && (!cooldown) && (!instance_exists(obj_transition)))
        {
            audio_play_sound(snd_menu_select, 1, false)
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active
                image_index = 0
            }
            url_open("https://discord.gg/hmfdXs6hQK")
        }
    }
    else
    {
        with (obj_discord)
            picked = 0
    }
}
else
{
    with (obj_discord)
        image_alpha = 0
    instance_destroy(obj_discord_text)
}
if (tab == 1)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (1600 - (((string_length("CONTROLS") / 2) + 2.25) * 140))
            y = 300
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
                x = (1600 - (((string_length("RUMBLE ON") / 2) + 2.25) * 140))
            else
                x = (1600 - (((string_length("RUMBLE OFF") / 2) + 2.25) * 140))
            y = 540
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
            x = (1600 - (((string_length("AUDIO") / 2) + 2.25) * 140))
            y = 780
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
                x = (1600 - (((string_length("WINDOWED") / 2) + 2.25) * 140))
            else
                x = (1600 - (((string_length("FULLSCREEN") / 2) + 2.25) * 140))
            y = 1020
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
                x = (1600 - (((string_length("PARTICLES HIGH") / 2) + 2.25) * 140))
            else
                x = (1600 - (((string_length("PARTICLES LOW") / 2) + 2.25) * 140))
            y = 1260
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
            x = (1600 - (((string_length("GO BACK") / 2) + 2.25) * 140))
            y = 1500
        }
        if (action1 && (!cooldown))
        {
            ini_open("TheWayILikeIt")
            script_execute(scr_save_settings)
            ini_close()
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
            x = (1600 - (((string_length("INCREASE") / 2) + 2.25) * 140))
            y = 750
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
            x = (1600 - (((string_length("DECREASE") / 2) + 2.25) * 140))
            y = 1050
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
            x = (1600 - (((string_length("GO BACK") / 2) + 2.25) * 140))
            y = 1350
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
scroll_x += 8
scroll_y += 4.5
if (scroll_x == 3200)
    scroll_x -= 3200
if (scroll_y == 1800)
    scroll_y -= 1800
if (global.rsecond < 10)
    global.second0 = "0"
else
    global.second0 = ""
if (global.rminute < 10)
    global.minute0 = "0"
else
    global.minute0 = ""
if (tab != 1)
    gamepad_set_vibration(0, 0, 0)
anim -= 1
if (anim == 0)
{
    anim = 30
    if (frame == 0 && reset)
    {
        frame = 1
        reset = 0
    }
    if (frame == 1 && reset)
    {
        frame = 2
        reset = 0
    }
    if (frame == 2 && reset)
    {
        frame = 0
        reset = 0
    }
    reset = 1
}
tilt += 0.1
if (tilt >= 360)
    tilt -= 360
