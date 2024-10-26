var pause, up_tap, down_tap, left_tap, right_tap, action1, action2;

if (!gamepad_is_connected(0))
{
    pause = keyboard_check_pressed(vk_escape);
    up_tap = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
    down_tap = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
    left_tap = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
    right_tap = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
    action1 = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    action2 = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_backspace);
}
else
{
    pause = gamepad_button_check_pressed(0, gp_start) || keyboard_check_pressed(vk_escape);
    up_tap = gamepad_button_check_pressed(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.3 || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
    down_tap = gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3 || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
    left_tap = gamepad_button_check_pressed(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.3 || keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
    right_tap = gamepad_button_check_pressed(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.3 || keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
    action1 = gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
    action2 = gamepad_button_check_pressed(0, gp_face2) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_backspace);
}

if (display_time > 0)
    display_time--;

if (up_tap || down_tap)
    display_time = 1;

if (time > 0)
    time--;

if (key_time > 0)
    key_time--;

if (key_time == 1)
{
    if (tab == 10 || tab == 11)
    {
        audio_play_sound(snd_menu_deselect, 1, 0);
        
        if (tab == 10)
            tab = 3;
        else
            tab = 4;
        
        cooldown = 1;
    }
}

if (room == rm_mainmenu && write && tab == 0)
{
    write = 0;
    ini_open("TheWayILikeIt");
    scr_save_settings();
    ini_close();
}

if (tab > 0 && !write)
    write = 1;

if (pause && tab != 10 && tab != 11 && room != rm_mainmenu)
{
    if (time == 0)
    {
        audio_play_sound(snd_menu_deselect, 1, 0);
        instance_activate_all();
        instance_destroy();
        instance_destroy(obj_mick_ui_pause_select);
        instance_destroy(obj_mick_ui_pause_select_mick);
    }
}

if (action2 && tab != 10 && tab != 11)
{
    if (room != rm_mainmenu)
    {
        row = 0;
        audio_play_sound(snd_menu_deselect, 1, 0);
    }
    else if (tab != 0)
    {
        row = 0;
        audio_play_sound(snd_menu_deselect, 1, 0);
    }
    
    if (tab == 0 && room != rm_mainmenu)
    {
        instance_activate_all();
        instance_destroy();
        instance_destroy(obj_mick_ui_pause_select);
        instance_destroy(obj_mick_ui_pause_select_mick);
    }
    
    if (tab == 1)
    {
        cooldown = 1;
        tab = 0;
    }
    
    if (tab == 2 || tab == 5 || tab == 6)
    {
        cooldown = 1;
        tab = 1;
    }
    
    if (tab == 3 || tab == 4)
    {
        cooldown = 1;
        tab = 2;
    }
    
    if (tab == 7 || tab == 8 || tab == 9)
    {
        cooldown = 1;
        tab = 6;
    }
    
    if (tab == 14)
    {
        cooldown = 1;
        tab = 0;
    }
    
    if (tab == 12)
    {
        cooldown = 1;
        tab = 14;
    }
    
    if (tab == 13)
    {
        cooldown = 1;
        tab = 12;
    }
    
    if (tab == 15)
    {
        cooldown = 1;
        tab = 13;
    }
}

if (gamepad_axis_value(0, gp_axislv) <= 0.3 && gamepad_axis_value(0, gp_axislv) >= -0.3 && gamepad_axis_value(0, gp_axislh) <= 0.3 && gamepad_axis_value(0, gp_axislh) >= -0.3)
    tapped = 0;

if (tab == 0 || tab == 1 || tab == 2 || tab == 6)
{
    if (row < 0)
        row = 3;
    
    if (room == rm_mainmenu)
    {
        if (tab == 0)
        {
            if (row > 3 && row < 50)
                row = 0;
        }
        else if (row > 3)
        {
            row = 0;
        }
    }
    else if (row > 3)
    {
        row = 0;
    }
}

if (tab == 5)
{
    if (row < 0)
        row = 4;
    
    if (row > 4)
        row = 0;
}

if (tab == 7 || tab == 8 || tab == 9)
{
    if (row < 0)
        row = 2;
    
    if (row > 2)
        row = 0;
}

if (tab == 3)
{
    if (row < 0)
        row = 13;
    
    if (row > 14)
        row = 0;
}

if (tab == 4)
{
    if (row < 0)
        row = 9;
    
    if (row > 10)
        row = 0;
}

if (tab == 12 || tab == 13)
{
    if (row < 0)
        row = 2;
    
    if (row > 2)
        row = 0;
}

if (global.rscore_average >= 1 && global.rscore_average_d2 >= 1 && global.rscore_average_d3 >= 1 && global.l2_rscore_average >= 1 && global.l2_rscore_average_d2 >= 1 && global.l2_rscore_average_d3 >= 1 && global.l3_rscore_average >= 1 && global.l3_rscore_average_d2 >= 1 && global.l3_rscore_average_d3 >= 1)
    sandbox = 1;
else
    sandbox = 0;

if (tab == 14)
{
    if (row < 0)
        row = 2;
    
    if (row > 2)
        row = 0;
}

if (tab == 15)
{
    if (row < 0)
        row = 3;
    
    if (row > 3)
        row = 0;
}

if (!tapped)
{
    if (up_tap && tab != 10 && tab != 11 && tab != 15)
    {
        if (tab == 0 && room == rm_mainmenu && row == 99)
        {
            row = 3;
            tapped = 1;
        }
        
        if (tab == 3)
        {
            if (row != 13 && row != 7 && !tapped)
            {
                row--;
                tapped = 1;
            }
            
            if (row == 13 && !tapped)
            {
                row = 6;
                tapped = 1;
            }
            
            if (row == 7 && !tapped)
            {
                row = 13;
                tapped = 1;
            }
        }
        
        if (tab == 4)
        {
            if (row != 10 && row != 5 && !tapped)
            {
                row--;
                tapped = 1;
            }
            
            if (row == 10 && !tapped)
            {
                row = 4;
                tapped = 1;
            }
            
            if (row == 5 && !tapped)
            {
                row = 10;
                tapped = 1;
            }
        }
        
        if (tab != 3 && tab != 4)
            row--;
        
        tapped = 1;
        audio_play_sound(snd_menu_choose, 1, 0);
    }
    
    if (down_tap && tab != 10 && tab != 11 && tab != 15)
    {
        if (tab == 0 && room == rm_mainmenu && row == 99)
        {
            row = 0;
            tapped = 1;
        }
        
        if (tab == 3 && !tapped)
        {
            if (row != 13 && row != 6)
            {
                row++;
                tapped = 1;
            }
            
            if (row == 13 && !tapped)
            {
                row = 7;
                tapped = 1;
            }
            
            if (row == 6 && !tapped)
            {
                row = 13;
                tapped = 1;
            }
        }
        
        if (tab == 4 && !tapped)
        {
            if (row != 10 && row != 4)
            {
                row++;
                tapped = 1;
            }
            
            if (row == 10 && !tapped)
            {
                row = 5;
                tapped = 1;
            }
            
            if (row == 4 && !tapped)
            {
                row = 10;
                tapped = 1;
            }
        }
        
        if (tab != 3 && tab != 4 && !tapped)
            row++;
        
        tapped = 1;
        audio_play_sound(snd_menu_choose, 1, 0);
    }
    
    if (tab == 0 || tab == 3 || tab == 4)
    {
        if (left_tap || right_tap)
        {
            if (tab == 0 && room == rm_mainmenu)
            {
                if (left_tap)
                {
                    if (row != 99)
                        row = 99;
                    else
                        row = 3;
                }
                
                if (right_tap)
                {
                    if (row == 99 || row < 3)
                    {
                        if (!tapped)
                        {
                            row = 3;
                            tapped = 1;
                        }
                    }
                    
                    if (row == 3 && !tapped)
                    {
                        row = 99;
                        tapped = 1;
                    }
                }
            }
            
            if (tab == 3 && row != 13)
            {
                if (row <= 5)
                    row += 7;
                else
                    row -= 7;
                
                if (row == 6)
                    row = 12;
            }
            
            if (tab == 3 && row == 13)
            {
                if (left_tap)
                    row = 6;
                
                if (right_tap)
                    row = 12;
            }
            
            if (tab == 4 && row != 10)
            {
                if (row <= 4)
                    row += 5;
                else
                    row -= 5;
            }
            
            if (tab == 4 && row == 10)
            {
                if (left_tap)
                    row = 4;
                
                if (right_tap)
                    row = 9;
            }
            
            tapped = 1;
            
            if (tab == 0)
            {
                if (room == rm_mainmenu)
                    audio_play_sound(snd_menu_choose, 1, 0);
            }
            else
            {
                audio_play_sound(snd_menu_choose, 1, 0);
            }
        }
    }
    
    if (tab == 15)
    {
        if (left_tap || right_tap)
        {
            if (left_tap)
                row--;
            
            if (right_tap)
                row++;
            
            tapped = 1;
            audio_play_sound(snd_menu_choose, 1, 0);
        }
    }
}

if (cooldown >= 0)
    cooldown--;

if (rumble >= 0)
    rumble--;

if (tab == 0)
{
    if (row == 0)
    {
        if (room == rm_mainmenu)
        {
            with (obj_mick_ui_pause_select)
            {
                x = (800 - (((string_length("PLAY") / 2) + 2.25) * 140)) + 100;
                y = 700;
            }
            
            if (action1 && !cooldown && !instance_exists(obj_transition))
            {
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                cooldown = 1;
                tab = 14;
                row = 0;
                
                with (obj_global)
                    time = 30;
            }
        }
        else
        {
            with (obj_mick_ui_pause_select)
            {
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("RESUME") / 2) + 2.25) * 140);
                y = (obj_mick_ui_pause_new.y + 900) - 450;
            }
            
            if (action1 && !cooldown)
            {
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                audio_stop_sound(snd_song_wheremymindroamsfree);
                instance_activate_all();
                instance_destroy();
                instance_destroy(obj_mick_ui_pause_select);
                instance_destroy(obj_mick_ui_pause_select_mick);
            }
        }
    }
    
    if (row == 1)
    {
        if (room == rm_mainmenu)
        {
            with (obj_mick_ui_pause_select)
            {
                x = (800 - (((string_length("SETTINGS") / 2) + 2.25) * 140)) + 100;
                y = 1000;
            }
            
            if (action1 && !cooldown && !instance_exists(obj_transition))
            {
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                cooldown = 1;
                tab = 1;
                row = 0;
            }
        }
        else
        {
            with (obj_mick_ui_pause_select)
            {
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("RESTART") / 2) + 2.25) * 140);
                y = (obj_mick_ui_pause_new.y + 900) - 150;
            }
            
            if (action1 && !cooldown)
            {
                audio_stop_sound(snd_song_wheremymindroamsfree);
                scr_restart();
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
    }
    
    if (row == 2)
    {
        if (room == rm_mainmenu)
        {
            with (obj_mick_ui_pause_select)
            {
                x = (800 - (((string_length("QUIT") / 2) + 2.25) * 140)) + 100;
                y = 1300;
            }
            
            if (action1 && !cooldown && !instance_exists(obj_transition))
            {
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                game_end();
            }
        }
        else
        {
            with (obj_mick_ui_pause_select)
            {
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SETTINGS") / 2) + 2.25) * 140);
                y = obj_mick_ui_pause_new.y + 900 + 150;
            }
            
            if (action1 && !cooldown)
            {
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                cooldown = 1;
                tab = 1;
                row = 0;
            }
        }
    }
    
    if (row == 3)
    {
        if (room == rm_mainmenu)
        {
            with (obj_discord)
                picked = 1;
            
            with (obj_mick_ui_pause_select)
            {
                x = obj_discord.x - 467;
                y = obj_discord.y;
            }
            
            if (action1 && !cooldown && !instance_exists(obj_transition))
            {
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                url_open("https://discord.gg/hmfdXs6hQK");
            }
        }
        else
        {
            with (obj_mick_ui_pause_select)
            {
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("QUIT") / 2) + 2.25) * 140);
                y = obj_mick_ui_pause_new.y + 900 + 450;
            }
            
            if (action1 && !cooldown)
            {
                global.song = -1;
                global.song_playing = 0;
                global.song = 6;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                audio_stop_sound(snd_song_wheremymindroamsfree);
                instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition);
                instance_destroy(obj_mick);
                room_goto(rm_mainmenu);
            }
        }
    }
    else if (instance_exists(obj_discord))
    {
        with (obj_discord)
            picked = 0;
    }
    
    if (row == 99)
    {
        if (room == rm_mainmenu)
        {
            with (obj_kickstarter)
                picked = 1;
            
            with (obj_mick_ui_pause_select)
            {
                x = obj_kickstarter.x - 717;
                y = obj_kickstarter.y;
            }
            
            if (action1 && !cooldown && !instance_exists(obj_transition))
            {
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                url_open("https://www.kickstarter.com/projects/nickdonnoligames/moussacre");
            }
        }
    }
    else if (instance_exists(obj_kickstarter))
    {
        with (obj_kickstarter)
            picked = 0;
    }
    
    with (obj_discord)
        image_alpha = 1;
}
else if (instance_exists(obj_discord))
{
    with (obj_discord)
        image_alpha = 0;
    
    instance_destroy(obj_discord_text);
}

