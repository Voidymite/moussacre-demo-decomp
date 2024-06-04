if (place_meeting(x, y, obj_mick) && size == 1)
{
    with (obj_mick)
    {
        if (hurt_timer == 0)
        {
            if (dash_time <= 8)
            {
                instance_create_depth(x, y, -10, obj_particle_slash_vertical).image_xscale = 4
                obj_mick.pain = 1
                hurt_timer = 120
                global.hp -= 2
            }
            else if global.rumble
                gamepad_set_vibration(0, 0.025, 0.025)
        }
    }
}
time -= 1
cut_time -= 1
if (cut_time == 0)
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 6000)
    {
        if (dir == 1)
        {
            audio_play_sound(snd_object_saw_3, 1, 0)
            audio_play_sound(snd_object_saw_3, 1, 0)
        }
        else
        {
            audio_play_sound(snd_object_saw_4, 1, 0)
            audio_play_sound(snd_object_saw_4, 1, 0)
        }
    }
}
if (time == 0)
{
    if global.particles
        time = 3
    else
        time = 12
    repeat (5)
    {
        if (x >= 8000 && x <= 23000)
            instance_create_depth((x + (irandom_range(-200, 200))), (650 + (irandom_range(-20, 20))), -15, obj_particle_woodshave)
    }
}
y += vspd
x += hspd
if (x <= 23000)
{
    if (dir == -1)
    {
        vspd -= 2
        if (vspd == -70)
        {
            dir = 1
            cut_time = 30
        }
    }
    if (dir == 1)
    {
        vspd += 2
        if (vspd == 70)
        {
            dir = -1
            cut_time = 30
        }
    }
}
else
    vspd -= 2
if (size < 1)
    size += 0.0125
image_xscale = -0.8 * size
image_yscale = 1.2 * size
