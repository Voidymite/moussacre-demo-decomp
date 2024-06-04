if (color_me == 0)
{
    color_me = 1
    if (color == 1)
        sprite_index = spr_object_mothermouse_gray
    if (color == 2)
        sprite_index = spr_object_mothermouse_white
}
x += hspd
y += vspd
if (y < (camera_get_view_y(view_camera[0]) + 3600) && y > (camera_get_view_y(view_camera[0]) - 1800))
{
    if (!roar)
    {
        roar = 1
        roar_sound = choose(0, 1)
        if roar_sound
            audio_play_sound(snd_object_mothermouse_attack_1, 1, 0)
        else
            audio_play_sound(snd_object_mothermouse_attack_2, 1, 0)
    }
    shake = 1
    if (shake_time == 1 && obj_mick.pain == 0)
    {
        scr_screenshake(2);
        if global.rumble
            gamepad_set_vibration(0, 0.025, 0.025)
    }
}
else
{
    if shake
    {
        shake = 0
        gamepad_set_vibration(0, 0, 0)
    }
    instance_destroy()
}
if place_meeting(x, y, obj_mick)
{
    with (obj_mick)
    {
        if (hurt_timer == 0)
        {
            if (dash_time <= 8)
            {
                instance_create_depth(x, y, -10, obj_particle_burst).image_yscale = 3
                obj_mick.pain = 1
                hurt_timer = 120
                global.hp -= 2
            }
            else if global.rumble
                gamepad_set_vibration(0, 0.025, 0.025)
        }
    }
}
shake_time -= 1
if (shake_time == 0)
    shake_time = 4
