time += 1
if (time == 150)
{
    if (global.score > global.rscore)
    {
        global.rscore = global.score
        other_record = 1
        audio_play_sound(snd_mick_ui_wow_score_best, 1, false)
    }
    else
        other_record = 0
    if other_record
        instance_create_depth(2150, 900, -10000, obj_best)
    ini_open("PumpkinEater")
    script_execute(scr_save)
    ini_close()
    instance_destroy()
}