if (tab == 1)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("CONTROLS") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 2;
            row = 0;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("VISUALS") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 5;
            row = 0;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("AUDIO") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 6;
            row = 0;
        }
    }
    
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 0;
            row = 0;
        }
    }
}

if (tab == 2)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("KEYBOARD") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 3;
            row = 0;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("CONTROLLER") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 4;
            row = 0;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            if (global.rumble)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("RUMBLE ON") / 2) + 2.25) * 140);
            else
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("RUMBLE OFF") / 2) + 2.25) * 140);
            
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            if (global.rumble)
            {
                global.rumble = 0;
            }
            else
            {
                global.rumble = 1;
                rumble = 12;
            }
        }
    }
    
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 1;
            row = 0;
        }
    }
}

if (tab == 3)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = (obj_mick_ui_pause_new.y + 900) - 300;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
    }
    
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = obj_mick_ui_pause_new.y + 900;
        }
    }
    
    if (row == 4)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
    }
    
    if (row == 5)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = obj_mick_ui_pause_new.y + 900 + 300;
        }
    }
    
    if (row == 6)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
    }
    
    if (row == 7)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
    }
    
    if (row == 8)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = (obj_mick_ui_pause_new.y + 900) - 300;
        }
    }
    
    if (row == 9)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
    }
    
    if (row == 10)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = obj_mick_ui_pause_new.y + 900;
        }
    }
    
    if (row == 11)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
    }
    
    if (row == 12)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = obj_mick_ui_pause_new.y + 900 + 300;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            global.up = 38;
            global.down = 40;
            global.left = 37;
            global.right = 39;
            global.action1 = 90;
            global.action2 = 88;
            global.action3 = 67;
            global.action4 = 86;
            global.action5 = 160;
            global.action6 = 32;
            global.gun = 65;
            global.hook = 83;
            global.cannon = 68;
            cooldown = 1;
        }
    }
    
    if (row == 13)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 800;
            y = obj_mick_ui_pause_new.y + 900 + 600;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 2;
            row = 0;
        }
    }
    
    if (action1 && !cooldown)
    {
        if (row <= 8)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 10;
            key_time = 300;
        }
        
        if (row >= 9 && row <= 11)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 10;
            key_time = 300;
        }
    }
}

