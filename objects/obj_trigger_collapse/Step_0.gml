if (place_meeting(x, y, obj_mick) && !activated)
{
    activated = 1;
    instance_create_depth(-128, 12032, 0, obj_wall).image_yscale = 4;
    instance_create_depth(-256, 12032, 0, obj_wall_nowalljump).image_yscale = 512;
    instance_create_depth(room_width / 2, 2000, 200, obj_object_wreck);
}

if (activated)
    time--;

if (time <= 0)
{
    with (obj_object_collapse)
        moving = 1;
}
