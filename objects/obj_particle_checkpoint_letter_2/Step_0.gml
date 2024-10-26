time--;

if (time >= 0)
{
    x += ((og_x - 448 - x) * 0.05);
    y += ((og_y - 200 - y) * 0.05);
    
    if (image_xscale < 1)
    {
        image_xscale += 0.04;
        image_yscale += 0.04;
    }
}
else
{
    x += lengthdir_x(1 * -time, dir);
    y += lengthdir_y(1 * -time, dir);
    image_xscale -= 0.02;
    image_yscale -= 0.02;
    
    if (image_xscale <= 0)
        instance_destroy();
}