if (tab == 4)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = (obj_mick_ui_pause_new.y + 900) - 300;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = obj_mick_ui_pause_new.y + 900;
        }
    }
    
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
    }
    
    if (row == 4)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 100;
            y = obj_mick_ui_pause_new.y + 900 + 300;
        }
    }
    
    if (row == 5)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = (obj_mick_ui_pause_new.y + 900) - 300;
        }
    }
    
    if (row == 6)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
    }
    
    if (row == 7)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = obj_mick_ui_pause_new.y + 900;
        }
    }
    
    if (row == 8)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
    }
    
    if (row == 9)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 1500;
            y = obj_mick_ui_pause_new.y + 900 + 300;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            global.c_action1 = 32769;
            global.c_action2 = 32771;
            global.c_action3 = 32770;
            global.c_action4 = 32772;
            global.c_action5 = 32776;
            global.c_action6 = 32775;
            global.c_gun = 32771;
            global.c_hook = 32772;
            global.c_cannon = 32770;
            cooldown = 1;
        }
    }
    
    if (row == 10)
    {
        with (obj_mick_ui_pause_select)
        {
            x = obj_mick_ui_pause_new.x + 800;
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 2;
            row = 0;
        }
    }
    
    if (action1 && !cooldown)
    {
        if (row <= 4)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 11;
            key_time = 300;
        }
        
        if (row >= 5 && row <= 8)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 11;
            key_time = 300;
        }
    }
}

