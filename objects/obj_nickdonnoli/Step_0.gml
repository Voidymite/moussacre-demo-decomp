if (time == 240)
    audio_play_sound(snd_nickdonnoli, 1, false)
if (!gamepad_is_connected(0))
    var action1 = (keyboard_check_pressed(ord("L")) || keyboard_check_pressed(ord("Z")))
else
    action1 = gamepad_button_check_pressed(0, gp_face1)
time -= 1
if (time <= 240)
{
    if (time == 240)
        image_speed = 1
    if (image_index == 76)
        image_speed = 0
    if (image_xscale < 3.1396200000000003)
    {
        image_xscale += (grow * 2.343)
        image_yscale += (grow * 2.343)
    }
    grow *= 0.98
    if (time < 0)
        image_alpha -= 0.01
    if (image_alpha <= -0.25)
    {
        instance_create_depth(x, y, 0, obj_warning)
        instance_destroy()
    }
    if action1
    {
        audio_stop_sound(snd_nickdonnoli)
        image_xscale = 3.1396200000000003
        image_yscale = 3.1396200000000003
        skip = 1
        image_speed = 0
        image_index = 71
    }
    if skip
        image_alpha -= 0.1
}
