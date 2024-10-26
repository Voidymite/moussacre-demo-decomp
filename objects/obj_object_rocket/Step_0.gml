x += 48;
global.hspd = 48;
obj_mick.x = x;
obj_mick.y = y - 145;
obj_mick.astate = 13;
image_time--;

if (image_time == 0)
{
    image_time = 3;
    instance_create_depth(x, y, 2, obj_afterimage_saw).sprite_index = sprite_index;
}

smoke--;

if (smoke == 0)
{
    smoke = 3;
    instance_create_depth(x - 200, y, depth + 2, obj_particle_smoke_2).vspd = 0;
    scr_screenshake_light();
}