if (tab == 5)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            if (window_get_width() == 3840)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 3840x2160") / 2) + 2.25) * 140);
            
            if (window_get_width() == 3200)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 3200x1800") / 2) + 2.25) * 140);
            
            if (window_get_width() == 2560)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 2560x1440") / 2) + 2.25) * 140);
            
            if (window_get_width() == 1920)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 1920x1080") / 2) + 2.25) * 140);
            
            if (window_get_width() == 1600)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 1600x900") / 2) + 2.25) * 140);
            
            if (window_get_width() == 1280)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 1280x720") / 2) + 2.25) * 140);
            
            if (window_get_width() == 1024)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 1024x576") / 2) + 2.25) * 140);
            
            if (window_get_width() == 480)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SIZE 480x270") / 2) + 2.25) * 140);
            
            if (window_get_width() != 3840 && window_get_width() != 3200 && window_get_width() != 2560 && window_get_width() != 1920 && window_get_width() != 1600 && window_get_width() != 1280 && window_get_width() != 1024 && window_get_width() != 480)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("UNKNOWN RESOLUTION") / 2) + 2.25) * 140);
            
            y = (obj_mick_ui_pause_new.y + 900) - 600;
        }
        
        if (action1 && !cooldown && !window_get_fullscreen())
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            stop = 0;
            
            if (window_get_width() == 480)
            {
                window_set_size(3840, 2160);
                global.resolution = 7;
                stop = 1;
            }
            
            if (window_get_width() == 1024)
            {
                window_set_size(480, 270);
                global.resolution = 0;
            }
            
            if (window_get_width() == 1280)
            {
                window_set_size(1024, 576);
                global.resolution = 1;
            }
            
            if (window_get_width() == 1600)
            {
                window_set_size(1280, 720);
                global.resolution = 2;
            }
            
            if (window_get_width() == 1920)
            {
                window_set_size(1600, 900);
                global.resolution = 3;
            }
            
            if (window_get_width() == 2560)
            {
                window_set_size(1920, 1080);
                global.resolution = 4;
            }
            
            if (window_get_width() == 3200)
            {
                window_set_size(2560, 1440);
                global.resolution = 5;
            }
            
            if (window_get_width() == 3840 && !stop)
            {
                window_set_size(3200, 1800);
                global.resolution = 6;
            }
        }
        
        if (action1 && !cooldown && window_get_fullscreen())
            audio_play_sound(snd_menu_cantselect, 1, 0);
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            if (!window_get_fullscreen())
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("WINDOWED") / 2) + 2.25) * 140);
            else
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("FULLSCREEN") / 2) + 2.25) * 140);
            
            y = (obj_mick_ui_pause_new.y + 900) - 300;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            if (window_get_fullscreen())
            {
                window_set_fullscreen(false);
                global.fullscreen = 0;
                
                if (global.resolution == 0)
                    window_set_size(480, 270);
                
                if (global.resolution == 1)
                    window_set_size(1024, 576);
                
                if (global.resolution == 2)
                    window_set_size(1280, 720);
                
                if (global.resolution == 3)
                    window_set_size(1600, 900);
                
                if (global.resolution == 4)
                    window_set_size(1920, 1080);
                
                if (global.resolution == 5)
                    window_set_size(2560, 1440);
                
                if (global.resolution == 6)
                    window_set_size(3200, 1800);
                
                if (global.resolution == 7)
                    window_set_size(3840, 2160);
            }
            else
            {
                window_set_fullscreen(true);
                global.fullscreen = 1;
            }
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            if (global.particles)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("PARTICLES HIGH") / 2) + 2.25) * 140);
            else
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("PARTICLES LOW") / 2) + 2.25) * 140);
            
            y = obj_mick_ui_pause_new.y + 900 + 0;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            if (global.particles)
                global.particles = 0;
            else
                global.particles = 1;
        }
    }
    
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            if (global.numbers)
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("NUMBERS ON") / 2) + 2.25) * 140);
            else
                x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("NUMBERS OFF") / 2) + 2.25) * 140);
            
            y = obj_mick_ui_pause_new.y + 900 + 300;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            if (global.numbers)
                global.numbers = 0;
            else
                global.numbers = 1;
        }
    }
    
    if (row == 4)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 600;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 1;
            row = 0;
        }
    }
}

