draw_set_alpha(1)
if (room == rm_city_3 || room == rm_city_4 || room == rm_city_6 || room == rm_city_8)
{
    draw_sprite(spr_background_city_buildings_1, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))
    if (room == rm_city_4)
        draw_sprite(spr_background_city_buildings_2, 0, (0 + (0.987 * camera_get_view_x(view_camera[0]))), ((500 + (0.98 * camera_get_view_y(view_camera[0]))) - sink))
    else
        draw_sprite(spr_background_city_buildings_2, 0, (0 + (0.987 * camera_get_view_x(view_camera[0]))), ((0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink))
    if (!global.walt)
    {
        if (room == rm_city_3)
            draw_sprite(spr_background_city_statue_1, 0, (2000 + (0.75 * camera_get_view_x(view_camera[0]))), (0 + (0.75 * camera_get_view_y(view_camera[0]))))
        if (room == rm_city_6)
            draw_sprite(spr_background_city_statue_2, 0, (1000 + (0.75 * camera_get_view_x(view_camera[0]))), (1400 + (0.75 * camera_get_view_y(view_camera[0]))))
    }
}
if (room == rm_city_1 || room == rm_city_2)
{
    draw_sprite(spr_background_city_buildings_1, 0, camera_get_view_x(view_camera[0]), (-500 + camera_get_view_y(view_camera[0])))
    draw_sprite(spr_background_city_buildings_3, 0, (0 + (0.987 * camera_get_view_x(view_camera[0]))), (-200 + (0.987 * camera_get_view_y(view_camera[0]))))
}
if (room == rm_city_5)
    draw_sprite(spr_background_city_buildings_6, 0, 0, 0)
if (room == rm_city_7)
    draw_sprite(spr_background_city_sewers_1, 0, (0 + (0.987 * camera_get_view_x(view_camera[0]))), (-200 + (0.987 * camera_get_view_y(view_camera[0]))))
if (room == rm_city_8)
{
    if instance_exists(obj_object_walt)
    {
        if (!instance_exists(obj_particle_smoke_2))
            draw_sprite(spr_background_city_buildings_4, 0, (16800 + (0.75 * camera_get_view_x(view_camera[0]))), (0.75 * camera_get_view_y(view_camera[0])))
        else
            draw_sprite(spr_background_city_buildings_5, 0, (16800 + (0.75 * camera_get_view_x(view_camera[0]))), (0.75 * camera_get_view_y(view_camera[0])))
    }
}
