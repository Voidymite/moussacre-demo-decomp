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
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_city_2 && x == -256)
    {
        room_goto(rm_city_1)
        with (obj_mick)
        {
            x = 50744
            obj_camera.x = 50744
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
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
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 761
                obj_camera.y = 761
            }
            else
            {
                y = 769
                obj_camera.y = 769
            }
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
            obj_camera.x = 12600
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_city_3 && x == 45696 && (!global.collapsed))
    {
        room_goto(rm_city_4)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 12411
                obj_camera.y = 12411
            }
            else
            {
                y = 12419
                obj_camera.y = 12419
            }
        }
    }
    if (room == rm_city_4 && x == -256)
    {
        room_goto(rm_city_3)
        with (obj_mick)
        {
            x = 45368
            obj_camera.x = 45368
            if (astate == 11)
            {
                y = 2683
                obj_camera.y = 2683
            }
            else
            {
                y = 2691
                obj_camera.y = 2691
            }
        }
    }
    if (room == rm_city_4 && x == 3328)
    {
        global.collapsed = 1
        room_goto(rm_city_6)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_city_5 && x == 3328)
    {
        room_goto(rm_city_6)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_city_6 && x == -256)
    {
        room_goto(rm_city_5)
        with (obj_mick)
        {
            x = 3000
            obj_camera.x = 3000
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_city_3 && x == 45696 && global.collapsed)
    {
        room_goto(rm_city_5)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_city_5 && x == -256)
    {
        room_goto(rm_city_3)
        with (obj_mick)
        {
            x = 45368
            obj_camera.x = 45368
            if (astate == 11)
            {
                y = 2683
                obj_camera.y = 2683
            }
            else
            {
                y = 2691
                obj_camera.y = 2691
            }
        }
    }
    if (room == rm_city_6 && x == 1920)
    {
        room_goto(rm_city_7)
        with (obj_mick)
        {
            x = 640
            obj_camera.x = 640
            y = 256
            obj_camera.y = 256
        }
    }
    if (room == rm_city_7 && x == 512)
    {
        room_goto(rm_city_6)
        with (obj_mick)
        {
            x = 2048
            obj_camera.x = 2048
            y = 11136
            obj_camera.y = 11136
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
            obj_camera.x = 640
            y = 2688
            obj_camera.y = 2688
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
            obj_camera.x = 30336
            y = 256
            obj_camera.y = 256
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
        instance_create_depth((camera_get_view_x(view_camera[0]) - 1000), camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition_whitefade_1)
    }
    if (room == rm_forest_1 && x == 8064)
    {
        room_goto(rm_forest_2)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 12155
                obj_camera.y = 12155
            }
            else
            {
                y = 12163
                obj_camera.y = 12163
            }
        }
    }
    if (room == rm_forest_2 && x == -256)
    {
        room_goto(rm_forest_1)
        with (obj_mick)
        {
            x = 7680
            obj_camera.x = 7680
            if (astate == 11)
            {
                y = 1787
                obj_camera.y = 1787
            }
            else
            {
                y = 1795
                obj_camera.y = 1795
            }
        }
    }
    if (room == rm_forest_2 && y == -256)
    {
        room_goto(rm_forest_3)
        audio_sound_gain(snd_song_franticpines, 0, 0)
        audio_sound_gain(snd_song_franticpines, 1, 1200)
        audio_sound_gain(snd_song_whispersofwildsouls, 0, 1200)
        with (obj_mick)
        {
            x = 512
            obj_camera.x = 512
            y = 9224
            obj_camera.y = 9224
        }
    }
    if (room == rm_forest_3 && x == 256)
    {
        room_goto(rm_forest_2)
        audio_sound_gain(snd_song_whispersofwildsouls, 0, 0)
        audio_sound_gain(snd_song_whispersofwildsouls, 1, 1200)
        audio_sound_gain(snd_song_franticpines, 0, 1200)
        with (obj_mick)
        {
            x = 5248
            obj_camera.x = 5248
            y = 256
            obj_camera.y = 256
        }
    }
    if (room == rm_forest_3 && y == 1408)
    {
        room_goto(rm_forest_4)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_forest_4 && x == -256)
    {
        room_goto(rm_forest_3)
        with (obj_mick)
        {
            x = 68920
            obj_camera.x = 68920
            if (astate == 11)
            {
                y = 1915
                obj_camera.y = 1915
            }
            else
            {
                y = 1923
                obj_camera.y = 1923
            }
        }
    }
    if (room == rm_forest_3 && y == 8064)
    {
        room_goto(rm_forest_5)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_forest_5 && x == -256)
    {
        room_goto(rm_forest_3)
        with (obj_mick)
        {
            x = 68920
            obj_camera.x = 68920
            if (astate == 11)
            {
                y = 8443
                obj_camera.y = 8443
            }
            else
            {
                y = 8451
                obj_camera.y = 8451
            }
        }
    }
    if (room == rm_forest_4 && x == 15744)
    {
        room_goto(rm_forest_5)
        with (obj_mick)
        {
            x = 15936
            obj_camera.x = 15936
            y = 256
            obj_camera.y = 256
        }
    }
    if (room == rm_forest_5 && x == 15744)
    {
        room_goto(rm_forest_4)
        with (obj_mick)
        {
            x = 15936
            obj_camera.x = 15936
            y = 1544
            obj_camera.y = 1544
        }
    }
    if (room == rm_forest_4 && x == 26496)
    {
        room_goto(rm_forest_5)
        with (obj_mick)
        {
            x = 26688
            obj_camera.x = 26688
            y = 256
            obj_camera.y = 256
        }
    }
    if (room == rm_forest_5 && x == 26496)
    {
        room_goto(rm_forest_4)
        with (obj_mick)
        {
            x = 26688
            obj_camera.x = 26688
            y = 1544
            obj_camera.y = 1544
        }
    }
    if (room == rm_forest_4 && y == 768)
    {
        room_goto(rm_forest_6)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 1019
                obj_camera.y = 1019
            }
            else
            {
                y = 1027
                obj_camera.y = 1027
            }
        }
    }
    if (room == rm_forest_6 && y == 384)
    {
        room_goto(rm_forest_4)
        with (obj_mick)
        {
            x = 27264
            obj_camera.x = 27264
            if (astate == 11)
            {
                y = 1403
                obj_camera.y = 1403
            }
            else
            {
                y = 1411
                obj_camera.y = 1411
            }
        }
    }
    if (room == rm_forest_5 && y == 128)
    {
        room_goto(rm_forest_6)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 2555
                obj_camera.y = 2555
            }
            else
            {
                y = 2563
                obj_camera.y = 2563
            }
        }
    }
    if (room == rm_forest_6 && y == 2304)
    {
        room_goto(rm_forest_5)
        with (obj_mick)
        {
            x = 27264
            obj_camera.x = 27264
            if (astate == 11)
            {
                y = 379
                obj_camera.y = 379
            }
            else
            {
                y = 387
                obj_camera.y = 387
            }
        }
    }
    if (room == rm_forest_6 && x == 26112)
    {
        room_goto(rm_forest_7)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 23931
                obj_camera.y = 23931
            }
            else
            {
                y = 23939
                obj_camera.y = 23939
            }
        }
    }
    if (room == rm_forest_7 && y == 23424)
    {
        room_goto(rm_forest_6)
        with (obj_mick)
        {
            x = 25784
            obj_camera.x = 25784
            if (astate == 11)
            {
                y = 1147
                obj_camera.y = 1147
            }
            else
            {
                y = 1155
                obj_camera.y = 1155
            }
        }
    }
    if (room == rm_forest_7 && x == -256 && y == 13440)
    {
        room_goto(rm_forest_8)
        with (obj_mick)
        {
            x = 3000
            obj_camera.x = 3000
            if (astate == 11)
            {
                y = 13819
                obj_camera.y = 13819
            }
            else
            {
                y = 13827
                obj_camera.y = 13827
            }
        }
    }
    if (room == rm_forest_8 && y == 13440)
    {
        room_goto(rm_forest_7)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 13819
                obj_camera.y = 13819
            }
            else
            {
                y = 13827
                obj_camera.y = 13827
            }
        }
    }
    if (room == rm_forest_7 && x == -256 && y == 256)
    {
        room_goto(rm_forest_8)
        with (obj_mick)
        {
            x = 3000
            obj_camera.x = 3000
            if (astate == 11)
            {
                y = 635
                obj_camera.y = 635
            }
            else
            {
                y = 643
                obj_camera.y = 643
            }
        }
    }
    if (room == rm_forest_8 && y == 256)
    {
        room_goto(rm_forest_7)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 635
                obj_camera.y = 635
            }
            else
            {
                y = 643
                obj_camera.y = 643
            }
        }
    }
    if (room == rm_forest_7 && x == 15616 && y == 13440)
    {
        room_goto(rm_forest_9)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 13819
                obj_camera.y = 13819
            }
            else
            {
                y = 13827
                obj_camera.y = 13827
            }
        }
    }
    if (room == rm_forest_9 && y == 13440)
    {
        room_goto(rm_forest_7)
        with (obj_mick)
        {
            x = 15288
            obj_camera.x = 15288
            if (astate == 11)
            {
                y = 13819
                obj_camera.y = 13819
            }
            else
            {
                y = 13827
                obj_camera.y = 13827
            }
        }
    }
    if (room == rm_forest_7 && x == 15616 && y == 256)
    {
        room_goto(rm_forest_9)
        with (obj_mick)
        {
            x = 200
            obj_camera.x = 200
            if (astate == 11)
            {
                y = 635
                obj_camera.y = 635
            }
            else
            {
                y = 643
                obj_camera.y = 643
            }
        }
    }
    if (room == rm_forest_9 && y == 256)
    {
        room_goto(rm_forest_7)
        with (obj_mick)
        {
            x = 15288
            obj_camera.x = 15288
            if (astate == 11)
            {
                y = 635
                obj_camera.y = 635
            }
            else
            {
                y = 643
                obj_camera.y = 643
            }
        }
    }
    if (room == rm_forest_7 && y == -256)
    {
        if (!global.sawdrone)
            audio_sound_gain(snd_song_franticpines, 0, 1200)
        room_goto(rm_forest_10)
        with (obj_mick)
        {
            x = 4928
            obj_camera.x = 4928
            y = 50952
            obj_camera.y = 50952
        }
    }
    if (room == rm_forest_10 && x == 4736)
    {
        if (!global.sawdrone)
        {
            audio_sound_gain(snd_song_franticpines, 0, 0)
            audio_sound_gain(snd_song_franticpines, 1, 1200)
        }
        room_goto(rm_forest_7)
        with (obj_mick)
        {
            x = 6976
            obj_camera.x = 6976
            y = 256
            obj_camera.y = 256
        }
        if (!instance_exists(obj_trigger_dronekill))
            global.sawdrone = 1
    }
    if (room == rm_forest_10 && x == 8192)
    {
        audio_sound_gain(snd_song_franticpines, 0, 1200)
        global.song = -1
        with (obj_mick)
        {
            astate = 8
            x = -100000
            y = -100000
        }
        instance_destroy(obj_mick_ui_face)
        instance_destroy(obj_mick_ui_gems)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 1000), camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition_whitefade_1)
    }
}
