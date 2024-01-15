function scr_stopsound() //scr_stopsound
{
    gamepad_set_vibration(0, 0, 0)
    audio_stop_sound(snd_object_waterspout_1)
    audio_stop_sound(snd_object_collapse_building_2)
    audio_stop_sound(snd_object_walt_rocket_1)
    audio_stop_sound(snd_object_walt_wind_1)
}
function scr_stopsound_batoncop_voice() //scr_stopsound_batoncop_voice
{
    audio_stop_sound(snd_enemy_batoncop_scared_voice_1)
    audio_stop_sound(snd_enemy_batoncop_scared_voice_2)
    audio_stop_sound(snd_enemy_batoncop_death_voice_1)
    audio_stop_sound(snd_enemy_batoncop_death_voice_2)
    audio_stop_sound(snd_enemy_batoncop_attack_voice_1)
}
function scr_stopsound_guncop_voice() //scr_stopsound_guncop_voice
{
    audio_stop_sound(snd_enemy_guncop_scared_voice_1)
    audio_stop_sound(snd_enemy_guncop_scared_voice_2)
    audio_stop_sound(snd_enemy_guncop_death_voice_1)
    audio_stop_sound(snd_enemy_guncop_death_voice_2)
    audio_stop_sound(snd_enemy_guncop_attack_voice_1)
}
function scr_stopsound_mick_slash() //scr_stopsound_mick_slash
{
    audio_stop_sound(snd_mick_doublejump_6)
    audio_stop_sound(snd_mick_spin_1)
}
function scr_stopsound_mick_voice() //scr_stopsound_mick_voice
{
    audio_stop_sound(snd_mick_spin_voice_1)
    audio_stop_sound(snd_mick_spin_voice_2)
    audio_stop_sound(snd_mick_spin_voice_3)
    audio_stop_sound(snd_mick_jump_voice_1)
    audio_stop_sound(snd_mick_jump_voice_2)
    audio_stop_sound(snd_mick_jump_voice_3)
    audio_stop_sound(snd_mick_doublejump_voice_1)
    audio_stop_sound(snd_mick_doublejump_voice_2)
    audio_stop_sound(snd_mick_doublejump_voice_3)
    audio_stop_sound(snd_mick_doublejump_voice_4)
    audio_stop_sound(snd_mick_hurt_voice_1)
    audio_stop_sound(snd_mick_hurt_voice_2)
    audio_stop_sound(snd_mick_hurt_voice_3)
    audio_stop_sound(snd_mick_hurt_voice_4)
    audio_stop_sound(snd_mick_hurt_voice_5)
    audio_stop_sound(snd_mick_hurt_voice_6)
    audio_stop_sound(snd_mick_death_voice_1)
    audio_stop_sound(snd_mick_death_voice_2)
    audio_stop_sound(snd_mick_death_voice_3)
}