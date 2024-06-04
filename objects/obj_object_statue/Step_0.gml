x += (x_pos + 0.75 * camera_get_view_x(view_camera[0]) - x)
y += (y_pos + 0.75 * camera_get_view_y(view_camera[0]) - y)
shake -= 1
if activated
{
    if sound
    {
        sound = 0
        audio_play_sound(snd_object_walt_activate_1, 1, 0)
    }
    if (time > 0)
    {
        if global.rumble
            gamepad_set_vibration(0, (0.001 + vib * 0.01), (0.15 + (-((vib * 0.01)))))
    }
    time -= 1
}
if (time == 0)
{
    if global.rumble
        gamepad_set_vibration(0, 1, 1)
    scr_screenshake(40);
}
if (time <= 0)
{
    fall *= 1.1
    y += fall
    sprite_index = spr_background_city_statue_5
}
if (time == -100)
{
    instance_destroy()
    gamepad_set_vibration(0, 0, 0)
    instance_create_depth(obj_mick.x, -4000, 400, obj_object_walt)
}
if (vib_dir == 1)
{
    vib += 1
    if (vib == 20)
        vib_dir *= -1
}
else
{
    vib -= 1
    if (vib == -20)
        vib_dir *= -1
}
