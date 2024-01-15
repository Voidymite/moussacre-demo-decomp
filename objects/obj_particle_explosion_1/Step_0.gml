image_xscale += size
image_yscale += size
size *= 0.97
image_alpha -= 0.0075
if (image_alpha <= 0)
{
    instance_destroy()
    gamepad_set_vibration(0, 0, 0)
}
x = (camera_get_view_x(view_camera[0]) + x_pos)
y = (camera_get_view_y(view_camera[0]) + 2000)
shake -= 1
if (shake == 0)
{
    shake = 5
    if (image_alpha > 1.32)
        script_execute(scr_screenshake_giant)
    if (image_alpha <= 1.32)
        script_execute(scr_screenshake)
    if global.rumble
        gamepad_set_vibration(0, image_alpha, image_alpha)
}
