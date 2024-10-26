y += vspd;
x += hspd;
image_angle += rspd;
image_alpha -= 0.005;
size++;

if (image_alpha <= 0)
    instance_destroy();
