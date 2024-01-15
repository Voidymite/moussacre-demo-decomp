time = 0
check = 0
if (check == 0)
{
    if (global.hour < global.rhour)
        check = 99
    if (global.hour == global.rhour)
        check = 1
    if (global.hour > global.rhour)
        check = -1
}
if (check == 1)
{
    if (global.minute < global.rminute)
        check = 99
    if (global.minute == global.rminute)
        check = 2
    if (global.minute > global.rminute)
        check = -1
}
if (check == 2)
{
    if (global.second < global.rsecond)
        check = 99
    if (global.second == global.rsecond)
        check = 3
    if (global.second > global.rsecond)
        check = -1
}
if (check == 3)
{
    if (global.dsecond < global.rdsecond)
        check = 99
    if (global.dsecond == global.rdsecond)
        check = 4
    if (global.dsecond > global.rdsecond)
        check = -1
}
if (check == 4)
{
    if (global.csecond < global.rcsecond)
        check = 99
    if (global.csecond >= global.rcsecond)
        check = -1
}
if (check == 99)
{
    global.rhour = global.hour
    global.rminute = global.minute
    global.rsecond = global.second
    global.rdsecond = global.dsecond
    global.rcsecond = global.csecond
    instance_create_depth(800, 900, -10000, obj_best)
    audio_play_sound(snd_mick_ui_wow_time_best, 1, false)
}
