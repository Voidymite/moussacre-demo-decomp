if (phase == 0)
    image_alpha += 0.005
if (phase == 1)
    image_alpha -= 0.1
if (image_alpha >= 1.2 && phase == 0)
{
    phase = 1
    room_goto(rm_wow)
    x = 0
    y = 0
}
if (image_alpha <= 0 && phase == 1)
    instance_destroy()
