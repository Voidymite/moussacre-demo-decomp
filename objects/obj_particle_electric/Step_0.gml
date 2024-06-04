time -= 1
x = camera_get_view_x(view_camera[0]) + 1600
y = camera_get_view_y(view_camera[0]) + 900
if (time == 0)
    instance_destroy()
if (time <= 60 && time > 45)
    frame = irandom_range(1, 10)
if (time <= 45 && time > 30)
    frame = irandom_range(1, 16)
if (time <= 30 && time > 15)
    frame = irandom_range(1, 22)
if (time <= 15 && time > 0)
    frame = irandom_range(1, 28)
if (frame == 1)
{
    image_xscale = 1
    image_yscale = 1
    image_angle = 0
}
if (frame == 2)
{
    image_xscale = 1
    image_yscale = 1
    image_angle = 180
}
if (frame == 3)
{
    image_xscale = -1
    image_yscale = 1
    image_angle = 0
}
if (frame == 4)
{
    image_xscale = -1
    image_yscale = 1
    image_angle = 180
}
if (frame == 5)
{
    image_xscale = -1
    image_yscale = -1
    image_angle = 0
}
if (frame == 6)
{
    image_xscale = -1
    image_yscale = -1
    image_angle = 180
}
if (frame == 7)
{
    image_xscale = 1
    image_yscale = -1
    image_angle = 0
}
if (frame == 8)
{
    image_xscale = 1
    image_yscale = -1
    image_angle = 180
}
if (frame >= 9)
    image_alpha = 0
else
    image_alpha = 1
