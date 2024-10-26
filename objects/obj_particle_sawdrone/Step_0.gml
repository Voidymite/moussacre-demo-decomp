x += hspd;
y += vspd;

if (hspd == 0)
    hspd = 8;

hspd *= hspd_acc;
vspd *= vspd_acc;
time--;

if (time == 0)
    instance_destroy();

if (!sound && y <= obj_mick.y)
{
    sound = snd_background_forest_1;
    pick_sound = irandom_range(0, 2);
    
    if (room == rm_forest_10)
        close = 1;
    else
        close = 0;
    
    if (close)
    {
        if (pick_sound == snd_background_city_1)
            audio_play_sound(snd_object_sawdrone_fly_1, 1, 0);
        
        if (pick_sound == snd_background_forest_1)
            audio_play_sound(snd_object_sawdrone_fly_2, 1, 0);
        
        if (pick_sound == snd_background_rain_1)
            audio_play_sound(snd_object_sawdrone_fly_3, 1, 0);
    }
    else
    {
        if (pick_sound == snd_background_city_1)
            audio_play_sound(snd_object_sawdrone_fly_4, 1, 0);
        
        if (pick_sound == snd_background_forest_1)
            audio_play_sound(snd_object_sawdrone_fly_5, 1, 0);
        
        if (pick_sound == snd_background_rain_1)
            audio_play_sound(snd_object_sawdrone_fly_6, 1, 0);
    }
}