if (tab == 6)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("MASTER") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 7;
            row = 0;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SOUNDS") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 8;
            row = 0;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("MUSIC") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 9;
            row = 0;
        }
    }
    
    if (row == 3)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 1;
            row = 0;
        }
    }
}

if (tab == 7)
{
    audio_set_master_gain(0, global.volume);
    
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("INCREASE") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            rot = -4;
            
            if (volume < 15)
                volume++;
            
            cooldown = 1;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("DECREASE") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            rot = 4;
            
            if (volume > 0)
                volume--;
            
            cooldown = 1;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            tab = 6;
            cooldown = 1;
            row = 0;
        }
    }
}

if (tab == 8)
{
    audio_group_set_gain(snd_background_city_1, global.volume2, 0);
    
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("INCREASE") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            rot = -4;
            
            if (volume2 < 15)
                volume2++;
            
            cooldown = 1;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("DECREASE") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            rot = 4;
            
            if (volume2 > 0)
                volume2--;
            
            cooldown = 1;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            tab = 6;
            cooldown = 1;
            row = 0;
        }
    }
}

if (tab == 9)
{
    audio_group_set_gain(snd_background_forest_1, global.volume3, 0);
    
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("INCREASE") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            rot = -4;
            
            if (volume3 < 15)
                volume3++;
            
            cooldown = 1;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("DECREASE") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            rot = 4;
            
            if (volume3 > 0)
                volume3--;
            
            cooldown = 1;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("GO BACK") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 450;
        }
        
        if (action1 && !cooldown)
        {
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            tab = 6;
            cooldown = 1;
            row = 0;
        }
    }
}

