if (spawn_time > 0)
    spawn_time--;

if (spawn_time == 0)
    instance_activate_region(camera_get_view_x(view_camera[0]) - 2000, camera_get_view_y(view_camera[0]) - 2000, camera_get_view_x(view_camera[0]) + 7200, camera_get_view_y(view_camera[0]) + 5800, true);
