image_angle = irandom_range(0, 359);
image_yscale = 1.5;
soft = 0;

if (!soft)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0.5, 0.5);
}
