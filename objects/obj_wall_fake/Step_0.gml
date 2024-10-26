if (place_meeting(x, y, obj_mick))
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
}
else if (image_alpha < 1)
{
    image_alpha += 0.1;
}
