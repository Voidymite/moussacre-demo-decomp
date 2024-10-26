if (room == rm_city_3 || room == rm_city_4 || room == rm_city_6 || room == rm_city_8)
{
    if (!audio_is_playing(snd_background_city_1))
        audio_play_sound(snd_background_city_1, 1, 1);
    
    if (room == rm_city_8 && instance_exists(obj_weather))
    {
        if (!audio_is_playing(snd_background_snow_1))
            audio_play_sound(snd_background_snow_1, 1, 1);
    }
    
    draw_sprite(spr_background_city_buildings_1, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
    
    if (room == rm_city_4)
        draw_sprite(spr_background_city_buildings_2, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (500 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
    else
        draw_sprite(spr_background_city_buildings_2, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
    
    if (!global.walt)
    {
        if (room == rm_city_3)
            draw_sprite(spr_background_city_statue_1, 0, 2000 + (0.75 * camera_get_view_x(view_camera[0])), 0 + (0.75 * camera_get_view_y(view_camera[0])));
        
        if (room == rm_city_6)
            draw_sprite(spr_background_city_statue_2, 0, 1000 + (0.75 * camera_get_view_x(view_camera[0])), 1400 + (0.75 * camera_get_view_y(view_camera[0])));
    }
}

if (room == rm_city_1 || room == rm_city_2)
{
    draw_sprite(spr_background_city_buildings_1, 0, camera_get_view_x(view_camera[0]), -500 + camera_get_view_y(view_camera[0]));
    draw_sprite(spr_background_city_buildings_3, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), -200 + (0.987 * camera_get_view_y(view_camera[0])));
}

if (room == rm_city_5)
    draw_sprite(spr_background_city_buildings_6, 0, 0, 0);

if (room == rm_city_7)
    draw_sprite(spr_background_city_sewers_1, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), -200 + (0.987 * camera_get_view_y(view_camera[0])));

if (room == rm_city_8)
{
    if (instance_exists(obj_object_walt))
    {
        if (!instance_exists(obj_particle_smoke_2))
            draw_sprite(spr_background_city_buildings_4, 0, 16800 + (0.75 * camera_get_view_x(view_camera[0])), 0.75 * camera_get_view_y(view_camera[0]));
        else
            draw_sprite(spr_background_city_buildings_5, 0, 16800 + (0.75 * camera_get_view_x(view_camera[0])), 0.75 * camera_get_view_y(view_camera[0]));
    }
}

if (room == rm_forest_1 || room == rm_forest_2)
{
    if (!audio_is_playing(snd_background_forest_1))
        audio_play_sound(snd_background_forest_1, 1, 1);
    
    draw_sprite(spr_background_forest_trees_5, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
    draw_sprite(spr_background_forest_trees_4, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
}

if (room == rm_forest_3 || room == rm_forest_4 || room == rm_forest_6 || room == rm_forest_7 || room == rm_forest_8 || room == rm_forest_9 || room == rm_forest_10)
{
    if (!audio_is_playing(snd_background_forest_1))
        audio_play_sound(snd_background_forest_1, 1, 1);
    
    draw_sprite(spr_background_forest_trees_1, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
    
    if (room == rm_forest_7 || room == rm_forest_10)
    {
        draw_sprite(spr_background_forest_trees_3, 0, 0 + (0.991 * camera_get_view_x(view_camera[0])), (0 + (0.999 * camera_get_view_y(view_camera[0]))) - sink);
        draw_sprite(spr_background_forest_trees_2, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.997 * camera_get_view_y(view_camera[0]))) - sink);
    }
    else
    {
        draw_sprite(spr_background_forest_trees_3, 0, 0 + (0.991 * camera_get_view_x(view_camera[0])), (0 + (0.99 * camera_get_view_y(view_camera[0]))) - sink);
        draw_sprite(spr_background_forest_trees_2, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
    }
}

if (room == rm_forest_5)
{
    draw_sprite(spr_background_forest_ground_2, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
    draw_sprite(spr_background_forest_ground_1, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
}

if (room == rm_os_1)
{
    if (instance_exists(obj_weather))
    {
        if (!audio_is_playing(snd_background_rain_1))
            audio_play_sound(snd_background_rain_1, 1, 1);
    }
    
    draw_sprite(spr_background_os_cloud, 0, scroll_x + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
    draw_sprite(spr_background_os_cloud, 0, -3400 + scroll_x + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
    draw_sprite(type, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);
    scroll_x += 5;
    
    if (scroll_x >= 3400)
        scroll_x = 0;
    
    if (obj_boss_os.move == 12)
    {
        if (obj_boss_os.int_time <= 150)
            draw_sprite_ext(spr_white, 0, camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0]) - 1000, 10000, 10000, 0, c_white, (obj_boss_os.int_time - 120) / 30);
    }
}

if (room == rm_test_12)
    draw_sprite(spr_background_morgue, 0, 0 + (0.987 * camera_get_view_x(view_camera[0])), (0 + (0.98 * camera_get_view_y(view_camera[0]))) - sink);

if (room == rm_os_1)
{
    if (obj_boss_os.state == 1 && obj_boss_os.move == 10)
    {
        if (dm_dark < 0.4)
            dm_dark += 0.01;
    }
    else if (dm_dark > 0)
    {
        dm_dark -= 0.01;
    }
}

draw_sprite_ext(spr_black, 0, -1000, -1000, 10000, 10000, 0, c_white, dm_dark);
