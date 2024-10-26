var action1_tap;

blot_time--;

if (dead_time > 0)
    dead_time--;

if (!gamepad_is_connected(0))
{
    action1_tap = keyboard_check_pressed(global.action1) || mouse_check_button_pressed(global.action1);
    
    if (global.action1 == 1)
        action1_tap = mouse_check_button_pressed(global.action1);
}
else
{
    action1_tap = gamepad_button_check_pressed(0, global.c_action1) || keyboard_check_pressed(global.action1) || mouse_check_button_pressed(global.action1);
    
    if (global.action1 == 1)
        action1_tap = mouse_check_button_pressed(global.action1) || gamepad_button_check_pressed(0, global.c_action1);
}

if (action1_tap)
{
    if (dead_time > 0)
    {
        blot_phase = 13;
        blot_time = 0;
        skip = 1;
    }
    else
    {
        dead_time = 30;
    }
}

if (blot_time == 0)
{
    blot_phase++;
    blot_time = 30;
    
    if (blot_phase == 1)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1992, obj_transition_death_blot_1);
    
    if (blot_phase == 2)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1993, obj_transition_death_blot_2);
    
    if (blot_phase == 3)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1994, obj_transition_death_blot_3);
    
    if (blot_phase == 4)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1995, obj_transition_death_blot_4);
    
    if (blot_phase == 5)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1996, obj_transition_death_blot_5);
    
    if (blot_phase == 6)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1997, obj_transition_death_blot_6);
    
    if (blot_phase == 7)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1998, obj_transition_death_blot_7);
    
    if (blot_phase == 8)
        instance_create_depth(camera_get_view_x(view_camera[0]) - 320, camera_get_view_y(view_camera[0]) - 180, -1999, obj_transition_death_blot_8);
    
    if (blot_phase >= 13)
    {
        gamepad_set_vibration(0, 0, 0);
        
        if (global.difficulty == 0)
        {
            if (global.losses < 3)
            {
                if (global.checkpoint != 0)
                    instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1999, obj_transition_respawn);
                else
                    scr_restart();
            }
            else
            {
                global.hp = global.hp_max;
                room_goto(rm_casual);
                instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1999, obj_transition);
            }
        }
        else if (global.checkpoint != 0)
        {
            instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1999, obj_transition_respawn);
        }
        else
        {
            scr_restart();
        }
        
        instance_destroy();
        
        if (skip)
        {
            audio_stop_sound(snd_song_killed);
            audio_play_sound(snd_menu_skip, 1, 0);
            obj_global.time = 30;
        }
    }
}
