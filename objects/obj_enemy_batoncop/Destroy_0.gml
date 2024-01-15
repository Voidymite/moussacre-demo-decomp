splat = choose(0, 1)
if (!no_splat)
{
    audio_play_sound(snd_mick_kill_3, 1, false)
    if (!splat)
        audio_play_sound(snd_mick_kill_1, 1, false)
    else
        audio_play_sound(snd_mick_kill_2, 1, false)
}
script_execute(scr_stopsound_batoncop_voice)
death_sound = irandom_range(0, 1)
if (death_sound == snd_item_gem_9)
{
}
if (death_sound == snd_mick_ui_wow_time)
{
}
