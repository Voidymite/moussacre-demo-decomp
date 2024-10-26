x += hspd;
y += vspd;
image_angle += rspd;
life--;

if (life == 0)
    instance_destroy();

if (vspd < 30)
    vspd += 0.2;
