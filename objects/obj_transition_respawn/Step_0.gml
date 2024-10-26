x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if (image_index > 9)
    instance_destroy();

if (activate)
{
    global.hp = global.hp_max;
    global.sp = global.sp_max;
    global.riding = 0;
    global.song_playing = 0;
    global.song = -1;
    global.mommouse = 0;
    obj_mick.image_alpha = 1;
    obj_mick.hurt_timer = 0;
    scr_stopsound();
    gamepad_set_vibration(0, 0, 0);
    
    if (room == rm_test_5)
    {
        if (global.checkpoint == 0)
        {
            room_goto(rm_test_5);
            
            with (obj_mick)
            {
                astate = 0;
                x = 571;
                y = 1155;
            }
            
            with (obj_camera)
            {
                x = 571;
                y = 1155;
            }
        }
        
        if (global.checkpoint == 1)
        {
            room_goto(rm_test_5);
            
            with (obj_mick)
            {
                astate = 0;
                x = 3916;
                y = 1539;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 3916;
                y = 1539;
            }
        }
        
        if (global.checkpoint == 2)
        {
            room_goto(rm_test_5);
            
            with (obj_mick)
            {
                astate = 0;
                x = 13064;
                y = 3203;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 13064;
                y = 3203;
            }
        }
        
        activate = 0;
    }
    
    if (global.level == 1)
    {
        audio_sound_gain(snd_song_hidinginthedark, 1, 0);
        audio_sound_gain(snd_song_flyingmousetrap, 1, 0);
        
        if (global.checkpoint == 0)
        {
            room_goto(rm_city_1);
            
            with (obj_mick)
            {
                astate = 0;
                x = 400;
                y = 1404;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 400;
                y = 1404;
            }
        }
        
        if (global.checkpoint == 1)
        {
            room_goto(rm_city_1);
            
            with (obj_mick)
            {
                astate = 0;
                x = 17344;
                y = 640;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 17344;
                y = 640;
            }
        }
        
        if (global.checkpoint == 2)
        {
            room_goto(rm_city_1);
            
            with (obj_mick)
            {
                astate = 0;
                x = 35264;
                y = 1408;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 35264;
                y = 1408;
            }
        }
        
        if (global.checkpoint == 3)
        {
            room_goto(rm_city_3);
            
            with (obj_mick)
            {
                astate = 0;
                x = 832;
                y = 771;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 832;
                y = 771;
            }
        }
        
        if (global.checkpoint == 4)
        {
            room_goto(rm_city_3);
            
            with (obj_mick)
            {
                astate = 0;
                x = 18112;
                y = 1539;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 18112;
                y = 1539;
            }
        }
        
        if (global.checkpoint == 5)
        {
            if (!global.collapsed)
            {
                room_goto(rm_city_4);
                
                with (obj_mick)
                {
                    astate = 0;
                    x = 960;
                    y = 12419;
                    dir = 1;
                }
                
                with (obj_camera)
                {
                    x = 960;
                    y = 12483;
                }
            }
            else
            {
                room_goto(rm_city_5);
                
                with (obj_mick)
                {
                    astate = 0;
                    x = 1088;
                    y = 1141;
                    dir = 1;
                }
                
                with (obj_camera)
                {
                    x = 1088;
                    y = 1141;
                }
            }
        }
        
        if (global.checkpoint == 6)
        {
            room_goto(rm_city_6);
            
            with (obj_mick)
            {
                astate = 0;
                x = 1152;
                y = 1411;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 1152;
                y = 1411;
            }
        }
        
        if (global.checkpoint == 7)
        {
            room_goto(rm_city_7);
            
            with (obj_mick)
            {
                astate = 0;
                x = 2304;
                y = 1141;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 2304;
                y = 1141;
            }
        }
        
        if (global.checkpoint == 8)
        {
            room_goto(rm_city_8);
            
            with (obj_mick)
            {
                astate = 0;
                x = 1280;
                y = 2691;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 1280;
                y = 2691;
            }
        }
        
        activate = 0;
    }
    
    if (global.level == 2)
    {
        audio_sound_gain(snd_song_whispersofwildsouls, 1, 0);
        audio_sound_gain(snd_song_franticpines, 1, 0);
        
        if (global.checkpoint == 0)
        {
            room_goto(rm_forest_1);
            
            with (obj_mick)
            {
                astate = 0;
                x = 400;
                y = 12163;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 400;
                y = 12163;
            }
        }
        
        if (global.checkpoint == 1)
        {
            room_goto(rm_forest_2);
            
            with (obj_mick)
            {
                astate = 0;
                x = 1024;
                y = 12163;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 1024;
                y = 12163;
            }
        }
        
        if (global.checkpoint == 2)
        {
            room_goto(rm_forest_3);
            
            with (obj_mick)
            {
                astate = 0;
                x = 1088;
                y = 9091;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 1088;
                y = 9091;
            }
        }
        
        if (global.checkpoint == 3)
        {
            room_goto(rm_forest_3);
            
            with (obj_mick)
            {
                astate = 0;
                x = 34368;
                y = 7427;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 34368;
                y = 7427;
            }
        }
        
        if (global.checkpoint == 4)
        {
            room_goto(rm_forest_3);
            
            with (obj_mick)
            {
                astate = 0;
                x = 37760;
                y = 3331;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 37760;
                y = 3331;
            }
        }
        
        if (global.checkpoint == 5)
        {
            room_goto(rm_forest_4);
            
            with (obj_mick)
            {
                astate = 0;
                x = 1120;
                y = 1411;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 1120;
                y = 1411;
            }
        }
        
        if (global.checkpoint == 6)
        {
            room_goto(rm_forest_5);
            
            with (obj_mick)
            {
                astate = 0;
                x = 864;
                y = 1411;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 864;
                y = 1411;
            }
        }
        
        if (global.checkpoint == 7)
        {
            room_goto(rm_forest_6);
            
            with (obj_mick)
            {
                astate = 0;
                x = 3872;
                y = 1411;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 3872;
                y = 1411;
            }
        }
        
        if (global.checkpoint == 8)
        {
            room_goto(rm_forest_7);
            
            with (obj_mick)
            {
                astate = 0;
                x = 1120;
                y = 23939;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 1120;
                y = 23939;
            }
        }
        
        if (global.checkpoint == 9)
        {
            room_goto(rm_forest_7);
            
            with (obj_mick)
            {
                astate = 0;
                x = 8128;
                y = 15747;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 8128;
                y = 15747;
            }
        }
        
        if (global.checkpoint == 10)
        {
            room_goto(rm_forest_10);
            
            with (obj_mick)
            {
                astate = 0;
                x = 6528;
                y = 48259;
                dir = 1;
            }
            
            with (obj_camera)
            {
                x = 6528;
                y = 48259;
            }
        }
        
        activate = 0;
    }
    
    if (global.level == 3)
    {
        audio_sound_gain(snd_song_roborabbitrampage, 1, 0);
        room_goto(rm_os_1);
        
        with (obj_mick)
        {
            astate = 0;
            x = 1408;
            y = 2179;
            dir = 1;
        }
        
        with (obj_camera)
        {
            x = 2048;
            y = 2179;
        }
        
        activate = 0;
    }
}
