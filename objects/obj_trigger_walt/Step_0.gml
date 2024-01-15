if place_meeting(x, y, obj_mick)
{
    instance_create_depth(640, -1280, 0, obj_wall).image_yscale = 200
    instance_create_depth(640, -1280, 0, obj_wall_nowalljump).image_yscale = 200
    instance_destroy()
    with (obj_object_statue)
        activated = 1
}
