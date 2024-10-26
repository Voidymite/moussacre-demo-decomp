var pause;

if (global.difficulty == 0)
{
    global.hp_max = 5;
    global.sp_max = 5;
    
    if (instance_exists(obj_mick))
        obj_mick.djump_max = 1;
}

if (global.difficulty == 1)
{
    global.hp_max = 10;
    global.sp_max = 5;
    
    if (instance_exists(obj_mick))
        obj_mick.djump_max = 3;
}

if (global.difficulty == 2)
{
    max_time--;
    
    if (instance_exists(obj_mick))
    {
        if (obj_mick.astate != 8 && max_time == 0)
        {
            max_time = 10;
            global.hp_max = 99;
            global.hp = 99;
        }
    }
    
    global.sp_max = 99;
    global.sp = 99;
    
    if (instance_exists(obj_mick))
        obj_mick.djump = 0;
}
else
{
    max_time = 10;
}

if (!instance_exists(obj_mick) && !instance_exists(obj_mick_ui_pause_new))
{
    if (room == rm_city_1 || room == rm_forest_1 || room == rm_os_1 || room == rm_vs)
    {
        if (room == rm_city_1)
            instance_create_depth(400, 1411, -1, obj_mick);
        
        if (room == rm_forest_1)
            instance_create_depth(400, 12163, -1, obj_mick);
        
        if (room == rm_os_1)
            instance_create_depth(1408, 2179, -1, obj_mick);
        
        if (room == rm_vs)
            instance_create_depth(-10000, -10000, -1, obj_mick);
        
        instance_create_depth(192, 192, -600, obj_mick_ui_face);
        instance_create_depth(3008, 256, -600, obj_mick_ui_gems);
        
        if (room == rm_os_1)
            instance_create_depth(2048, obj_mick.y, 0, obj_camera);
        else
            instance_create_depth(obj_mick.x, obj_mick.y, 0, obj_camera);
    }
}

pause = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start);

if (time > 0 && !instance_exists(obj_mick_ui_pause_new) && room != rm_mainmenu)
    time--;

if (time == 0 && room != rm_wow && room != rm_mainmenu && room != rm_nickdonnoli && obj_mick.x > -2000)
{
    if (pause)
    {
        instance_deactivate_all(true);
        audio_pause_all();
        instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1000, obj_mick_ui_pause_new);
        time = 30;
    }
    
    if (!gamepad_is_connected(0) && controller)
    {
        instance_deactivate_all(true);
        audio_pause_all();
        instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1000, obj_mick_ui_pause_new);
        time = 30;
    }
}

if (gamepad_is_connected(0))
    controller = 1;
else
    controller = 0;

if (time >= 29)
{
    global.lock = 1;
    
    with (obj_mick)
        jump_used = 1;
}
else
{
    global.lock = 0;
}

if (keyboard_check_pressed(vk_f11))
{
    if (window_get_fullscreen())
    {
        window_set_fullscreen(false);
        global.fullscreen = 0;
        
        if (global.resolution == 0)
            window_set_size(480, 270);
        
        if (global.resolution == 1)
            window_set_size(1024, 576);
        
        if (global.resolution == 2)
            window_set_size(1280, 720);
        
        if (global.resolution == 3)
            window_set_size(1600, 900);
        
        if (global.resolution == 4)
            window_set_size(1920, 1080);
        
        if (global.resolution == 5)
            window_set_size(2560, 1440);
        
        if (global.resolution == 6)
            window_set_size(3200, 1800);
        
        if (global.resolution == 7)
            window_set_size(3840, 2160);
    }
    else
    {
        window_set_fullscreen(true);
        global.fullscreen = 1;
    }
}

if (global.resolution < 0 || global.resolution > 7)
{
    global.resolution = 3;
    window_set_size(1600, 900);
}

