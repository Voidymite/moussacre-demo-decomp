x += hspd
y += vspd
image_angle += rspd
life -= 1
if (life == 0)
    instance_destroy()
