if (image_index > 3)
{
    image_speed = 0;
    y -= 400;
}

if (y < -4000)
    instance_destroy();