if (!instance_exists(obj_mick_ui_pause_new) && room != rm_mainmenu && room != rm_wow && room != rm_vs && room != rm_finisher && room != rm_casual && instance_exists(obj_mick) && !instance_exists(obj_transition_whitefade_1))
{
    if (global.hour != 9 || global.minute != 59 || global.second != 59 || global.dsecond != 9 || frame != 5)
        frame++;
    
    if (frame == 1)
        global.csecond = 1;
    
    if (frame == 2)
        global.csecond = 3;
    
    if (frame == 3)
        global.csecond = 5;
    
    if (frame == 4)
        global.csecond = 6;
    
    if (frame == 5)
    {
        if (global.hour != 9 || global.minute != 59 || global.second != 59 || global.dsecond != 9 || frame != 5)
            global.csecond = 8;
        else
            global.csecond = 9;
    }
    
    if (frame == 6)
    {
        global.csecond = 0;
        frame = 0;
        global.dsecond++;
    }
    
    if (global.dsecond == 10)
    {
        global.dsecond = 0;
        global.second++;
    }
    
    if (global.second == 60)
    {
        global.second = 0;
        global.minute++;
    }
    
    if (global.minute == 60)
    {
        global.minute = 0;
        global.hour++;
    }
}

if (global.second < 10)
    global.second0 = "0";
else
    global.second0 = "";

if (global.minute < 10)
    global.minute0 = "0";
else
    global.minute0 = "";

if (global.song == -1)
{
    bgm = 0;
    global.song_playing = 0;
}

if (global.song == 0)
{
    bgm = audio_play_sound(snd_song_songinsert, 100, 1);
    global.song_playing = 1;
}

if (global.song == 1)
{
    full = 84.8;
    loop = full - 6.42;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_flyingmousetrap);
        bgm = audio_play_sound(snd_song_flyingmousetrap, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 2)
{
    full = 81;
    loop = full - 1.5;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_icydestruction);
        bgm = audio_play_sound(snd_song_icydestruction, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 4)
{
    full = 63.15;
    loop = full - 0;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_wheremymindroamsfree);
        bgm = audio_play_sound(snd_song_wheremymindroamsfree, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 5)
{
    full = 69.37;
    loop = full - 0;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_hidinginthedark);
        bgm = audio_play_sound(snd_song_hidinginthedark, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 6)
{
    full = 80;
    loop = full - 1.9;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_paintthirsty);
        bgm = audio_play_sound(snd_song_paintthirsty, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 7)
{
    full = 37.72;
    loop = full - 1.16;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_wasifastorwhat);
        bgm = audio_play_sound(snd_song_wasifastorwhat, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 8)
{
    full = 128;
    loop = full;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_franticpines);
        bgm = audio_play_sound(snd_song_franticpines, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 10)
{
    full = 47.21;
    loop = full;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_whispersofwildsouls);
        bgm = audio_play_sound(snd_song_whispersofwildsouls, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 11)
{
    full = 69.75;
    loop = full;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_sawbladesymphony);
        bgm = audio_play_sound(snd_song_sawbladesymphony, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 12)
{
    full = 46.85;
    loop = full - 10.28;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_xquisite);
        bgm = audio_play_sound(snd_song_xquisite, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 14)
{
    full = 105;
    loop = full - 0.78;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_roborabbitrampage);
        bgm = audio_play_sound(snd_song_roborabbitrampage, 100, 1);
        global.song_playing = 1;
    }
}

if (global.song == 16)
{
    full = 45.84;
    loop = full - 2.69;
    
    if (!global.song_playing)
    {
        audio_stop_sound(snd_song_swissarmyknife);
        bgm = audio_play_sound(snd_song_swissarmyknife, 100, 1);
        global.song_playing = 1;
    }
}

if (audio_sound_get_track_position(bgm) > full)
    audio_sound_set_track_position(bgm, full - loop);

if (audio_sound_get_gain(snd_song_flyingmousetrap) == snd_background_city_1)
    audio_stop_sound(snd_song_flyingmousetrap);

if (audio_sound_get_gain(snd_song_icydestruction) == snd_background_city_1)
    audio_stop_sound(snd_song_icydestruction);

if (audio_sound_get_gain(snd_song_hidinginthedark) == snd_background_city_1)
    audio_stop_sound(snd_song_hidinginthedark);

if (audio_sound_get_gain(snd_song_franticpines) == snd_background_city_1)
    audio_stop_sound(snd_song_franticpines);

if (audio_sound_get_gain(snd_song_whispersofwildsouls) == snd_background_city_1)
    audio_stop_sound(snd_song_whispersofwildsouls);

