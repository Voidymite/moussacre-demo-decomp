image_xscale = size;
image_yscale = size;
size += 0.04;

if (size >= 2)
{
    if (place_meeting(x, y, obj_breakabletiles_temp))
        breaking = 1;
}

x += ((point_x - x) * 0.05);
y += ((point_y - y) * 0.05);
image_angle += rspd;

if (time > 0)
    time -= 0.05;

if (size >= 2.08)
    instance_destroy();
