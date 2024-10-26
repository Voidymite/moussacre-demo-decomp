if (room == rm_finisher || room == rm_vs || room == rm_casual)
{
    if (room == rm_finisher)
    {
        if (obj_finisher_mick.black)
        {
            x = camera_get_view_x(view_camera[0]) + -10000;
            y = camera_get_view_y(view_camera[0]) + -10000;
        }
        else
        {
            x = camera_get_view_x(view_camera[0]) + 3008;
            y = camera_get_view_y(view_camera[0]) + 192;
        }
    }
    
    if (room == rm_vs || room == rm_casual)
    {
        x = camera_get_view_x(view_camera[0]) + -10000;
        y = camera_get_view_y(view_camera[0]) + -10000;
    }
}
else
{
    x = camera_get_view_x(view_camera[0]) + 3008;
    y = camera_get_view_y(view_camera[0]) + 192;
}

if (image_yscale > 1)
    image_yscale -= 0.1;

if (image_yscale <= 0)
    image_yscale = 1;

if (instance_exists(obj_finisher_mick))
{
    if (obj_finisher_mick.black)
        image_alpha = 0;
    else
        image_alpha = 1;
}
else if (obj_mick.x >= ((camera_get_view_x(view_camera[0]) + 3200) - 1000) && obj_mick.y <= (camera_get_view_y(view_camera[0]) + 450) && obj_mick.x > -1000)
{
    if (image_alpha > 0.2)
        image_alpha -= 0.1;
}
else if (image_alpha < 1)
{
    image_alpha += 0.1;
}