if (audio_sound_get_gain(snd_song_sawbladesymphony) == snd_background_city_1)
    audio_stop_sound(snd_song_sawbladesymphony);

if (audio_sound_get_gain(snd_song_roborabbitrampage) == snd_background_city_1)
    audio_stop_sound(snd_song_roborabbitrampage);

if (!instance_exists(obj_particle_mick_dead_1) && global.lock == 0)
{
    if (room != rm_mainmenu)
        audio_stop_sound(snd_song_paintthirsty);
    
    if (room != rm_wow)
    {
        audio_stop_sound(snd_song_wasifastorwhat);
        audio_stop_sound(snd_song_xquisite);
    }
    
    if (room == rm_mainmenu)
    {
        if (global.song != 6)
        {
            global.song_playing = 0;
            global.song = 6;
        }
    }
    
    if (room == rm_city_1 || room == rm_city_2)
    {
        if (global.song != 5)
        {
            global.song_playing = 0;
            global.song = 5;
        }
    }
    
    if (room == rm_city_3 || room == rm_city_4 || room == rm_city_5 || room == rm_city_6 || room == rm_city_7)
    {
        if (global.song != 1 && global.pigseen)
        {
            global.song_playing = 0;
            global.song = 1;
        }
        
        if (global.song != -1 && !global.pigseen)
        {
            global.song_playing = 0;
            global.song = -1;
        }
    }
    
    if (room == rm_city_8)
    {
        if (!instance_exists(obj_object_walt))
        {
            if (global.song != 1 && global.walt)
            {
                global.song_playing = 0;
                global.song = 1;
            }
            
            if (global.song != -1 && global.song != 2 && !global.walt)
            {
                global.song_playing = 0;
                global.song = -1;
            }
            
            if (global.song != -1 && instance_exists(obj_transition_whitefade_1))
            {
                global.song_playing = 0;
                global.song = -1;
            }
        }
    }
    
    if (room == rm_forest_1 || room == rm_forest_2)
    {
        if (global.song != 10)
        {
            global.song_playing = 0;
            global.song = 10;
        }
    }
    
    if (room == rm_forest_3 || room == rm_forest_4 || room == rm_forest_5 || room == rm_forest_6 || room == rm_forest_7 || room == rm_forest_8 || room == rm_forest_9)
    {
        if (global.song != 8 && global.turtleseen)
        {
            global.song_playing = 0;
            global.song = 8;
        }
        
        if (global.song != -1 && !global.turtleseen)
        {
            global.song_playing = 0;
            global.song = -1;
        }
    }
    
    if (room == rm_forest_10)
    {
        if (!instance_exists(obj_object_sawdrone))
        {
            if (global.song != 8 && global.sawdrone)
            {
                global.song_playing = 0;
                global.song = 8;
            }
            
            if (global.song != -1 && global.song != 11 && !global.sawdrone)
            {
                global.song_playing = 0;
                global.song = -1;
            }
            
            if (global.song != -1 && instance_exists(obj_transition_whitefade_1))
            {
                global.song_playing = 0;
                global.song = -1;
            }
        }
    }
    
    if (room == rm_os_1)
    {
        if (global.song != 14 && obj_boss_os.phase != 3)
        {
            global.song_playing = 0;
            global.song = 14;
        }
        
        if (global.song != 16 && obj_boss_os.phase == 3)
        {
            audio_sound_gain(snd_song_roborabbitrampage, 0, 1200);
            global.song_playing = 0;
            global.song = -1;
            global.song = 16;
        }
    }
}

if (global.riding && instance_exists(obj_mick))
    obj_mick.astate = 8;

if (global.mommouse >= 5)
{
    instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 0, obj_object_mothermouse_spawn);
    global.mommouse = 0;
}

if (room != rm_nickdonnoli)
{
    if (keyboard_check(vk_control) && keyboard_check(vk_alt) && keyboard_check(vk_enter))
        game_restart();
    
    if (gamepad_button_check(0, gp_start) && gamepad_button_check(0, gp_select) && gamepad_button_check(0, gp_shoulderl) && gamepad_button_check(0, gp_shoulderlb) && gamepad_button_check(0, gp_shoulderr) && gamepad_button_check(0, gp_shoulderrb))
        game_restart();
}
