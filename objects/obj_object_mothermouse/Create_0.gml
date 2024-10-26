if (y < obj_mick.y)
    dir = 1;
else
    dir = -1;

hspd = irandom_range(-8, 8);
vspd = 40 * dir;
shake_time = 4;
shake = 0;
roar = 0;
color = 0;
color_me = 0;
image_xscale = 2;
image_yscale = 2;
image_xscale *= choose(-1, 1);

if (vspd < 0)
    image_yscale *= -1;
else
    image_yscale *= 1;

can_parry = 0;
