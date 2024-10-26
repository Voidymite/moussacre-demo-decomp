scr_stopsound();
time = 0;
flash = 0;
row = 0;
tapped = 0;
map_string = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,:;'\"!?0123456789()%&+-*©";
font = font_add_sprite_ext(spr_mick_ui_text, map_string, true, 5);
global.minus_score = (global.second * 50) + (global.minute * 3000) + (global.hour * 180000);
global.score_average = 0;
move = 0;
shake = 0;
pre_score = global.score - ((global.second * 50) + (global.minute * 3000) + (global.hour * 180000));

if (pre_score < 0)
    temp_score = 0;
else
    temp_score = pre_score;

avg_score = temp_score / (global.second + (global.minute * 60) + (global.hour * 3600));

if (room == rm_wow)
{
    global.song_playing = 0;
    
    if (global.level != 3)
    {
        if (avg_score >= 180 && global.damaged < 3)
        {
            if (global.song != 12)
                global.song = 12;
        }
        else if (global.song != 7)
        {
            global.song = 7;
        }
    }
    else if (avg_score >= 180 && global.damaged == 0)
    {
        if (global.song != 12)
            global.song = 12;
    }
    else if (global.song != 7)
    {
        global.song = 7;
    }
}

ini_open("PumpkinEater");
scr_load();
ini_close();
instance_destroy(obj_mick);

if (global.difficulty == 2)
{
    global.song_playing = 0;
    global.song = -1;
    audio_stop_sound(snd_song_wasifastorwhat);
    instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition);
    instance_destroy(obj_mick);
    instance_destroy(obj_transition_whitefade_1);
    room_goto(rm_mainmenu);
}
