if (!no_splat)
{
    splat = choose(0, 1);
    
    if (!splat)
        audio_play_sound(snd_mick_kill_1, 1, 0);
    else
        audio_play_sound(snd_mick_kill_2, 1, 0);
}
