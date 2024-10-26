image_angle = irandom_range(95, 85);
image_xscale = 2;
image_yscale = 2;
soft = 0;

if (!soft && room != rm_finisher)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0.5, 0.5);
}

if (room == rm_finisher)
{
    image_xscale = 4;
    image_yscale = 4;
}
