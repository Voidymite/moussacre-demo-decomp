function scr_restart()
{
    ds_map_clear(obj_global.temp_data);
    instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -10010, obj_transition);
    
    if (global.level == 1)
        room_goto(rm_city_1);
    
    if (global.level == 2)
        room_goto(rm_forest_1);
    
    if (global.level == 3)
        room_goto(rm_os_1);
    
    instance_destroy(obj_mick);
    instance_destroy(obj_mick_ui_face);
    instance_destroy(obj_mick_ui_gems);
    global.song_playing = 0;
    global.song = -1;
    global.hp = global.hp_max;
    global.sp = global.sp_max;
    global.damaged = 0;
    global.color = 0;
    global.hour = 0;
    global.minute = 0;
    global.second = 0;
    global.dsecond = 0;
    global.csecond = 0;
    global.score = 0;
    
    if (global.checkpoint != 0)
    {
        global.losses = 0;
        global.loss_ask = 1;
        global.checkpoint = 0;
    }
    
    global.pigseen = 0;
    global.collapsed = 0;
    global.walt = 0;
    global.mommouse = 0;
    global.turtleseen = 0;
    global.dronesback = 0;
    global.sawdrone = 0;
    global.boss_progress = 72;
    global.riding = 0;
    audio_sound_gain(snd_song_flyingmousetrap, 1, 0);
    audio_sound_gain(snd_song_hidinginthedark, 1, 0);
    audio_sound_gain(snd_song_icydestruction, 1, 0);
    audio_sound_gain(snd_song_franticpines, 1, 0);
    audio_sound_gain(snd_song_whispersofwildsouls, 1, 0);
    audio_sound_gain(snd_song_sawbladesymphony, 1, 0);
    audio_sound_gain(snd_song_roborabbitrampage, 1, 0);
    audio_stop_all();
}
