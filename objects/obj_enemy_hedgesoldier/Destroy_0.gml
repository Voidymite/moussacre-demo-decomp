splat = choose(0, 1)
if (!splat)
    audio_play_sound(snd_mick_kill_1, 1, 0)
else
    audio_play_sound(snd_mick_kill_2, 1, 0)
if (!no_splat)
    audio_play_sound(snd_mick_kill_3, 1, 0)
scr_stopsound_mouse_voice()
death_sound = irandom_range(0, 1)
if (death_sound == 0)
{
}
if (death_sound == 1)
{
}