if (tab == 10)
{
    with (obj_mick_ui_pause_select)
    {
        x = obj_mick_ui_pause_new.x - 100;
        y = obj_mick_ui_pause_new.y - 100;
    }
    
    if (keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_escape) && !cooldown)
    {
        if (row == 0)
            global.up = keyboard_lastkey;
        
        if (row == 1)
            global.down = keyboard_lastkey;
        
        if (row == 2)
            global.left = keyboard_lastkey;
        
        if (row == 3)
            global.right = keyboard_lastkey;
        
        if (row == 4)
            global.action1 = keyboard_lastkey;
        
        if (row == 5)
            global.action2 = keyboard_lastkey;
        
        if (row == 6)
            global.action3 = keyboard_lastkey;
        
        if (row == 7)
            global.action4 = keyboard_lastkey;
        
        if (row == 8)
            global.action5 = keyboard_lastkey;
        
        if (row == 9)
            global.gun = keyboard_lastkey;
        
        if (row == 10)
            global.hook = keyboard_lastkey;
        
        if (row == 11)
            global.cannon = keyboard_lastkey;
        
        audio_play_sound(snd_menu_select, 1, 0);
        
        with (obj_mick_ui_pause_select_mick)
        {
            sprite_index = spr_mick_ui_select_active;
            image_index = 0;
        }
        
        tab = 3;
        cooldown = 1;
    }
    
    if (mouse_check_button_pressed(mb_any) && !cooldown)
    {
        if (row == 0)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.up = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.up = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.up = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.up = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.up = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 1)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.down = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.down = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.down = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.down = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.down = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 2)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.left = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.left = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.left = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.left = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.left = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 3)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.right = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.right = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.right = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.right = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.right = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 4)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.action1 = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.action1 = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.action1 = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.action1 = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.action1 = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 5)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.action2 = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.action2 = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.action2 = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.action2 = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.action2 = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 6)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.action3 = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.action3 = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.action3 = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.action3 = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.action3 = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 7)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.action4 = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.action4 = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.action4 = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.action4 = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.action4 = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 8)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.action5 = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.action5 = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.action5 = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.action5 = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.action5 = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 9)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.gun = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.gun = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.gun = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.gun = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.gun = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 10)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.hook = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.hook = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.hook = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.hook = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.hook = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 11)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                global.cannon = 1;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_right))
            {
                global.cannon = 2;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(mb_middle))
            {
                global.cannon = 3;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(4))
            {
                global.cannon = 4;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (mouse_check_button_pressed(5))
            {
                global.cannon = 5;
                tab = 3;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        tab = 3;
        cooldown = 1;
    }
}

if (tab == 11)
{
    with (obj_mick_ui_pause_select)
    {
        x = obj_mick_ui_pause_new.x - 100;
        y = obj_mick_ui_pause_new.y - 100;
    }
    
    if (!cooldown)
    {
        if (row == 0)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_action1 = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_action1 = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_action1 = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_action1 = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_action1 = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_action1 = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_action1 = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_action1 = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_action1 = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_action1 = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_action1 = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 1)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_action2 = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_action2 = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_action2 = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_action2 = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_action2 = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_action2 = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_action2 = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_action2 = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_action2 = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_action2 = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_action2 = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 2)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_action3 = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_action3 = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_action3 = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_action3 = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_action3 = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_action3 = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_action3 = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_action3 = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_action3 = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_action3 = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_action3 = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 3)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_action4 = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_action4 = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_action4 = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_action4 = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_action4 = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_action4 = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_action4 = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_action4 = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_action4 = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_action4 = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_action4 = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 4)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_action5 = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_action5 = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_action5 = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_action5 = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_action5 = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_action5 = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_action5 = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_action5 = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_action5 = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_action5 = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_action5 = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 5)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_action6 = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_action6 = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_action6 = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_action6 = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_action6 = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_action6 = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_action6 = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_action6 = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_action6 = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_action6 = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_action6 = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 6)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_gun = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_gun = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_gun = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_gun = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_gun = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_gun = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_gun = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_gun = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_gun = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_gun = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_gun = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 7)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_hook = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_hook = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_hook = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_hook = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_hook = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_hook = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_hook = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_hook = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_hook = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_hook = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_hook = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
        
        if (row == 8)
        {
            if (gamepad_button_check_pressed(0, gp_face1))
            {
                global.c_cannon = 32769;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face2))
            {
                global.c_cannon = 32770;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face3))
            {
                global.c_cannon = 32771;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_face4))
            {
                global.c_cannon = 32772;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderl))
            {
                global.c_cannon = 32773;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderr))
            {
                global.c_cannon = 32774;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderlb))
            {
                global.c_cannon = 32775;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_shoulderrb))
            {
                global.c_cannon = 32776;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_select))
            {
                global.c_cannon = 32777;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickl))
            {
                global.c_cannon = 32779;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
            
            if (gamepad_button_check_pressed(0, gp_stickr))
            {
                global.c_cannon = 32780;
                tab = 4;
                cooldown = 1;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
            }
        }
    }
}

