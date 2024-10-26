time--;

if (time == 0)
{
    if (room == rm_city_8)
    {
        if (global.particles)
            time = 3;
        else
            time = 12;
        
        repeat (6)
            instance_create_depth(camera_get_view_x(view_camera[0]) + irandom_range(-2800, 6000), camera_get_view_y(view_camera[0]) - irandom_range(10, 40), -15, obj_particle_snow);
    }
    
    if (room == rm_forest_1 || room == rm_forest_2 || room == rm_forest_3 || room == rm_forest_4 || room == rm_forest_6 || room == rm_forest_7 || room == rm_forest_8 || room == rm_forest_9 || room == rm_forest_10)
    {
        if (global.particles)
            time = 15;
        else
            time = 60;
        
        repeat (2)
            instance_create_depth(camera_get_view_x(view_camera[0]) + irandom_range(-2800, 6000), camera_get_view_y(view_camera[0]) - irandom_range(10, 40), -15, obj_particle_leaf);
    }
    
    if (room == rm_os_1)
    {
        if (global.particles)
            time = 3;
        else
            time = 12;
        
        repeat (6)
            instance_create_depth(camera_get_view_x(view_camera[0]) + irandom_range(-2800, 6000), camera_get_view_y(view_camera[0]) - irandom_range(10, 40), -15, obj_particle_rain);
    }
}
