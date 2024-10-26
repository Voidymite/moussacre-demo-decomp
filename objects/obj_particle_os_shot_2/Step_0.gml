size -= 0.1;
image_xscale = size;
image_yscale = size;
x += lengthdir_x(spd, image_angle);
y += lengthdir_y(spd, image_angle);

if (size <= 0)
    instance_destroy();
