if (!active && place_meeting(x, y, obj_mick))
{
    active = 1;
    spd = global.hspd;
    
    if (room == rm_forest_3)
        global.dronesback = 1;
    
    if (room == rm_forest_7)
        global.dronesback = 2;
}

if (active)
{
    time--;
    spawn--;
    
    if (spawn == 0)
    {
        spawn = 5;
        instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0]) + 1900, 500, obj_particle_sawdrone);
    }
    
    if (time == 0)
        instance_destroy();
}
