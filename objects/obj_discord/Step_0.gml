image_angle += (1 * dir)
if (dir == 1 && image_angle == 6)
    dir *= -1
if (dir == -1 && image_angle == -6)
    dir *= -1
if picked
{
    if (image_xscale < 1.2)
    {
        image_xscale += 0.05
        image_yscale += 0.05
    }
}
else if (image_xscale > 1)
{
    image_xscale -= 0.05
    image_yscale -= 0.05
}
time -= 1
if (time == 0)
{
    time = irandom_range(180, 300)
    instance_create_depth((x + random_range(-150, 150)), (y + random_range(-75, 75)), -1, obj_discord_text)
}
