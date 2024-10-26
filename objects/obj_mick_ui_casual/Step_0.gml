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

if (time > 0)
    time--;

if (time == 0)
{
    if (action1)
    {
        if (global.checkpoint != 0)
        {
            instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), -1999, obj_transition_respawn);
        }
        else
        {
            if (row == 0)
                global.hp_max = 10;
            
            scr_restart();
        }
        
        with (obj_global)
            time = 30;
        
        audio_play_sound(snd_menu_select, 1, 0);
        
        if (row == 0)
        {
            global.losses = 0;
            global.difficulty = 1;
        }
        
        if (row == 1)
            global.losses = 0;
        
        if (row == 2)
        {
            global.losses = 0;
            global.loss_ask = 0;
        }
    }
    
    if (gamepad_axis_value(0, gp_axislv) <= 0.3 && gamepad_axis_value(0, gp_axislv) >= -0.3)
        tapped = 0;
    
    if (tapped == 0)
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
}

if (row < 0)
    row = 2;

if (row > 2)
    row = 0;

if (row == 0)
{
    with (obj_mick_ui_pause_select)
    {
        x = 1600 - (((string_length("SWITCH") / 2) + 5) * 60);
        y = 1200;
    }
}

if (row == 1)
{
    with (obj_mick_ui_pause_select)
    {
        x = 1600 - (((string_length("STAY") / 2) + 5) * 60);
        y = 1400;
    }
}

if (row == 2)
{
    with (obj_mick_ui_pause_select)
    {
        x = 1600 - (((string_length("STOP ASKING") / 2) + 5) * 60);
        y = 1600;
    }
}

if (instance_exists(obj_mick))
    obj_mick.hurt_timer = 10000;
