y += vspd
x += hspd
image_angle += rspd
image_alpha -= 0.015
if (image_alpha <= 0)
    instance_destroy()
image_xscale *= 1.015
image_yscale *= 1.015