if (tab == 12)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("DEMO 1") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
        
        if (action1 && !cooldown)
        {
            display_time = 1;
            global.demo = 1;
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 13;
            row = 0;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("DEMO 2") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            display_time = 1;
            global.demo = 2;
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 13;
            row = 0;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("DEMO 3") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            display_time = 1;
            global.demo = 3;
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 13;
            row = 0;
        }
    }
}

if (tab == 13)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("HOLLOW CITY") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
        
        if (action1 && !cooldown && !instance_exists(obj_transition))
        {
            global.level = 1;
            
            if (global.demo != 3)
            {
                global.badge = 0;
                scr_restart();
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                global.song_playing = 0;
                global.song = 5;
                
                with (obj_global)
                    time = 30;
            }
            else
            {
                x_pos = 0;
                x_mov = 0;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                cooldown = 1;
                tab = 15;
                row = 0;
            }
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("IRON WOODS 1") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown && !instance_exists(obj_transition))
        {
            global.level = 2;
            
            if (global.demo != 3)
            {
                global.badge = 0;
                scr_restart();
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                global.song_playing = 0;
                global.song = 10;
                
                with (obj_global)
                    time = 30;
            }
            else
            {
                x_pos = 0;
                x_mov = 0;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                cooldown = 1;
                tab = 15;
                row = 0;
            }
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("OSBORG 1") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown && !instance_exists(obj_transition))
        {
            global.level = 3;
            
            if (global.demo != 3)
            {
                global.hour = 0;
                global.minute = 0;
                global.second = 0;
                global.badge = 0;
                instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition);
                room_goto(rm_vs);
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                global.song_playing = 0;
                global.song = -1;
                
                with (obj_global)
                    time = 30;
            }
            else
            {
                x_pos = 0;
                x_mov = 0;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                cooldown = 1;
                tab = 15;
                row = 0;
            }
        }
    }
}

if (tab == 14)
{
    if (row == 0)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("CLASSIC") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 450;
        }
        
        if (action1 && !cooldown)
        {
            display_time = 1;
            global.difficulty = 0;
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 12;
            row = 0;
        }
    }
    
    if (row == 1)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("CASUAL") / 2) + 2.25) * 140);
            y = (obj_mick_ui_pause_new.y + 900) - 150;
        }
        
        if (action1 && !cooldown)
        {
            display_time = 1;
            global.difficulty = 1;
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            cooldown = 1;
            tab = 12;
            row = 0;
        }
    }
    
    if (row == 2)
    {
        with (obj_mick_ui_pause_select)
        {
            x = (obj_mick_ui_pause_new.x + 1600) - (((string_length("SANDBOX") / 2) + 2.25) * 140);
            y = obj_mick_ui_pause_new.y + 900 + 150;
        }
        
        if (action1 && !cooldown)
        {
            if (sandbox)
            {
                display_time = 1;
                global.difficulty = 2;
                audio_play_sound(snd_menu_select, 1, 0);
                
                with (obj_mick_ui_pause_select_mick)
                {
                    sprite_index = spr_mick_ui_select_active;
                    image_index = 0;
                }
                
                cooldown = 1;
                tab = 12;
                row = 0;
            }
            else
            {
                audio_play_sound(snd_menu_cantselect, 1, 0);
            }
        }
    }
}

