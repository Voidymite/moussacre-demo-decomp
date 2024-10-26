var action1_tap;

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

if (skip_time > 0)
    skip_time--;

if (action1_tap)
{
    if (skip_time > 0)
    {
        time = -240;
        skip = 1;
    }
    else
    {
        skip_time = 30;
    }
}

time--;

if (time > 0)
{
    x += ((pos - x) * 0.15);
}
else
{
    x = pos + irandom_range(-x_shake, x_shake);
    y = 1650 + irandom_range(-y_shake, y_shake);
    
    if (x_shake > 0)
    {
        x_shake--;
        y_shake--;
    }
}

if (time == 0)
{
    x_shake = 50;
    y_shake = 50;
    image_index = 1;
    
    if (global.rumble)
        gamepad_set_vibration(0, 1, 1);
}

if (time <= 0 && size <= 1)
    size += 0.25;

if (time == -60)
    gamepad_set_vibration(0, 0, 0);

if (time <= -240)
{
    obj_mick.astate = 0;
    obj_mick.image_alpha = 1;
    obj_camera.x = 2048;
    obj_camera.y = 2179;
    obj_mick.x = 1408;
    obj_mick.y = 2179;
    instance_destroy(obj_mick_ui_face);
    instance_destroy(obj_mick_ui_gems);
    scr_restart();
    instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -10010, obj_transition_respawn);
    
    if (skip)
    {
        audio_stop_sound(snd_song_hereitcomes);
        audio_play_sound(snd_menu_skip, 1, 0);
        obj_global.time = 30;
    }
}
