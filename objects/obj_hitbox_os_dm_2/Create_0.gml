spd = irandom_range(20, 50);
size = 4;
active = 0;
shake = 4;
boom = 1;
image_xscale = size;
image_yscale = size;
image_angle = irandom_range(0, 359);
time = 120;
point_x = obj_mick.x;
point_y = obj_mick.y;

if (obj_mick.x < -2000)
{
    point_x = room_width / 2;
    point_y = 2200;
}

spd = 120;
can_parry = 0;
