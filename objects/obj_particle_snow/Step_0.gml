x += hspd;
y += vspd;
image_angle += rspd;
life--;

if (life == 0)
    instance_destroy();
