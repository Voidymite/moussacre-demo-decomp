color = irandom_range(0, 1);
image_index = color;
image_angle = irandom_range(0, 359);
image_speed = 0;
sizeup = random_range(1, 6);

if (room == rm_finisher)
    sizeup = random_range(2, 12);

image_xscale = sizeup;
image_yscale = sizeup;
hspd = irandom_range(-10, 10);
vspd = irandom_range(-20, 0);

if (room == rm_finisher)
{
    hspd = irandom_range(-20, 20);
    vspd = irandom_range(-40, 0);
}
