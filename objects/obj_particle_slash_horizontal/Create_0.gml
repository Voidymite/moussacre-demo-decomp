image_angle = irandom_range(-5, 5);
image_xscale = 2;
image_yscale = 2;
soft = 0;

if (!soft && room != rm_finisher)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0.5, 0.5);
}

if (room == rm_finisher && obj_finisher_mick.sprite_index == spr_finisher_mick_1)
{
    image_xscale = 4;
    image_yscale = 4;
}
