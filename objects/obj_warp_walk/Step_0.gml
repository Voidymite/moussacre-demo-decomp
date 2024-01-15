if place_meeting(x, y, obj_mick)
{
    global.color += instance_number(obj_item_gem_follow)
    global.score += (instance_number(obj_item_gem_follow) * 10)
    audio_group_stop_all(snd_item_gem_9)
    if (room == rm_city_1 && x == 51072)
    {
        room_goto(rm_city_2)
        with (obj_mick)
        {
            x = 200
            y = 1411
        }
        with (obj_camera)
        {
            x = 200
            y = 1411
        }
    }
    if (room == rm_city_2 && x == -256)
    {
        room_goto(rm_city_1)
        with (obj_mick)
        {
            x = 50744
            y = 1411
        }
        with (obj_camera)
        {
            x = 50744
            y = 1411
        }
    }
    if (room == rm_city_2 && x == 12928)
    {
        audio_sound_gain(snd_song_flyingmousetrap, 0, 0)
        audio_sound_gain(snd_song_flyingmousetrap, 1, 1200)
        audio_sound_gain(snd_song_hidinginthedark, 0, 1200)
        room_goto(rm_city_3)
        with (obj_mick)
        {
            x = 200
            y = 769
        }
        with (obj_camera)
        {
            x = 200
            y = 769
        }
    }
    if (room == rm_city_3 && x == -256)
    {
        audio_sound_gain(snd_song_hidinginthedark, 0, 0)
        audio_sound_gain(snd_song_hidinginthedark, 1, 1200)
        audio_sound_gain(snd_song_flyingmousetrap, 0, 1200)
        room_goto(rm_city_2)
        with (obj_mick)
        {
            x = 12600
            y = 1411
        }
        with (obj_camera)
        {
            x = 12600
            y = 1411
        }
    }
    if (room == rm_city_3 && x == 45696 && (!global.collapsed))
    {
        room_goto(rm_city_4)
        with (obj_mick)
        {
            x = 200
            y = 12419
        }
        with (obj_camera)
        {
            x = 200
            y = 12419
        }
    }
    if (room == rm_city_4 && x == -256)
    {
        room_goto(rm_city_3)
        with (obj_mick)
        {
            x = 45368
            y = 2691
        }
        with (obj_camera)
        {
            x = 45368
            y = 2691
        }
    }
    if (room == rm_city_4 && x == 3328)
    {
        global.collapsed = 1
        room_goto(rm_city_6)
        with (obj_mick)
        {
            x = 200
            y = 1411
        }
        with (obj_camera)
        {
            x = 200
            y = 1411
        }
    }
    if (room == rm_city_5 && x == 3328)
    {
        room_goto(rm_city_6)
        with (obj_mick)
        {
            x = 200
            y = 1411
        }
        with (obj_camera)
        {
            x = 200
            y = 1411
        }
    }
    if (room == rm_city_6 && x == -256)
    {
        room_goto(rm_city_5)
        with (obj_mick)
        {
            x = 3000
            y = 1411
        }
        with (obj_camera)
        {
            x = 3000
            y = 1411
        }
    }
    if (room == rm_city_3 && x == 45696 && global.collapsed)
    {
        room_goto(rm_city_5)
        with (obj_mick)
        {
            x = 200
            y = 1411
        }
        with (obj_camera)
        {
            x = 200
            y = 1411
        }
    }
    if (room == rm_city_5 && x == -256)
    {
        room_goto(rm_city_3)
        with (obj_mick)
        {
            x = 45368
            y = 2691
        }
        with (obj_camera)
        {
            x = 45368
            y = 2691
        }
    }
    if (room == rm_city_6 && x == 1920)
    {
        room_goto(rm_city_7)
        with (obj_mick)
        {
            x = 640
            y = 256
        }
        with (obj_camera)
        {
            x = 640
            y = 256
        }
    }
    if (room == rm_city_7 && x == 512)
    {
        room_goto(rm_city_6)
        with (obj_mick)
        {
            x = 2048
            y = 11136
        }
        with (obj_camera)
        {
            x = 2048
            y = 11136
        }
    }
    if (room == rm_city_7 && x == 30208)
    {
        if (!global.walt)
            audio_sound_gain(snd_song_flyingmousetrap, 0, 1200)
        room_goto(rm_city_8)
        with (obj_mick)
        {
            x = 640
            y = 2688
        }
        with (obj_camera)
        {
            x = 640
            y = 2688
        }
    }
    if (room == rm_city_8 && x == 512)
    {
        if (!global.walt)
        {
            audio_sound_gain(snd_song_flyingmousetrap, 0, 0)
            audio_sound_gain(snd_song_flyingmousetrap, 1, 1200)
        }
        room_goto(rm_city_7)
        with (obj_mick)
        {
            x = 30336
            y = 256
        }
        with (obj_camera)
        {
            x = 30336
            y = 256
        }
        if (!instance_exists(obj_object_statue))
            global.walt = 1
    }
    if (room == rm_city_8 && x == 87936)
    {
        audio_sound_gain(snd_song_flyingmousetrap, 0, 1200)
        global.song = -1
        with (obj_mick)
        {
            astate = 8
            x = -100000
            y = -100000
        }
        instance_destroy(obj_mick_ui_face)
        instance_destroy(obj_mick_ui_gems)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 1000), camera_get_view_y((view_camera[0] - 1000)), -2000, obj_transition_whitefade_1)
    }
}
