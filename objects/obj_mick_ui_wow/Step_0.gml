var pause, up_tap, down_tap, action1, action2;

if (!gamepad_is_connected(0))
{
    pause = keyboard_check_pressed(vk_escape);
    up_tap = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
    down_tap = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
    action1 = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    action2 = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_backspace);
}
else
{
    pause = gamepad_button_check_pressed(0, gp_start);
    up_tap = gamepad_button_check_pressed(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.3 || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
    down_tap = gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3 || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
    action1 = gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    action2 = gamepad_button_check_pressed(0, gp_face2) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_backspace);
}

if (action1 && time >= 420)
{
    global.song_playing = 0;
    global.song = -1;
    audio_stop_sound(snd_song_wasifastorwhat);
    
    if (row == 0)
    {
        scr_restart();
        
        with (obj_global)
            time = 30;
    }
    
    audio_play_sound(snd_menu_select, 1, 0);
    
    if (row == 1)
    {
        instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition);
        instance_destroy(obj_mick);
        room_goto(rm_mainmenu);
    }
}

if (gamepad_axis_value(0, gp_axislv) <= 0.3 && gamepad_axis_value(0, gp_axislv) >= -0.3)
    tapped = 0;

if (!tapped && time >= 420)
{
    if (up_tap)
    {
        row--;
        tapped = 1;
        audio_play_sound(snd_menu_choose, 1, 0);
    }
    
    if (down_tap)
    {
        row++;
        tapped = 1;
        audio_play_sound(snd_menu_choose, 1, 0);
    }
}

if (row < 0)
    row = 1;

if (row > 1)
    row = 0;

if (time <= 1000)
    time++;

flash--;

if (flash == -29)
    flash = 30;

if (time == 45)
    instance_create_depth(1645, 300, -10, obj_mick_ui_wow_text);

if (time == 420)
{
    instance_create_depth(700, 1400, -2000, obj_mick_ui_pause_select);
    instance_create_depth(100, -100, -2000, obj_mick_ui_pause_select_mick);
}

if (row == 0)
{
    with (obj_mick_ui_pause_select)
    {
        x = 1600 - (((string_length("PLAY AGAIN") / 2) + 5) * 60);
        y = 1400;
    }
}

if (row == 1)
{
    with (obj_mick_ui_pause_select)
    {
        x = 1600 - (((string_length("QUIT") / 2) + 5) * 60);
        y = 1600;
    }
}

if (global.score < 0)
    global.score = 0;
