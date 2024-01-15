blot_time -= 1
if (blot_time == 0)
{
    blot_phase += 1
    blot_time = 30
    if (blot_phase == 1)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1992, obj_transition_death_blot_1)
    if (blot_phase == 2)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1993, obj_transition_death_blot_2)
    if (blot_phase == 3)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1994, obj_transition_death_blot_3)
    if (blot_phase == 4)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1995, obj_transition_death_blot_4)
    if (blot_phase == 5)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1996, obj_transition_death_blot_5)
    if (blot_phase == 6)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1997, obj_transition_death_blot_6)
    if (blot_phase == 7)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1998, obj_transition_death_blot_7)
    if (blot_phase == 8)
        instance_create_depth((camera_get_view_x(view_camera[0]) - 320), (camera_get_view_y(view_camera[0]) - 180), -1999, obj_transition_death_blot_8)
    if (blot_phase == 13)
    {
        instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1999, obj_transition_respawn)
        instance_destroy()
    }
}
