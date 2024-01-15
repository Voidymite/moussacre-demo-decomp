if (image_angle < 0)
{
    image_angle += 0.16
    image_xscale += size
    image_yscale += size
    x = (camera_get_view_width(view_camera[0]) / 2)
    y = (camera_get_view_y(view_camera[0]) - 2000)
    vib += 0.001
    if global.rumble
        gamepad_set_vibration(0, vib, vib)
    if (shake == 0)
    {
        shake = 13
        script_execute(scr_screenshake_light)
    }
}
if (image_angle >= 0 && (!struck))
{
    struck = 1
    audio_play_sound(snd_object_collapse_building_1, 1, false)
    script_execute(scr_screenshake_giant)
    if global.rumble
        gamepad_set_vibration(0, 1, 1)
}
size *= 0.99
if (image_angle >= 0)
    y -= 200
if (y <= -20000)
    instance_destroy()
shake -= 1