if (tab == 15)
{
    with (obj_mick_ui_pause_select)
    {
        x = obj_mick_ui_pause_new.x - 100;
        y = obj_mick_ui_pause_new.y - 100;
    }
    
    if (action1 && !cooldown)
        global.badge = row;
    
    if (global.level == 1)
    {
        if (action1 && !cooldown)
        {
            scr_restart();
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            global.song_playing = 0;
            global.song = 5;
            
            with (obj_global)
                time = 30;
        }
    }
    
    if (global.level == 2)
    {
        if (action1 && !cooldown)
        {
            scr_restart();
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            global.song_playing = 0;
            global.song = 10;
            
            with (obj_global)
                time = 30;
        }
    }
    
    if (global.level == 3)
    {
        if (action1 && !cooldown)
        {
            global.hour = 0;
            global.minute = 0;
            global.second = 0;
            instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition);
            room_goto(rm_vs);
            audio_play_sound(snd_menu_select, 1, 0);
            
            with (obj_mick_ui_pause_select_mick)
            {
                sprite_index = spr_mick_ui_select_active;
                image_index = 0;
            }
            
            global.song_playing = 0;
            global.song = -1;
            
            with (obj_global)
                time = 30;
        }
    }
}

if (rot < 0)
    rot++;

if (rot > 0)
    rot--;

if (volume == 15)
    global.volume = 1;

if (volume == 14)
    global.volume = 0.93;

if (volume == 13)
    global.volume = 0.87;

if (volume == 12)
    global.volume = 0.8;

if (volume == 11)
    global.volume = 0.73;

if (volume == 10)
    global.volume = 0.67;

if (volume == 9)
    global.volume = 0.6;

if (volume == 8)
    global.volume = 0.53;

if (volume == 7)
    global.volume = 0.46;

if (volume == 6)
    global.volume = 0.4;

if (volume == 5)
    global.volume = 0.33;

if (volume == 4)
    global.volume = 0.26;

if (volume == 3)
    global.volume = 0.2;

if (volume == 2)
    global.volume = 0.13;

if (volume == 1)
    global.volume = 0.06;

if (volume == 0)
    global.volume = 0;

if (volume2 == 15)
    global.volume2 = 1;

if (volume2 == 14)
    global.volume2 = 0.93;

if (volume2 == 13)
    global.volume2 = 0.87;

if (volume2 == 12)
    global.volume2 = 0.8;

if (volume2 == 11)
    global.volume2 = 0.73;

if (volume2 == 10)
    global.volume2 = 0.67;

if (volume2 == 9)
    global.volume2 = 0.6;

if (volume2 == 8)
    global.volume2 = 0.53;

if (volume2 == 7)
    global.volume2 = 0.46;

if (volume2 == 6)
    global.volume2 = 0.4;

if (volume2 == 5)
    global.volume2 = 0.33;

if (volume2 == 4)
    global.volume2 = 0.26;

if (volume2 == 3)
    global.volume2 = 0.2;

if (volume2 == 2)
    global.volume2 = 0.13;

if (volume2 == 1)
    global.volume2 = 0.06;

if (volume2 == 0)
    global.volume2 = 0;

if (volume3 == 15)
    global.volume3 = 1;

if (volume3 == 14)
    global.volume3 = 0.93;

if (volume3 == 13)
    global.volume3 = 0.87;

if (volume3 == 12)
    global.volume3 = 0.8;

if (volume3 == 11)
    global.volume3 = 0.73;

if (volume3 == 10)
    global.volume3 = 0.67;

if (volume3 == 9)
    global.volume3 = 0.6;

if (volume3 == 8)
    global.volume3 = 0.53;

if (volume3 == 7)
    global.volume3 = 0.46;

if (volume3 == 6)
    global.volume3 = 0.4;

if (volume3 == 5)
    global.volume3 = 0.33;

if (volume3 == 4)
    global.volume3 = 0.26;

if (volume3 == 3)
    global.volume3 = 0.2;

if (volume3 == 2)
    global.volume3 = 0.13;

if (volume3 == 1)
    global.volume3 = 0.06;

if (volume3 == 0)
    global.volume3 = 0;

if (tab != 2)
    gamepad_set_vibration(0, 0, 0);

scroll_x += 8;
scroll_y += 4.5;

if (scroll_x == 3200)
    scroll_x -= 3200;

if (scroll_y == 1800)
    scroll_y -= 1800;

if (room == rm_mainmenu)
{
    anim--;
    
    if (anim == 0)
    {
        anim = 30;
        
        if (frame == 0 && reset)
        {
            frame = 1;
            reset = 0;
        }
        
        if (frame == 1 && reset)
        {
            frame = 2;
            reset = 0;
        }
        
        if (frame == 2 && reset)
        {
            frame = 0;
            reset = 0;
        }
        
        reset = 1;
    }
    
    tilt += 0.1;
    
    if (tilt >= 360)
        tilt -= 360;
}
