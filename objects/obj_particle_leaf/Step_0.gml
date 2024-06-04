x += hspd
y += vspd
image_angle += rspd
life -= 1
if (life == 0)
    instance_destroy()
image_xscale += (x_flutter * 0.01)
image_yscale += (y_flutter * 0.01)
if (image_xscale > size)
{
    image_xscale = size
    x_flutter *= -1
}
if (image_xscale < (-size))
{
    image_xscale = (-size)
    x_flutter *= -1
}
if (image_yscale > size)
{
    image_yscale = size
    y_flutter *= -1
}
if (image_yscale < (-size))
{
    image_yscale = (-size)
    y_flutter *= -1
}
