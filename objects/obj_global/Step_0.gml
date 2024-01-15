// add mousetraps objects if they arent already there
if ((!instance_exists(obj_mick)) && room == rm_city_1 && (!instance_exists(obj_mick_ui_pause)))
{
    instance_create_depth(400, 1411, -1, obj_mick)
    instance_create_depth(192, 192, -600, obj_mick_ui_face)
    instance_create_depth(3008, 256, -600, obj_mick_ui_gems)
    instance_create_depth(obj_mick.x, obj_mick.y, 0, obj_camera)
}
if (!gamepad_is_connected(0))
    var pause = keyboard_check_pressed(vk_escape)
else
    pause = gamepad_button_check_pressed(0, gp_start)
if (time > 0 && (!instance_exists(obj_mick_ui_pause)) && room != rm_mainmenu)
    time -= 1
if (time == 0 && room != rm_wow && room != rm_mainmenu && room != rm_nickdonnoli && obj_mick.x > -2000)
{
    if pause
    {
        instance_deactivate_all(true)
        audio_pause_all()
        instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1000, obj_mick_ui_pause)
        time = 30
    }
    if ((!gamepad_is_connected(0)) && controller)
    {
        instance_deactivate_all(true)
        audio_pause_all()
        instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1000, obj_mick_ui_pause)
        time = 30
    }
}
if gamepad_is_connected(0)
    controller = 1
else
    controller = 0
if (time >= 29)
{
    global.lock = 1
    with (obj_mick)
        jump_used = 1
}
else
    global.lock = 0
if keyboard_check_pressed(vk_f11)
{
    if window_get_fullscreen()
        window_set_fullscreen(false)
    else
        window_set_fullscreen(true)
}
if ((!instance_exists(obj_mick_ui_pause)) && room != rm_wow && instance_exists(obj_mick) && (!instance_exists(obj_transition_whitefade_1)))
{
    if (global.hour != 9 || global.minute != 59 || global.second != 59 || global.dsecond != 9 || frame != 5)
        frame += 1
    if (frame == 1)
        global.csecond = 1
    if (frame == 2)
        global.csecond = 3
    if (frame == 3)
        global.csecond = 5
    if (frame == 4)
        global.csecond = 6
    if (frame == 5)
    {
        if (global.hour != 9 || global.minute != 59 || global.second != 59 || global.dsecond != 9 || frame != 5)
            global.csecond = 8
        else
            global.csecond = 9
    }
    if (frame == 6)
    {
        global.csecond = 0
        frame = 0
        global.dsecond += 1
    }
    if (global.dsecond == 10)
    {
        global.dsecond = 0
        global.second += 1
    }
    if (global.second == 60)
    {
        global.second = 0
        global.minute += 1
    }
    if (global.minute == 60)
    {
        global.minute = 0
        global.hour += 1
    }
    if (room != rm_mainmenu)
    {
        if (global.second < 10)
            global.second0 = "0"
        else
            global.second0 = ""
        if (global.minute < 10)
            global.minute0 = "0"
        else
            global.minute0 = ""
    }
}
if (global.song == -1)
{
    bgm = 0
    global.song_playing = 0
}
if (global.song == 0)
{
    bgm = audio_play_sound(snd_song_songinsert, 100, true)
    global.song_playing = 1
}
if (global.song == 1)
{
    full = 84.8
    loop = (full - 6.42)
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_flyingmousetrap)
        bgm = audio_play_sound(snd_song_flyingmousetrap, 100, true)
        global.song_playing = 1
    }
}
if (global.song == 2)
{
    full = 81
    loop = (full - 1.5)
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_icydestruction)
        bgm = audio_play_sound(snd_song_icydestruction, 100, true)
        global.song_playing = 1
    }
}
if (global.song == 4)
{
    full = 63.15
    loop = (full - 0)
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_wheremymindroamsfree)
        bgm = audio_play_sound(snd_song_wheremymindroamsfree, 100, true)
        global.song_playing = 1
    }
}
if (global.song == 5)
{
    full = 69.37
    loop = (full - 0)
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_hidinginthedark)
        bgm = audio_play_sound(snd_song_hidinginthedark, 100, true)
        global.song_playing = 1
    }
}
if (global.song == 6)
{
    full = 80
    loop = (full - 1.9)
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_paintthirsty)
        bgm = audio_play_sound(snd_song_paintthirsty, 100, true)
        global.song_playing = 1
    }
}
if (global.song == 7)
{
    full = 37.72
    loop = (full - 1.16)
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_wasifastorwhat)
        bgm = audio_play_sound(snd_song_wasifastorwhat, 100, true)
        global.song_playing = 1
    }
}
if (audio_sound_get_track_position(bgm) > full)
    audio_sound_set_track_position(bgm, (full - loop))
if (audio_sound_get_gain(snd_song_flyingmousetrap) == snd_item_gem_9)
    audio_stop_sound(snd_song_flyingmousetrap)
if (audio_sound_get_gain(snd_song_icydestruction) == snd_item_gem_9)
    audio_stop_sound(snd_song_icydestruction)
if (audio_sound_get_gain(snd_song_hidinginthedark) == snd_item_gem_9)
    audio_stop_sound(snd_song_hidinginthedark)
if ((!instance_exists(obj_particle_mick_dead_1)) && global.lock == 0)
{
    if (room != rm_mainmenu)
        audio_stop_sound(snd_song_paintthirsty)
    if (room != rm_wow)
        audio_stop_sound(snd_song_wasifastorwhat)
    if (room == rm_mainmenu)
    {
        if (global.song != 6)
        {
            global.song_playing = 0
            global.song = 6
        }
    }
    if (room == rm_city_1 || room == rm_city_2)
    {
        if (global.song != 5)
        {
            global.song_playing = 0
            global.song = 5
        }
    }
    if (room == rm_city_3 || room == rm_city_4 || room == rm_city_5 || room == rm_city_6 || room == rm_city_7)
    {
        if (global.song != 1 && global.pigseen)
        {
            global.song_playing = 0
            global.song = 1
        }
        if (global.song != -1 && (!global.pigseen))
        {
            global.song_playing = 0
            global.song = -1
        }
    }
    if (room == rm_city_8)
    {
        if (!instance_exists(obj_object_walt))
        {
            if (global.song != 1 && global.walt)
            {
                global.song_playing = 0
                global.song = 1
            }
            if (global.song != -1 && (!global.walt))
            {
                global.song_playing = 0
                global.song = -1
            }
            if (global.song != -1 && instance_exists(obj_transition_whitefade_1))
            {
                global.song_playing = 0
                global.song = -1
            }
        }
    }
    if (room == rm_wow)
    {
        if (global.song != 7)
        {
            global.song_playing = 0
            global.song = 7
        }
    }
}
