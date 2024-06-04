time -= 1
if (time == 0)
{
    if (room == rm_city_8)
    {
        if global.particles
            time = 3
        else
            time = 12
        repeat (10)
            instance_create_depth((camera_get_view_x(view_camera[0]) + (irandom_range(-2800, 6000))), (camera_get_view_y(view_camera[0]) - (irandom_range(10, 40))), -15, obj_particle_snow)
    }
    if (room == rm_forest_1 ? true : (room == rm_forest_2 ? true : (room == rm_forest_3 ? true : (room == rm_forest_4 ? true : (room == rm_forest_6 ? true : (room == rm_forest_7 ? true : (room == rm_forest_8 ? true : (room == rm_forest_9 ? true : room == rm_forest_10))))))))
    {
        if global.particles
            time = 15
        else
            time = 60
        repeat (2)
            instance_create_depth((camera_get_view_x(view_camera[0]) + (irandom_range(-2800, 6000))), (camera_get_view_y(view_camera[0]) - (irandom_range(10, 40))), -15, obj_particle_leaf)
    }
}
