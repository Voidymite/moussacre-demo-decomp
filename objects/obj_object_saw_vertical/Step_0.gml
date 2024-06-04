if (place_meeting(x, y, obj_mick) && (!instance_exists(obj_object_hand_release)))
{
    with (obj_mick)
    {
        if (hurt_timer == 0)
        {
            if (dash_time <= 8)
            {
                instance_create_depth(x, y, -10, obj_particle_slash_vertical)
                hurt_timer = 120
                global.hp -= 1
            }
            else if global.rumble
                gamepad_set_vibration(0, 0.025, 0.025)
        }
    }
}
y += spd
if (spd > 0 && place_meeting(x, y, obj_object_saw_goleft) && dir == 1)
{
    dir = -1
    sound = choose(0, 1)
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
    {
        if sound
            audio_play_sound(snd_object_saw_1, 1, 0)
        else
            audio_play_sound(snd_object_saw_2, 1, 0)
    }
}
if (dir == -1)
{
    if (spd > -20)
        spd -= 0.5
}
if (spd < 0 && place_meeting(x, y, obj_object_saw_goright) && dir == -1)
{
    dir = 1
    sound = choose(0, 1)
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
    {
        if sound
            audio_play_sound(snd_object_saw_1, 1, 0)
        else
            audio_play_sound(snd_object_saw_2, 1, 0)
    }
}
if (dir == 1)
{
    if (spd < 20)
        spd += 0.5
}
if (place_meeting(x, y, obj_object_saw_goleft) && place_meeting(x, y, obj_object_saw_goright))
    spd = 0
