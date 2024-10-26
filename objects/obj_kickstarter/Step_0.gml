image_angle += (0.5 * dir);

if (dir == 1 && image_angle == 3)
    dir *= -1;

if (dir == -1 && image_angle == -3)
    dir *= -1;

if (picked)
{
    if (image_xscale < 1.2)
    {
        image_xscale += 0.05;
        image_yscale += 0.05;
    }
}
else if (image_xscale > 1)
{
    image_xscale -= 0.05;
    image_yscale -= 0.05;
}

image_alpha = obj_discord.image_alpha;
