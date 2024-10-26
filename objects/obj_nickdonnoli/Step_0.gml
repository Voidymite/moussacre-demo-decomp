var action1;

if (time == 241)
    audio_play_sound(snd_song_nickdonnoli, 1, 0);

action1 = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);
time--;

if (time == 415)
{
}

if (time <= 240)
{
    if (time == 240)
        image_speed = 1;
    
    if (image_index == 76)
        image_speed = 0;
    
    if (image_xscale < 3.1396200000000003)
    {
        image_xscale += (grow * 2.343);
        image_yscale += (grow * 2.343);
    }
    
    grow *= 0.98;
    
    if (time < 0)
        image_alpha -= 0.01;
    
    if (image_alpha <= -0.25)
    {
        instance_create_depth(x, y, 0, obj_warning);
        instance_destroy();
        
        if (global.fix1)
        {
            global.gun = 65;
            global.hook = 83;
            global.cannon = 68;
            global.l3_rhour = 9;
            global.l3_rminute = 59;
            global.l3_rsecond = 59;
            global.l3_rdsecond = 9;
            global.l3_rcsecond = 9;
            global.l3_rscore = 0;
            global.l3_rscore_average = 0;
            global.l3_rdamaged = 100;
            global.l3_rhour_d2 = 9;
            global.l3_rminute_d2 = 59;
            global.l3_rsecond_d2 = 59;
            global.l3_rdsecond_d2 = 9;
            global.l3_rcsecond_d2 = 9;
            global.l3_rscore_d2 = 0;
            global.l3_rscore_average_d2 = 0;
            global.l3_rdamaged_d2 = 100;
            global.l3_rhour_d3 = 9;
            global.l3_rminute_d3 = 59;
            global.l3_rsecond_d3 = 59;
            global.l3_rdsecond_d3 = 9;
            global.l3_rcsecond_d3 = 9;
            global.l3_rscore_d3 = 0;
            global.l3_rscore_average_d3 = 0;
            global.l3_rdamaged_d3 = 100;
            ini_open("PumpkinEater");
            scr_save();
            ini_close();
            ini_open("TheWayILikeIt");
            scr_save_settings();
            ini_close();
            global.fix1 = 0;
        }
    }
    
    if (action1)
    {
        audio_stop_sound(snd_song_nickdonnoli);
        image_xscale = 3.1396200000000003;
        image_yscale = 3.1396200000000003;
        skip = 1;
        image_speed = 0;
        image_index = 71;
    }
    
    if (skip)
        image_alpha -= 0.1;
}
