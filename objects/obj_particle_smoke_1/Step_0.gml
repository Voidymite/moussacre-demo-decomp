y += vspd
x += hspd
image_angle += rspd
image_alpha -= 0.01
if (image_alpha <= 0)
    instance_destroy()
