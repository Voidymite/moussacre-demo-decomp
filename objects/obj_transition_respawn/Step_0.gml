x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])
if (image_index > 9)
    instance_destroy()
if activate
{
    global.hp = global.hp_max
    global.song_playing = 0
    global.song = -1
    if (room == rm_test_5)
    {
        if (global.checkpoint == 0)
        {
            room_goto(rm_test_5)
            with (obj_mick)
            {
                astate = 0
                x = 571
                y = 1155
                dir = 1
            }
            with (obj_camera)
            {
                x = 571
                y = 1155
            }
        }
        if (global.checkpoint == 1)
        {
            room_goto(rm_test_5)
            with (obj_mick)
            {
                astate = 0
                x = 3916
                y = 1539
                dir = 1
            }
            with (obj_camera)
            {
                x = 3916
                y = 1539
            }
        }
        if (global.checkpoint == 2)
        {
            room_goto(rm_test_5)
            with (obj_mick)
            {
                astate = 0
                x = 13064
                y = 3203
                dir = 1
            }
            with (obj_camera)
            {
                x = 13064
                y = 3203
            }
        }
        activate = 0
    }
    if (global.level == 1)
    {
        if (global.checkpoint == 0)
        {
            room_goto(rm_city_1)
            with (obj_mick)
            {
                astate = 0
                x = 400
                y = 1404
                dir = 1
            }
            with (obj_camera)
            {
                x = 400
                y = 1404
            }
        }
        if (global.checkpoint == 1)
        {
            room_goto(rm_city_1)
            with (obj_mick)
            {
                astate = 0
                x = 17344
                y = 640
                dir = 1
            }
            with (obj_camera)
            {
                x = 17344
                y = 640
            }
        }
        if (global.checkpoint == 2)
        {
            room_goto(rm_city_1)
            with (obj_mick)
            {
                astate = 0
                x = 35264
                y = 1408
                dir = 1
            }
            with (obj_camera)
            {
                x = 35264
                y = 1408
            }
        }
        if (global.checkpoint == 3)
        {
            room_goto(rm_city_3)
            with (obj_mick)
            {
                astate = 0
                x = 832
                y = 771
                dir = 1
            }
            with (obj_camera)
            {
                x = 832
                y = 771
            }
        }
        if (global.checkpoint == 4)
        {
            room_goto(rm_city_3)
            with (obj_mick)
            {
                astate = 0
                x = 18112
                y = 1539
                dir = 1
            }
            with (obj_camera)
            {
                x = 18112
                y = 1539
            }
        }
        if (global.checkpoint == 5)
        {
            if (!global.collapsed)
            {
                room_goto(rm_city_4)
                with (obj_mick)
                {
                    astate = 0
                    x = 960
                    y = 12419
                    dir = 1
                }
                with (obj_camera)
                {
                    x = 960
                    y = 12483
                }
            }
            else
            {
                room_goto(rm_city_5)
                with (obj_mick)
                {
                    astate = 0
                    x = 1088
                    y = 1141
                    dir = 1
                }
                with (obj_camera)
                {
                    x = 1088
                    y = 1141
                }
            }
        }
        if (global.checkpoint == 6)
        {
            room_goto(rm_city_6)
            with (obj_mick)
            {
                astate = 0
                x = 1152
                y = 1141
                dir = 1
            }
            with (obj_camera)
            {
                x = 1152
                y = 1141
            }
        }
        if (global.checkpoint == 7)
        {
            room_goto(rm_city_7)
            with (obj_mick)
            {
                astate = 0
                x = 2304
                y = 1141
                dir = 1
            }
            with (obj_camera)
            {
                x = 2304
                y = 1141
            }
        }
        if (global.checkpoint == 8)
        {
            room_goto(rm_city_8)
            with (obj_mick)
            {
                astate = 0
                x = 1280
                y = 2691
                dir = 1
            }
            with (obj_camera)
            {
                x = 1280
                y = 2691
            }
        }
        activate = 0
    }
}
