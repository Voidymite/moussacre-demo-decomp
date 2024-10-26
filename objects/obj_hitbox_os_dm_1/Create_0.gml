spd = irandom_range(20, 50);
size = 4;
image_xscale = size;
image_yscale = size;
time = 120;
dust_time = 1;
point_x = obj_mick.x;
point_y = obj_mick.y;

if (obj_mick.x < -2000)
{
    point_x = room_width / 2;
    point_y = 2200;
}

spd = 80;
