if (tab == 0 && room == rm_mainmenu)
{
    draw_sprite_ext(spr_background_mainmenu, 0, 1600, 900, 2.2, 2.2, tilt, c_white, 1);
    
    if (frame == 0)
        draw_sprite(spr_mick_ui_mainmenu, 1, 0, 0);
    
    if (frame == 1)
        draw_sprite(spr_mick_ui_mainmenu, 2, 0, 0);
    
    if (frame == 2)
        draw_sprite(spr_mick_ui_mainmenu, 0, 0, 0);
    
    draw_sprite(spr_logo_mainmenu, 0, 0, 0);
    draw_set_font(font2);
    draw_set_halign(fa_left);
    draw_text(50, 1750, "© 2024 Nicola Donnoli  v0.2.1");
    place = "MAIN MENU";
}

if (room != rm_mainmenu)
    place = "PAUSE";

if (global.difficulty == 0)
    difficulty = "CLASSIC";

if (global.difficulty == 1)
    difficulty = "CASUAL";

if (global.difficulty == 2)
    difficulty = "SANDBOX";

if (global.level == 1)
    level = "HOLLOW CITY";

if (global.level == 2)
    level = "IRON WOODS 1";

if (global.level == 3)
    level = "OSBORG 1";

if (room == rm_mainmenu && tab > 0)
{
    draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, y - scroll_y);
    draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, y - scroll_y);
    draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, (y - scroll_y) + 1800);
    draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, (y - scroll_y) + 1800);
}

if (room != rm_mainmenu)
{
    draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, y - scroll_y);
    draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, y - scroll_y);
    draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, (y - scroll_y) + 1800);
    draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, (y - scroll_y) + 1800);
}

draw_set_halign(fa_left);
draw_set_font(font2);
draw_set_color(c_white);

if (tab == 0 && room != rm_mainmenu)
    draw_text(x + 50, y + 75, string(place));

if (tab == 1)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS");

if (tab == 2)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: CONTROLS");

if (tab == 3)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: CONTROLS: KEYBOARD");

if (tab == 4)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: CONTROLS: CONTROLLER");

if (tab == 5)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: VISUALS");

if (tab == 6)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: AUDIO");

if (tab == 7)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: AUDIO: MASTER");

if (tab == 8)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: AUDIO: SOUNDS");

if (tab == 9)
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: AUDIO: MUSIC");

if (tab == 10)
{
    if (row == 0)
        newkey = "UP";
    
    if (row == 1)
        newkey = "DOWN";
    
    if (row == 2)
        newkey = "LEFT";
    
    if (row == 3)
        newkey = "RIGHT";
    
    if (row == 4)
        newkey = "JUMP";
    
    if (row == 5)
        newkey = "SPIN";
    
    if (row == 6)
        newkey = "DASH";
    
    if (row == 7)
        newkey = "INTERACT";
    
    if (row == 8)
        newkey = "SPRINT";
    
    if (row == 9)
        newkey = "GUN";
    
    if (row == 10)
        newkey = "HOOK";
    
    if (row == 11)
        newkey = "CANNON";
    
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: CONTROLS: KEYBOARD: " + string(newkey));
}

if (tab == 11)
{
    if (row == 0)
        newkey = "JUMP";
    
    if (row == 1)
        newkey = "SPIN";
    
    if (row == 2)
        newkey = "DASH";
    
    if (row == 3)
        newkey = "INTERACT";
    
    if (row == 4)
        newkey = "SPRINT";
    
    if (row == 5)
        newkey = "SUB-WEAPON";
    
    if (row == 6)
        newkey = "GUN";
    
    if (row == 7)
        newkey = "HOOK";
    
    if (row == 8)
        newkey = "CANNON";
    
    draw_text(x + 50, y + 75, string(place) + ": SETTINGS: CONTROLS: CONTROLLER: " + string(newkey));
}

if (tab == 12)
    draw_text(x + 50, y + 75, string(place) + ": PLAY: " + string(difficulty));

if (tab == 13)
    draw_text(x + 50, y + 75, string(place) + ": PLAY: " + string(difficulty) + ": DEMO " + string(global.demo));

if (tab == 14)
    draw_text(x + 50, y + 75, string(place) + ": PLAY");

if (tab == 15)
    draw_text(x + 50, y + 75, string(place) + ": PLAY: " + string(difficulty) + ": DEMO " + string(global.demo) + ": " + string(level));

if (tab == 0 && room != rm_mainmenu)
    draw_sprite(spr_mick_ui_pause_1, 0, x, y);

if (tab == 1)
    draw_sprite(spr_mick_ui_pause_6, 0, x, y);

if (tab == 2)
    draw_sprite(spr_mick_ui_pause_15, 0, x, y);

if (tab == 5)
    draw_sprite(spr_mick_ui_pause_14, 0, x, y);

if (tab == 6)
    draw_sprite(spr_mick_ui_pause_13, 0, x, y);

if (tab == 7)
{
    if (volume >= 0 && volume <= 5)
        draw_sprite(spr_mick_ui_pause_5, 0, x, y);
    
    if (volume >= 6 && volume <= 10)
        draw_sprite(spr_mick_ui_pause_3, 0, x, y);
    
    if (volume >= 11 && volume <= 15)
        draw_sprite(spr_mick_ui_pause_2, 0, x, y);
}

if (tab == 8)
{
    if (volume2 >= 0 && volume2 <= 5)
        draw_sprite(spr_mick_ui_pause_9, 0, x, y);
    
    if (volume2 >= 6 && volume2 <= 10)
        draw_sprite(spr_mick_ui_pause_8, 0, x, y);
    
    if (volume2 >= 11 && volume2 <= 15)
        draw_sprite(spr_mick_ui_pause_7, 0, x, y);
}

if (tab == 9)
{
    if (volume3 >= 0 && volume3 <= 5)
        draw_sprite(spr_mick_ui_pause_12, 0, x, y);
    
    if (volume3 >= 6 && volume3 <= 10)
        draw_sprite(spr_mick_ui_pause_11, 0, x, y);
    
    if (volume3 >= 11 && volume3 <= 15)
        draw_sprite(spr_mick_ui_pause_10, 0, x, y);
}

draw_set_halign(fa_center);
draw_set_font(font);

if (row == 0)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0)
{
    if (room != rm_mainmenu)
        draw_text(x + 1675, (y + 900) - 450, "RESUME");
    else
        draw_text(x + 875 + 100, (y + 1350) - 450 - 200, "PLAY");
}

if (tab == 1)
    draw_text(x + 1675, (y + 900) - 450, "CONTROLS");

if (tab == 2)
    draw_text(x + 1675, (y + 900) - 450, "KEYBOARD");

if (tab == 12)
    draw_text(x + 1675, (y + 900) - 450, "DEMO 1");

if (tab == 13)
    draw_text(x + 1675, (y + 900) - 450, "HOLLOW CITY");

draw_set_font(font2);
draw_set_halign(fa_left);

if (tab == 3)
    draw_text(x + 475, (y + 900) - 450, "UP");

if (tab == 4)
    draw_text(x + 475, (y + 900) - 300, "JUMP");

draw_set_halign(fa_center);
draw_set_font(font);

if (tab == 5)
{
    if (window_get_width() == 3840)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 3840x2160");
    
    if (window_get_width() == 3200)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 3200x1800");
    
    if (window_get_width() == 2560)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 2560x1440");
    
    if (window_get_width() == 1920)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 1920x1080");
    
    if (window_get_width() == 1600)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 1600x900");
    
    if (window_get_width() == 1280)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 1280x720");
    
    if (window_get_width() == 1024)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 1024x576");
    
    if (window_get_width() == 480)
        draw_text(x + 1675, (y + 900) - 600, "SIZE 480x270");
    
    if (window_get_width() != 480 && window_get_width() != 1024 && window_get_width() != 1280 && window_get_width() != 1600 && window_get_width() != 1920 && window_get_width() != 2560 && window_get_width() != 3200 && window_get_width() != 3840)
    {
        draw_text(x + 1675, (y + 900) - 600, "UNKNOWN RESOLUTION");
        global.resolution = 99;
    }
}

if (tab == 6)
    draw_text(x + 1675, (y + 900) - 450, "MASTER");

if (tab == 7 || tab == 8 || tab == 9)
{
    if (tab == 7)
        draw_sprite_ext(spr_mick_ui_audio, volume, x + 1600, (y + 900) - 450, 1, 1, rot, c_white, 1);
    
    if (tab == 8)
        draw_sprite_ext(spr_mick_ui_audio, volume2, x + 1600, (y + 900) - 450, 1, 1, rot, c_white, 1);
    
    if (tab == 9)
        draw_sprite_ext(spr_mick_ui_audio, volume3, x + 1600, (y + 900) - 450, 1, 1, rot, c_white, 1);
    
    draw_text(x + 1675, (y + 900) - 150, "INCREASE");
}

if (tab == 14)
    draw_text(x + 1675, (y + 900) - 450, "CLASSIC");

if (row == 1)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0)
{
    if (room == rm_mainmenu)
        draw_text(x + 875 + 100, (y + 1350) - 150 - 200, "SETTINGS");
    else
        draw_text(x + 1675, (y + 900) - 150, "RESTART");
}

if (tab == 1)
    draw_text(x + 1675, (y + 900) - 150, "VISUALS");

if (tab == 2)
    draw_text(x + 1675, (y + 900) - 150, "CONTROLLER");

draw_set_halign(fa_left);
draw_set_font(font2);

if (tab == 3)
    draw_text(x + 475, (y + 900) - 300, "DOWN");

if (tab == 4)
    draw_text(x + 475, (y + 900) - 150, "SPIN");

draw_set_halign(fa_center);
draw_set_font(font);

if (tab == 5)
{
    if (!window_get_fullscreen())
        draw_text(x + 1675, (y + 900) - 300, "WINDOWED");
    else
        draw_text(x + 1675, (y + 900) - 300, "FULLSCREEN");
}

if (tab == 6)
    draw_text(x + 1675, (y + 900) - 150, "SOUNDS");

if (tab == 7 || tab == 8 || tab == 9)
    draw_text(x + 1675, y + 900 + 150, "DECREASE");

if (tab == 12)
    draw_text(x + 1675, (y + 900) - 150, "DEMO 2");

if (tab == 13)
    draw_text(x + 1675, (y + 900) - 150, "IRON WOODS 1");

if (tab == 14)
    draw_text(x + 1675, (y + 900) - 150, "CASUAL");

if (row == 2)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0)
{
    if (room == rm_mainmenu)
        draw_text(x + 875 + 100, (y + 1350 + 150) - 200, "QUIT");
    else
        draw_text(x + 1675, y + 900 + 150, "SETTINGS");
}

if (tab == 1)
    draw_text(x + 1675, y + 900 + 150, "AUDIO");

if (tab == 2)
{
    if (rumble > 0)
        gamepad_set_vibration(0, 1, 1);
    else
        gamepad_set_vibration(0, 0, 0);
    
    if (global.rumble)
        draw_text(x + 1675, y + 900 + 150, "RUMBLE ON");
    else
        draw_text(x + 1675, y + 900 + 150, "RUMBLE OFF");
}

if (tab == 12)
    draw_text(x + 1675, y + 900 + 150, "DEMO 3");

if (tab == 13)
    draw_text(x + 1675, y + 900 + 150, "OSBORG 1");

if (tab == 14)
{
    if (sandbox)
        draw_text(x + 1675, y + 900 + 150, "SANDBOX");
    else
        draw_text(x + 1675, y + 900 + 150, "???????");
}

draw_set_font(font2);
draw_set_halign(fa_left);

if (tab == 3)
    draw_text(x + 475, (y + 900) - 150, "LEFT");

if (tab == 4)
    draw_text(x + 475, (y + 900) - 0, "DASH");

draw_set_halign(fa_center);
draw_set_font(font);

if (tab == 5)
{
    if (global.particles)
        draw_text(x + 1675, y + 900 + 0, "PARTICLES HIGH");
    else
        draw_text(x + 1675, y + 900 + 0, "PARTICLES LOW");
}

if (tab == 6)
    draw_text(x + 1675, y + 900 + 150, "MUSIC");

if (tab == 7 || tab == 8 || tab == 9)
    draw_text(x + 1675, y + 900 + 450, "GO BACK");

if (row == 3)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0 && room != rm_mainmenu)
    draw_text(x + 1675, y + 900 + 450, "QUIT");

if (tab == 1)
    draw_text(x + 1675, y + 900 + 450, "GO BACK");

if (tab == 2)
    draw_text(x + 1675, y + 900 + 450, "GO BACK");

draw_set_font(font2);

if (tab == 12)
{
    if (row == 0)
        draw_text(x + 1675, y + 900 + 600, "Sub-weapons and badges NOT available...");
    
    if (row == 1)
        draw_text(x + 1675, y + 900 + 600, "Sub-weapons added! View \"CONTROLS\" to learn how to use them.");
    
    if (row == 2)
        draw_text(x + 1675, y + 900 + 600, "Badges added! Choose one before starting a level.");
}

if (tab == 14)
{
    if (row == 0)
        draw_text(x + 1675, y + 900 + 600, "The classic difficulty.");
    
    if (row == 1)
    {
        draw_text(x + 1675, y + 900 + 600, "5 more max health and 2 more jumps,");
        draw_text(x + 1675, y + 900 + 750, "but time, score, and rank don't save.");
    }
    
    if (row == 2)
    {
        if (sandbox)
        {
            draw_text(x + 1675, y + 900 + 600, "Infinite health, sub points, and jumps,");
            draw_text(x + 1675, y + 900 + 750, "but time, score, and rank are disabled.");
        }
        else
        {
            draw_text(x + 1675, y + 900 + 600, "Unlock by earning at least a D-rank");
            draw_text(x + 1675, y + 900 + 750, "on all levels in each demo.");
        }
    }
}

draw_set_halign(fa_left);

if (tab == 13)
{
    draw_text(x + 100, y + 900 + 600, "DEMO " + string(global.demo));
    
    if (row == 0)
        draw_text(x + 100, y + 900 + 750, "HOLLOW CITY");
    
    if (row == 1)
        draw_text(x + 100, y + 900 + 750, "IRON WOODS 1");
    
    if (row == 2)
        draw_text(x + 100, y + 900 + 750, "OSBORG 1");
    
    if (row != 2)
    {
        if (score_average < 1)
            rank = spr_mick_ui_rank_f_small;
        
        if (score_average >= 1 && score_average < 45)
            rank = spr_mick_ui_rank_d_small;
        
        if (score_average >= 45 && score_average < 90)
            rank = spr_mick_ui_rank_c_small;
        
        if (score_average >= 90 && score_average < 135)
            rank = spr_mick_ui_rank_b_small;
        
        if (score_average >= 135 && score_average < 180)
            rank = spr_mick_ui_rank_a_small;
        
        if (score_average >= 180 && dmg >= 3)
            rank = spr_mick_ui_rank_a_small;
        
        if (score_average >= 180 && dmg < 3)
            rank = spr_mick_ui_rank_x_small;
    }
    else
    {
        if (score_average < 1)
            rank = spr_mick_ui_rank_f_small;
        
        if (score_average >= 1 && score_average < 90)
            rank = spr_mick_ui_rank_d_small;
        
        if (score_average >= 90 && score_average < 180)
            rank = spr_mick_ui_rank_c_small;
        
        if (score_average >= 180 && score_average < 270)
            rank = spr_mick_ui_rank_b_small;
        
        if (score_average >= 270 && score_average < 360)
            rank = spr_mick_ui_rank_a_small;
        
        if (score_average >= 360 && dmg >= 3)
            rank = spr_mick_ui_rank_a_small;
        
        if (score_average >= 360 && dmg < 3)
            rank = spr_mick_ui_rank_x_small;
    }
    
    if (global.demo == 1)
    {
        if (row == 0)
        {
            global.minute = global.rminute;
            global.second = global.rsecond;
            score_average = global.rscore_average;
            dmg = global.rdamaged;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.rhour) + ":" + string(global.minute0) + string(global.rminute) + ":" + string(global.second0) + string(global.rsecond) + "." + string(global.rdsecond) + string(global.rcsecond));
                draw_text(x + 1800, y + 900 + 750, global.rscore);
            }
        }
        
        if (row == 1)
        {
            global.minute = global.l2_rminute;
            global.second = global.l2_rsecond;
            score_average = global.l2_rscore_average;
            dmg = global.l2_rdamaged;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.l2_rhour) + ":" + string(global.minute0) + string(global.l2_rminute) + ":" + string(global.second0) + string(global.l2_rsecond) + "." + string(global.l2_rdsecond) + string(global.l2_rcsecond));
                draw_text(x + 1800, y + 900 + 750, global.l2_rscore);
            }
        }
        
        if (row == 2)
        {
            global.minute = global.l3_rminute;
            global.second = global.l3_rsecond;
            score_average = global.l3_rscore_average;
            dmg = global.l3_rdamaged;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.l3_rhour) + ":" + string(global.minute0) + string(global.l3_rminute) + ":" + string(global.second0) + string(global.l3_rsecond) + "." + string(global.l3_rdsecond) + string(global.l3_rcsecond));
                draw_text(x + 1800, y + 900 + 750, global.l3_rscore);
            }
        }
    }
    
    if (global.demo == 2)
    {
        if (row == 0)
        {
            global.minute = global.rminute_d2;
            global.second = global.rsecond_d2;
            score_average = global.rscore_average_d2;
            dmg = global.rdamaged_d2;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.rhour_d2) + ":" + string(global.minute0) + string(global.rminute_d2) + ":" + string(global.second0) + string(global.rsecond_d2) + "." + string(global.rdsecond_d2) + string(global.rcsecond_d2));
                draw_text(x + 1800, y + 900 + 750, global.rscore_d2);
            }
        }
        
        if (row == 1)
        {
            global.minute = global.l2_rminute_d2;
            global.second = global.l2_rsecond_d2;
            score_average = global.l2_rscore_average_d2;
            dmg = global.l2_rdamaged_d2;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.l2_rhour_d2) + ":" + string(global.minute0) + string(global.l2_rminute_d2) + ":" + string(global.second0) + string(global.l2_rsecond_d2) + "." + string(global.l2_rdsecond_d2) + string(global.l2_rcsecond_d2));
                draw_text(x + 1800, y + 900 + 750, global.l2_rscore_d2);
            }
        }
        
        if (row == 2)
        {
            global.minute = global.l3_rminute_d2;
            global.second = global.l3_rsecond_d2;
            score_average = global.l3_rscore_average_d2;
            dmg = global.l3_rdamaged_d2;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.l3_rhour_d2) + ":" + string(global.minute0) + string(global.l3_rminute_d2) + ":" + string(global.second0) + string(global.l3_rsecond_d2) + "." + string(global.l3_rdsecond_d2) + string(global.l3_rcsecond_d2));
                draw_text(x + 1800, y + 900 + 750, global.l3_rscore_d2);
            }
        }
    }
    
    if (global.demo == 3)
    {
        if (row == 0)
        {
            global.minute = global.rminute_d3;
            global.second = global.rsecond_d3;
            score_average = global.rscore_average_d3;
            dmg = global.rdamaged_d3;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.rhour_d3) + ":" + string(global.minute0) + string(global.rminute_d3) + ":" + string(global.second0) + string(global.rsecond_d3) + "." + string(global.rdsecond_d3) + string(global.rcsecond_d3));
                draw_text(x + 1800, y + 900 + 750, global.rscore_d3);
            }
        }
        
        if (row == 1)
        {
            global.minute = global.l2_rminute_d3;
            global.second = global.l2_rsecond_d3;
            score_average = global.l2_rscore_average_d3;
            dmg = global.l2_rdamaged_d3;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.l2_rhour_d3) + ":" + string(global.minute0) + string(global.l2_rminute_d3) + ":" + string(global.second0) + string(global.l2_rsecond_d3) + "." + string(global.l2_rdsecond_d3) + string(global.l2_rcsecond_d3));
                draw_text(x + 1800, y + 900 + 750, global.l2_rscore_d3);
            }
        }
        
        if (row == 2)
        {
            global.minute = global.l3_rminute_d3;
            global.second = global.l3_rsecond_d3;
            score_average = global.l3_rscore_average_d3;
            dmg = global.l3_rdamaged_d3;
            
            if (display_time == 0)
            {
                draw_text(x + 1800, y + 900 + 600, string(global.l3_rhour_d3) + ":" + string(global.minute0) + string(global.l3_rminute_d3) + ":" + string(global.second0) + string(global.l3_rsecond_d3) + "." + string(global.l3_rdsecond_d3) + string(global.l3_rcsecond_d3));
                draw_text(x + 1800, y + 900 + 750, global.l3_rscore_d3);
            }
        }
    }
    
    if (display_time == 0)
        draw_sprite(rank, 0, 3000, y + 900 + 675);
}

if (tab == 3)
    draw_text(x + 475, (y + 900) - 0, "RIGHT");

if (tab == 4)
    draw_text(x + 475, y + 900 + 150, "INTERACT");

draw_set_halign(fa_center);
draw_set_font(font);

if (tab == 5)
{
    if (global.numbers)
        draw_text(x + 1675, y + 900 + 300, "NUMBERS ON");
    else
        draw_text(x + 1675, y + 900 + 300, "NUMBERS OFF");
}

if (tab == 6)
    draw_text(x + 1675, y + 900 + 450, "GO BACK");

if (row == 4)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 5)
    draw_text(x + 1675, y + 900 + 600, "GO BACK");

draw_set_halign(fa_left);
draw_set_font(font2);

if (tab == 3)
    draw_text(x + 475, y + 900 + 150, "JUMP");

if (tab == 4)
    draw_text(x + 475, y + 900 + 300, "SPRINT");

if (row == 5)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 475, y + 900 + 300, "SPIN");

if (tab == 4)
    draw_text(x + 1875, (y + 900) - 300, "SUB-WEAPON");

if (row == 6)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 475, y + 900 + 450, "DASH");

if (tab == 4)
    draw_text(x + 1875, (y + 900) - 150, "GUN");

if (row == 7)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 1875, (y + 900) - 450, "INTERACT");

if (tab == 4)
    draw_text(x + 1875, (y + 900) - 0, "HOOK");

if (row == 8)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 1875, (y + 900) - 300, "SPRINT");

if (tab == 4)
    draw_text(x + 1875, y + 900 + 150, "CANNON");

if (row == 9)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 1875, (y + 900) - 150, "GUN");

if (tab == 4)
    draw_text(x + 1875, y + 900 + 300, "RESET");

if (row == 10)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 1875, (y + 900) - 0, "HOOK");

if (row == 11)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 1875, y + 900 + 150, "CANNON");

if (row == 12)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 1875, y + 900 + 300, "RESET");

if (row == 13)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 3)
    draw_text(x + 1175, y + 900 + 600, "GO BACK");

if (row == 10)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 4)
    draw_text(x + 1175, y + 900 + 450, "GO BACK");

draw_set_halign(fa_center);
draw_set_color(c_white);

if (tab == 10)
    draw_text(x + 1600, (y + 900) - 150, "Press the new key to bind this to...");

if (tab == 11)
    draw_text(x + 1600, (y + 900) - 75, "Press the new button to bind this to...");

if (tab == 10 || tab == 11)
{
    if (key_time <= 300 && key_time > 240)
        draw_text(x + 1600, y + 900 + 75, "5");
    
    if (key_time <= 240 && key_time > 180)
        draw_text(x + 1600, y + 900 + 75, "4");
    
    if (key_time <= 180 && key_time > 120)
        draw_text(x + 1600, y + 900 + 75, "3");
    
    if (key_time <= 120 && key_time > 60)
        draw_text(x + 1600, y + 900 + 75, "2");
    
    if (key_time <= 60 && key_time >= 0)
        draw_text(x + 1600, y + 900 + 75, "1");
}

if (tab == 15)
{
    x_mov += ((x_pos - x_mov) * 0.2);
    draw_sprite(spr_mick_ui_badge_none, 0, 1600 - x_mov, y_pos);
    draw_sprite(spr_mick_ui_badge_triplejump, 0, 3200 - x_mov, y_pos);
    draw_sprite(spr_mick_ui_badge_counterattack, 0, 4800 - x_mov, y_pos);
    draw_sprite(spr_mick_ui_badge_blademerang, 0, 6400 - x_mov, y_pos);
    
    if (row == 0)
        x_pos = 0;
    
    if (row == 1)
        x_pos = 1600;
    
    if (row == 2)
        x_pos = 3200;
    
    if (row == 3)
        x_pos = 4800;
    
    if (row == 0)
    {
        draw_text(x + 1675, y + 900 + 600, "NO BADGE:");
        draw_text(x + 1675, y + 900 + 750, "Gain no additional abilities.");
    }
    
    if (row == 1)
    {
        draw_text(x + 1675, y + 900 + 600, "TRIPLE JUMP:");
        draw_text(x + 1675, y + 900 + 750, "Gain an additional double jump attack.");
    }
    
    if (row == 2)
    {
        draw_text(x + 1675, y + 900 + 600, "COUNTERATTACK:");
        draw_text(x + 1675, y + 900 + 750, "Perfectly-timed machete strikes negate damage and deflect projectiles.");
    }
    
    if (row == 3)
    {
        draw_text(x + 1675, y + 900 + 600, "BLADEMERANG:");
        draw_text(x + 1675, y + 900 + 750, "While spinning, spin again to throw the machete like a boomerang.");
    }
}

if (tab == 13)
{
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    draw_text(x + 1100, y + 900 + 600, "BEST TIME:");
    draw_text(x + 1100, y + 900 + 750, "BEST SCORE:");
    draw_text(x + 2400, y + 900 + 675, "BEST RANK:");
}

draw_set_halign(fa_center);
draw_set_font(font3);

if (tab == 3)
{
    if (global.up == 81)
        draw_text(x + 1425, (y + 900) - 450, "Q");
    
    if (global.up == 87)
        draw_text(x + 1425, (y + 900) - 450, "W");
    
    if (global.up == 69)
        draw_text(x + 1425, (y + 900) - 450, "E");
    
    if (global.up == 82)
        draw_text(x + 1425, (y + 900) - 450, "R");
    
    if (global.up == 84)
        draw_text(x + 1425, (y + 900) - 450, "T");
    
    if (global.up == 89)
        draw_text(x + 1425, (y + 900) - 450, "Y");
    
    if (global.up == 85)
        draw_text(x + 1425, (y + 900) - 450, "U");
    
    if (global.up == 73)
        draw_text(x + 1425, (y + 900) - 450, "I");
    
    if (global.up == 79)
        draw_text(x + 1425, (y + 900) - 450, "O");
    
    if (global.up == 80)
        draw_text(x + 1425, (y + 900) - 450, "P");
    
    if (global.up == 65)
        draw_text(x + 1425, (y + 900) - 450, "A");
    
    if (global.up == 83)
        draw_text(x + 1425, (y + 900) - 450, "S");
    
    if (global.up == 68)
        draw_text(x + 1425, (y + 900) - 450, "D");
    
    if (global.up == 70)
        draw_text(x + 1425, (y + 900) - 450, "F");
    
    if (global.up == 71)
        draw_text(x + 1425, (y + 900) - 450, "G");
    
    if (global.up == 72)
        draw_text(x + 1425, (y + 900) - 450, "H");
    
    if (global.up == 74)
        draw_text(x + 1425, (y + 900) - 450, "J");
    
    if (global.up == 75)
        draw_text(x + 1425, (y + 900) - 450, "K");
    
    if (global.up == 76)
        draw_text(x + 1425, (y + 900) - 450, "L");
    
    if (global.up == 90)
        draw_text(x + 1425, (y + 900) - 450, "Z");
    
    if (global.up == 88)
        draw_text(x + 1425, (y + 900) - 450, "X");
    
    if (global.up == 67)
        draw_text(x + 1425, (y + 900) - 450, "C");
    
    if (global.up == 86)
        draw_text(x + 1425, (y + 900) - 450, "V");
    
    if (global.up == 66)
        draw_text(x + 1425, (y + 900) - 450, "B");
    
    if (global.up == 78)
        draw_text(x + 1425, (y + 900) - 450, "N");
    
    if (global.up == 77)
        draw_text(x + 1425, (y + 900) - 450, "M");
    
    if (global.up == 48)
        draw_text(x + 1425, (y + 900) - 450, "0");
    
    if (global.up == 49)
        draw_text(x + 1425, (y + 900) - 450, "1");
    
    if (global.up == 50)
        draw_text(x + 1425, (y + 900) - 450, "2");
    
    if (global.up == 51)
        draw_text(x + 1425, (y + 900) - 450, "3");
    
    if (global.up == 52)
        draw_text(x + 1425, (y + 900) - 450, "4");
    
    if (global.up == 53)
        draw_text(x + 1425, (y + 900) - 450, "5");
    
    if (global.up == 54)
        draw_text(x + 1425, (y + 900) - 450, "6");
    
    if (global.up == 55)
        draw_text(x + 1425, (y + 900) - 450, "7");
    
    if (global.up == 56)
        draw_text(x + 1425, (y + 900) - 450, "8");
    
    if (global.up == 57)
        draw_text(x + 1425, (y + 900) - 450, "9");
    
    if (global.up == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 1425, (y + 900) - 450);
    
    if (global.up == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 1425, (y + 900) - 450);
    
    if (global.up == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 1425, (y + 900) - 450);
    
    if (global.up == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 1425, (y + 900) - 450);
    
    if (global.up == 13)
        draw_text(x + 1425, (y + 900) - 450, "ENTER");
    
    if (global.up == 32)
        draw_text(x + 1425, (y + 900) - 450, "SPACE");
    
    if (global.up == 16)
        draw_text(x + 1425, (y + 900) - 450, "SHIFT");
    
    if (global.up == 160)
        draw_text(x + 1425, (y + 900) - 450, "L SHIFT");
    
    if (global.up == 161)
        draw_text(x + 1425, (y + 900) - 450, "R SHIFT");
    
    if (global.up == 17)
        draw_text(x + 1425, (y + 900) - 450, "CTRL");
    
    if (global.up == 162)
        draw_text(x + 1425, (y + 900) - 450, "L CTRL");
    
    if (global.up == 163)
        draw_text(x + 1425, (y + 900) - 450, "R CTRL");
    
    if (global.up == 18)
        draw_text(x + 1425, (y + 900) - 450, "ALT");
    
    if (global.up == 164)
        draw_text(x + 1425, (y + 900) - 450, "L ALT");
    
    if (global.up == 165)
        draw_text(x + 1425, (y + 900) - 450, "R ALT");
    
    if (global.up == 8)
        draw_text(x + 1425, (y + 900) - 450, "BACKSPACE");
    
    if (global.up == 9)
        draw_text(x + 1425, (y + 900) - 450, "TAB");
    
    if (global.up == 36)
        draw_text(x + 1425, (y + 900) - 450, "HOME");
    
    if (global.up == 35)
        draw_text(x + 1425, (y + 900) - 450, "END");
    
    if (global.up == 46)
        draw_text(x + 1425, (y + 900) - 450, "DELETE");
    
    if (global.up == 45)
        draw_text(x + 1425, (y + 900) - 450, "INSERT");
    
    if (global.up == 33)
        draw_text(x + 1425, (y + 900) - 450, "PAGE UP");
    
    if (global.up == 34)
        draw_text(x + 1425, (y + 900) - 450, "PAGE DOWN");
    
    if (global.up == 19)
        draw_text(x + 1425, (y + 900) - 450, "PAUSE");
    
    if (global.up == 44)
        draw_text(x + 1425, (y + 900) - 450, "PRINT SCREEN");
    
    if (global.up == 112)
        draw_text(x + 1425, (y + 900) - 450, "F1");
    
    if (global.up == 113)
        draw_text(x + 1425, (y + 900) - 450, "F2");
    
    if (global.up == 114)
        draw_text(x + 1425, (y + 900) - 450, "F3");
    
    if (global.up == 115)
        draw_text(x + 1425, (y + 900) - 450, "F4");
    
    if (global.up == 116)
        draw_text(x + 1425, (y + 900) - 450, "F5");
    
    if (global.up == 117)
        draw_text(x + 1425, (y + 900) - 450, "F6");
    
    if (global.up == 118)
        draw_text(x + 1425, (y + 900) - 450, "F7");
    
    if (global.up == 119)
        draw_text(x + 1425, (y + 900) - 450, "F8");
    
    if (global.up == 120)
        draw_text(x + 1425, (y + 900) - 450, "F9");
    
    if (global.up == 121)
        draw_text(x + 1425, (y + 900) - 450, "F10");
    
    if (global.up == 122)
        draw_text(x + 1425, (y + 900) - 450, "F11");
    
    if (global.up == 123)
        draw_text(x + 1425, (y + 900) - 450, "F12");
    
    if (global.up == 96)
        draw_text(x + 1425, (y + 900) - 450, "NP 0");
    
    if (global.up == 97)
        draw_text(x + 1425, (y + 900) - 450, "NP 1");
    
    if (global.up == 98)
        draw_text(x + 1425, (y + 900) - 450, "NP 2");
    
    if (global.up == 99)
        draw_text(x + 1425, (y + 900) - 450, "NP 3");
    
    if (global.up == 100)
        draw_text(x + 1425, (y + 900) - 450, "NP 4");
    
    if (global.up == 101)
        draw_text(x + 1425, (y + 900) - 450, "NP 5");
    
    if (global.up == 102)
        draw_text(x + 1425, (y + 900) - 450, "NP 6");
    
    if (global.up == 103)
        draw_text(x + 1425, (y + 900) - 450, "NP 7");
    
    if (global.up == 104)
        draw_text(x + 1425, (y + 900) - 450, "NP 8");
    
    if (global.up == 105)
        draw_text(x + 1425, (y + 900) - 450, "NP 9");
    
    if (global.up == 106)
        draw_text(x + 1425, (y + 900) - 450, "MULTIPLY");
    
    if (global.up == 111)
        draw_text(x + 1425, (y + 900) - 450, "DIVIDE");
    
    if (global.up == 107)
        draw_text(x + 1425, (y + 900) - 450, "ADD");
    
    if (global.up == 109)
        draw_text(x + 1425, (y + 900) - 450, "SUBTRACT");
    
    if (global.up == 110)
        draw_text(x + 1425, (y + 900) - 450, "DECIMAL");
    
    if (global.up == 192)
        draw_text(x + 1425, (y + 900) - 450, "TILDE");
    
    if (global.up == 189)
        draw_text(x + 1425, (y + 900) - 450, "MINUS");
    
    if (global.up == 187)
        draw_text(x + 1425, (y + 900) - 450, "EQUALS");
    
    if (global.up == 219)
        draw_text(x + 1425, (y + 900) - 450, "O BRACKET");
    
    if (global.up == 221)
        draw_text(x + 1425, (y + 900) - 450, "C BRACKET");
    
    if (global.up == 220)
        draw_text(x + 1425, (y + 900) - 450, "BACKSLASH");
    
    if (global.up == 20)
        draw_text(x + 1425, (y + 900) - 450, "CAPS LOCK");
    
    if (global.up == 186)
        draw_text(x + 1425, (y + 900) - 450, "SEMICOLON");
    
    if (global.up == 222)
        draw_text(x + 1425, (y + 900) - 450, "APOSTROPHE");
    
    if (global.up == 188)
        draw_text(x + 1425, (y + 900) - 450, "COMMA");
    
    if (global.up == 190)
        draw_text(x + 1425, (y + 900) - 450, "PERIOD");
    
    if (global.up == 191)
        draw_text(x + 1425, (y + 900) - 450, "SLASH");
    
    if (global.up == 1)
        draw_text(x + 1425, (y + 900) - 450, "L CLICK");
    
    if (global.up == 2)
        draw_text(x + 1425, (y + 900) - 450, "R CLICK");
    
    if (global.up == 3)
        draw_text(x + 1425, (y + 900) - 450, "M CLICK");
    
    if (global.up == 4)
        draw_text(x + 1425, (y + 900) - 450, "MOUSE SIDE 1");
    
    if (global.up == 5)
        draw_text(x + 1425, (y + 900) - 450, "MOUSE SIDE 2");
    
    if (global.down == 81)
        draw_text(x + 1425, (y + 900) - 300, "Q");
    
    if (global.down == 87)
        draw_text(x + 1425, (y + 900) - 300, "W");
    
    if (global.down == 69)
        draw_text(x + 1425, (y + 900) - 300, "E");
    
    if (global.down == 82)
        draw_text(x + 1425, (y + 900) - 300, "R");
    
    if (global.down == 84)
        draw_text(x + 1425, (y + 900) - 300, "T");
    
    if (global.down == 89)
        draw_text(x + 1425, (y + 900) - 300, "Y");
    
    if (global.down == 85)
        draw_text(x + 1425, (y + 900) - 300, "U");
    
    if (global.down == 73)
        draw_text(x + 1425, (y + 900) - 300, "I");
    
    if (global.down == 79)
        draw_text(x + 1425, (y + 900) - 300, "O");
    
    if (global.down == 80)
        draw_text(x + 1425, (y + 900) - 300, "P");
    
    if (global.down == 65)
        draw_text(x + 1425, (y + 900) - 300, "A");
    
    if (global.down == 83)
        draw_text(x + 1425, (y + 900) - 300, "S");
    
    if (global.down == 68)
        draw_text(x + 1425, (y + 900) - 300, "D");
    
    if (global.down == 70)
        draw_text(x + 1425, (y + 900) - 300, "F");
    
    if (global.down == 71)
        draw_text(x + 1425, (y + 900) - 300, "G");
    
    if (global.down == 72)
        draw_text(x + 1425, (y + 900) - 300, "H");
    
    if (global.down == 74)
        draw_text(x + 1425, (y + 900) - 300, "J");
    
    if (global.down == 75)
        draw_text(x + 1425, (y + 900) - 300, "K");
    
    if (global.down == 76)
        draw_text(x + 1425, (y + 900) - 300, "L");
    
    if (global.down == 90)
        draw_text(x + 1425, (y + 900) - 300, "Z");
    
    if (global.down == 88)
        draw_text(x + 1425, (y + 900) - 300, "X");
    
    if (global.down == 67)
        draw_text(x + 1425, (y + 900) - 300, "C");
    
    if (global.down == 86)
        draw_text(x + 1425, (y + 900) - 300, "V");
    
    if (global.down == 66)
        draw_text(x + 1425, (y + 900) - 300, "B");
    
    if (global.down == 78)
        draw_text(x + 1425, (y + 900) - 300, "N");
    
    if (global.down == 77)
        draw_text(x + 1425, (y + 900) - 300, "M");
    
    if (global.down == 48)
        draw_text(x + 1425, (y + 900) - 300, "0");
    
    if (global.down == 49)
        draw_text(x + 1425, (y + 900) - 300, "1");
    
    if (global.down == 50)
        draw_text(x + 1425, (y + 900) - 300, "2");
    
    if (global.down == 51)
        draw_text(x + 1425, (y + 900) - 300, "3");
    
    if (global.down == 52)
        draw_text(x + 1425, (y + 900) - 300, "4");
    
    if (global.down == 53)
        draw_text(x + 1425, (y + 900) - 300, "5");
    
    if (global.down == 54)
        draw_text(x + 1425, (y + 900) - 300, "6");
    
    if (global.down == 55)
        draw_text(x + 1425, (y + 900) - 300, "7");
    
    if (global.down == 56)
        draw_text(x + 1425, (y + 900) - 300, "8");
    
    if (global.down == 57)
        draw_text(x + 1425, (y + 900) - 300, "9");
    
    if (global.down == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 1425, (y + 900) - 300);
    
    if (global.down == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 1425, (y + 900) - 300);
    
    if (global.down == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 1425, (y + 900) - 300);
    
    if (global.down == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 1425, (y + 900) - 300);
    
    if (global.down == 13)
        draw_text(x + 1425, (y + 900) - 300, "ENTER");
    
    if (global.down == 32)
        draw_text(x + 1425, (y + 900) - 300, "SPACE");
    
    if (global.down == 16)
        draw_text(x + 1425, (y + 900) - 300, "SHIFT");
    
    if (global.down == 160)
        draw_text(x + 1425, (y + 900) - 300, "L SHIFT");
    
    if (global.down == 161)
        draw_text(x + 1425, (y + 900) - 300, "R SHIFT");
    
    if (global.down == 17)
        draw_text(x + 1425, (y + 900) - 300, "CTRL");
    
    if (global.down == 162)
        draw_text(x + 1425, (y + 900) - 300, "L CTRL");
    
    if (global.down == 163)
        draw_text(x + 1425, (y + 900) - 300, "R CTRL");
    
    if (global.down == 18)
        draw_text(x + 1425, (y + 900) - 300, "ALT");
    
    if (global.down == 164)
        draw_text(x + 1425, (y + 900) - 300, "L ALT");
    
    if (global.down == 165)
        draw_text(x + 1425, (y + 900) - 300, "R ALT");
    
    if (global.down == 8)
        draw_text(x + 1425, (y + 900) - 300, "BACKSPACE");
    
    if (global.down == 9)
        draw_text(x + 1425, (y + 900) - 300, "TAB");
    
    if (global.down == 36)
        draw_text(x + 1425, (y + 900) - 300, "HOME");
    
    if (global.down == 35)
        draw_text(x + 1425, (y + 900) - 300, "END");
    
    if (global.down == 46)
        draw_text(x + 1425, (y + 900) - 300, "DELETE");
    
    if (global.down == 45)
        draw_text(x + 1425, (y + 900) - 300, "INSERT");
    
    if (global.down == 33)
        draw_text(x + 1425, (y + 900) - 300, "PAGE UP");
    
    if (global.down == 34)
        draw_text(x + 1425, (y + 900) - 300, "PAGE DOWN");
    
    if (global.down == 19)
        draw_text(x + 1425, (y + 900) - 300, "PAUSE");
    
    if (global.down == 44)
        draw_text(x + 1425, (y + 900) - 300, "PRINT SCREEN");
    
    if (global.down == 112)
        draw_text(x + 1425, (y + 900) - 300, "F1");
    
    if (global.down == 113)
        draw_text(x + 1425, (y + 900) - 300, "F2");
    
    if (global.down == 114)
        draw_text(x + 1425, (y + 900) - 300, "F3");
    
    if (global.down == 115)
        draw_text(x + 1425, (y + 900) - 300, "F4");
    
    if (global.down == 116)
        draw_text(x + 1425, (y + 900) - 300, "F5");
    
    if (global.down == 117)
        draw_text(x + 1425, (y + 900) - 300, "F6");
    
    if (global.down == 118)
        draw_text(x + 1425, (y + 900) - 300, "F7");
    
    if (global.down == 119)
        draw_text(x + 1425, (y + 900) - 300, "F8");
    
    if (global.down == 120)
        draw_text(x + 1425, (y + 900) - 300, "F9");
    
    if (global.down == 121)
        draw_text(x + 1425, (y + 900) - 300, "F10");
    
    if (global.down == 122)
        draw_text(x + 1425, (y + 900) - 300, "F11");
    
    if (global.down == 123)
        draw_text(x + 1425, (y + 900) - 300, "F12");
    
    if (global.down == 96)
        draw_text(x + 1425, (y + 900) - 300, "NP 0");
    
    if (global.down == 97)
        draw_text(x + 1425, (y + 900) - 300, "NP 1");
    
    if (global.down == 98)
        draw_text(x + 1425, (y + 900) - 300, "NP 2");
    
    if (global.down == 99)
        draw_text(x + 1425, (y + 900) - 300, "NP 3");
    
    if (global.down == 100)
        draw_text(x + 1425, (y + 900) - 300, "NP 4");
    
    if (global.down == 101)
        draw_text(x + 1425, (y + 900) - 300, "NP 5");
    
    if (global.down == 102)
        draw_text(x + 1425, (y + 900) - 300, "NP 6");
    
    if (global.down == 103)
        draw_text(x + 1425, (y + 900) - 300, "NP 7");
    
    if (global.down == 104)
        draw_text(x + 1425, (y + 900) - 300, "NP 8");
    
    if (global.down == 105)
        draw_text(x + 1425, (y + 900) - 300, "NP 9");
    
    if (global.down == 106)
        draw_text(x + 1425, (y + 900) - 300, "MULTIPLY");
    
    if (global.down == 111)
        draw_text(x + 1425, (y + 900) - 300, "DIVIDE");
    
    if (global.down == 107)
        draw_text(x + 1425, (y + 900) - 300, "ADD");
    
    if (global.down == 109)
        draw_text(x + 1425, (y + 900) - 300, "SUBTRACT");
    
    if (global.down == 110)
        draw_text(x + 1425, (y + 900) - 300, "DECIMAL");
    
    if (global.down == 192)
        draw_text(x + 1425, (y + 900) - 300, "TILDE");
    
    if (global.down == 189)
        draw_text(x + 1425, (y + 900) - 300, "MINUS");
    
    if (global.down == 187)
        draw_text(x + 1425, (y + 900) - 300, "EQUALS");
    
    if (global.down == 219)
        draw_text(x + 1425, (y + 900) - 300, "O BRACKET");
    
    if (global.down == 221)
        draw_text(x + 1425, (y + 900) - 300, "C BRACKET");
    
    if (global.down == 220)
        draw_text(x + 1425, (y + 900) - 300, "BACKSLASH");
    
    if (global.down == 20)
        draw_text(x + 1425, (y + 900) - 300, "CAPS LOCK");
    
    if (global.down == 186)
        draw_text(x + 1425, (y + 900) - 300, "SEMICOLON");
    
    if (global.down == 222)
        draw_text(x + 1425, (y + 900) - 300, "APOSTROPHE");
    
    if (global.down == 188)
        draw_text(x + 1425, (y + 900) - 300, "COMMA");
    
    if (global.down == 190)
        draw_text(x + 1425, (y + 900) - 300, "PERIOD");
    
    if (global.down == 191)
        draw_text(x + 1425, (y + 900) - 300, "SLASH");
    
    if (global.down == 1)
        draw_text(x + 1425, (y + 900) - 300, "L CLICK");
    
    if (global.down == 2)
        draw_text(x + 1425, (y + 900) - 300, "R CLICK");
    
    if (global.down == 3)
        draw_text(x + 1425, (y + 900) - 300, "M CLICK");
    
    if (global.down == 4)
        draw_text(x + 1425, (y + 900) - 300, "MOUSE SIDE 1");
    
    if (global.down == 5)
        draw_text(x + 1425, (y + 900) - 300, "MOUSE SIDE 2");
    
    if (global.left == 81)
        draw_text(x + 1425, (y + 900) - 150, "Q");
    
    if (global.left == 87)
        draw_text(x + 1425, (y + 900) - 150, "W");
    
    if (global.left == 69)
        draw_text(x + 1425, (y + 900) - 150, "E");
    
    if (global.left == 82)
        draw_text(x + 1425, (y + 900) - 150, "R");
    
    if (global.left == 84)
        draw_text(x + 1425, (y + 900) - 150, "T");
    
    if (global.left == 89)
        draw_text(x + 1425, (y + 900) - 150, "Y");
    
    if (global.left == 85)
        draw_text(x + 1425, (y + 900) - 150, "U");
    
    if (global.left == 73)
        draw_text(x + 1425, (y + 900) - 150, "I");
    
    if (global.left == 79)
        draw_text(x + 1425, (y + 900) - 150, "O");
    
    if (global.left == 80)
        draw_text(x + 1425, (y + 900) - 150, "P");
    
    if (global.left == 65)
        draw_text(x + 1425, (y + 900) - 150, "A");
    
    if (global.left == 83)
        draw_text(x + 1425, (y + 900) - 150, "S");
    
    if (global.left == 68)
        draw_text(x + 1425, (y + 900) - 150, "D");
    
    if (global.left == 70)
        draw_text(x + 1425, (y + 900) - 150, "F");
    
    if (global.left == 71)
        draw_text(x + 1425, (y + 900) - 150, "G");
    
    if (global.left == 72)
        draw_text(x + 1425, (y + 900) - 150, "H");
    
    if (global.left == 74)
        draw_text(x + 1425, (y + 900) - 150, "J");
    
    if (global.left == 75)
        draw_text(x + 1425, (y + 900) - 150, "K");
    
    if (global.left == 76)
        draw_text(x + 1425, (y + 900) - 150, "L");
    
    if (global.left == 90)
        draw_text(x + 1425, (y + 900) - 150, "Z");
    
    if (global.left == 88)
        draw_text(x + 1425, (y + 900) - 150, "X");
    
    if (global.left == 67)
        draw_text(x + 1425, (y + 900) - 150, "C");
    
    if (global.left == 86)
        draw_text(x + 1425, (y + 900) - 150, "V");
    
    if (global.left == 66)
        draw_text(x + 1425, (y + 900) - 150, "B");
    
    if (global.left == 78)
        draw_text(x + 1425, (y + 900) - 150, "N");
    
    if (global.left == 77)
        draw_text(x + 1425, (y + 900) - 150, "M");
    
    if (global.left == 48)
        draw_text(x + 1425, (y + 900) - 150, "0");
    
    if (global.left == 49)
        draw_text(x + 1425, (y + 900) - 150, "1");
    
    if (global.left == 50)
        draw_text(x + 1425, (y + 900) - 150, "2");
    
    if (global.left == 51)
        draw_text(x + 1425, (y + 900) - 150, "3");
    
    if (global.left == 52)
        draw_text(x + 1425, (y + 900) - 150, "4");
    
    if (global.left == 53)
        draw_text(x + 1425, (y + 900) - 150, "5");
    
    if (global.left == 54)
        draw_text(x + 1425, (y + 900) - 150, "6");
    
    if (global.left == 55)
        draw_text(x + 1425, (y + 900) - 150, "7");
    
    if (global.left == 56)
        draw_text(x + 1425, (y + 900) - 150, "8");
    
    if (global.left == 57)
        draw_text(x + 1425, (y + 900) - 150, "9");
    
    if (global.left == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 1425, (y + 900) - 150);
    
    if (global.left == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 1425, (y + 900) - 150);
    
    if (global.left == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 1425, (y + 900) - 150);
    
    if (global.left == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 1425, (y + 900) - 150);
    
    if (global.left == 13)
        draw_text(x + 1425, (y + 900) - 150, "ENTER");
    
    if (global.left == 32)
        draw_text(x + 1425, (y + 900) - 150, "SPACE");
    
    if (global.left == 16)
        draw_text(x + 1425, (y + 900) - 150, "SHIFT");
    
    if (global.left == 160)
        draw_text(x + 1425, (y + 900) - 150, "L SHIFT");
    
    if (global.left == 161)
        draw_text(x + 1425, (y + 900) - 150, "R SHIFT");
    
    if (global.left == 17)
        draw_text(x + 1425, (y + 900) - 150, "CTRL");
    
    if (global.left == 162)
        draw_text(x + 1425, (y + 900) - 150, "L CTRL");
    
    if (global.left == 163)
        draw_text(x + 1425, (y + 900) - 150, "R CTRL");
    
    if (global.left == 18)
        draw_text(x + 1425, (y + 900) - 150, "ALT");
    
    if (global.left == 164)
        draw_text(x + 1425, (y + 900) - 150, "L ALT");
    
    if (global.left == 165)
        draw_text(x + 1425, (y + 900) - 150, "R ALT");
    
    if (global.left == 8)
        draw_text(x + 1425, (y + 900) - 150, "BACKSPACE");
    
    if (global.left == 9)
        draw_text(x + 1425, (y + 900) - 150, "TAB");
    
    if (global.left == 36)
        draw_text(x + 1425, (y + 900) - 150, "HOME");
    
    if (global.left == 35)
        draw_text(x + 1425, (y + 900) - 150, "END");
    
    if (global.left == 46)
        draw_text(x + 1425, (y + 900) - 150, "DELETE");
    
    if (global.left == 45)
        draw_text(x + 1425, (y + 900) - 150, "INSERT");
    
    if (global.left == 33)
        draw_text(x + 1425, (y + 900) - 150, "PAGE UP");
    
    if (global.left == 34)
        draw_text(x + 1425, (y + 900) - 150, "PAGE DOWN");
    
    if (global.left == 19)
        draw_text(x + 1425, (y + 900) - 150, "PAUSE");
    
    if (global.left == 44)
        draw_text(x + 1425, (y + 900) - 150, "PRINT SCREEN");
    
    if (global.left == 112)
        draw_text(x + 1425, (y + 900) - 150, "F1");
    
    if (global.left == 113)
        draw_text(x + 1425, (y + 900) - 150, "F2");
    
    if (global.left == 114)
        draw_text(x + 1425, (y + 900) - 150, "F3");
    
    if (global.left == 115)
        draw_text(x + 1425, (y + 900) - 150, "F4");
    
    if (global.left == 116)
        draw_text(x + 1425, (y + 900) - 150, "F5");
    
    if (global.left == 117)
        draw_text(x + 1425, (y + 900) - 150, "F6");
    
    if (global.left == 118)
        draw_text(x + 1425, (y + 900) - 150, "F7");
    
    if (global.left == 119)
        draw_text(x + 1425, (y + 900) - 150, "F8");
    
    if (global.left == 120)
        draw_text(x + 1425, (y + 900) - 150, "F9");
    
    if (global.left == 121)
        draw_text(x + 1425, (y + 900) - 150, "F10");
    
    if (global.left == 122)
        draw_text(x + 1425, (y + 900) - 150, "F11");
    
    if (global.left == 123)
        draw_text(x + 1425, (y + 900) - 150, "F12");
    
    if (global.left == 96)
        draw_text(x + 1425, (y + 900) - 150, "NP 0");
    
    if (global.left == 97)
        draw_text(x + 1425, (y + 900) - 150, "NP 1");
    
    if (global.left == 98)
        draw_text(x + 1425, (y + 900) - 150, "NP 2");
    
    if (global.left == 99)
        draw_text(x + 1425, (y + 900) - 150, "NP 3");
    
    if (global.left == 100)
        draw_text(x + 1425, (y + 900) - 150, "NP 4");
    
    if (global.left == 101)
        draw_text(x + 1425, (y + 900) - 150, "NP 5");
    
    if (global.left == 102)
        draw_text(x + 1425, (y + 900) - 150, "NP 6");
    
    if (global.left == 103)
        draw_text(x + 1425, (y + 900) - 150, "NP 7");
    
    if (global.left == 104)
        draw_text(x + 1425, (y + 900) - 150, "NP 8");
    
    if (global.left == 105)
        draw_text(x + 1425, (y + 900) - 150, "NP 9");
    
    if (global.left == 106)
        draw_text(x + 1425, (y + 900) - 150, "MULTIPLY");
    
    if (global.left == 111)
        draw_text(x + 1425, (y + 900) - 150, "DIVIDE");
    
    if (global.left == 107)
        draw_text(x + 1425, (y + 900) - 150, "ADD");
    
    if (global.left == 109)
        draw_text(x + 1425, (y + 900) - 150, "SUBTRACT");
    
    if (global.left == 110)
        draw_text(x + 1425, (y + 900) - 150, "DECIMAL");
    
    if (global.left == 192)
        draw_text(x + 1425, (y + 900) - 150, "TILDE");
    
    if (global.left == 189)
        draw_text(x + 1425, (y + 900) - 150, "MINUS");
    
    if (global.left == 187)
        draw_text(x + 1425, (y + 900) - 150, "EQUALS");
    
    if (global.left == 219)
        draw_text(x + 1425, (y + 900) - 150, "O BRACKET");
    
    if (global.left == 221)
        draw_text(x + 1425, (y + 900) - 150, "C BRACKET");
    
    if (global.left == 220)
        draw_text(x + 1425, (y + 900) - 150, "BACKSLASH");
    
    if (global.left == 20)
        draw_text(x + 1425, (y + 900) - 150, "CAPS LOCK");
    
    if (global.left == 186)
        draw_text(x + 1425, (y + 900) - 150, "SEMICOLON");
    
    if (global.left == 222)
        draw_text(x + 1425, (y + 900) - 150, "APOSTROPHE");
    
    if (global.left == 188)
        draw_text(x + 1425, (y + 900) - 150, "COMMA");
    
    if (global.left == 190)
        draw_text(x + 1425, (y + 900) - 150, "PERIOD");
    
    if (global.left == 191)
        draw_text(x + 1425, (y + 900) - 150, "SLASH");
    
    if (global.left == 1)
        draw_text(x + 1425, (y + 900) - 150, "L CLICK");
    
    if (global.left == 2)
        draw_text(x + 1425, (y + 900) - 150, "R CLICK");
    
    if (global.left == 3)
        draw_text(x + 1425, (y + 900) - 150, "M CLICK");
    
    if (global.left == 4)
        draw_text(x + 1425, (y + 900) - 150, "MOUSE SIDE 1");
    
    if (global.left == 5)
        draw_text(x + 1425, (y + 900) - 150, "MOUSE SIDE 2");
    
    if (global.right == 81)
        draw_text(x + 1425, y + 900, "Q");
    
    if (global.right == 87)
        draw_text(x + 1425, y + 900, "W");
    
    if (global.right == 69)
        draw_text(x + 1425, y + 900, "E");
    
    if (global.right == 82)
        draw_text(x + 1425, y + 900, "R");
    
    if (global.right == 84)
        draw_text(x + 1425, y + 900, "T");
    
    if (global.right == 89)
        draw_text(x + 1425, y + 900, "Y");
    
    if (global.right == 85)
        draw_text(x + 1425, y + 900, "U");
    
    if (global.right == 73)
        draw_text(x + 1425, y + 900, "I");
    
    if (global.right == 79)
        draw_text(x + 1425, y + 900, "O");
    
    if (global.right == 80)
        draw_text(x + 1425, y + 900, "P");
    
    if (global.right == 65)
        draw_text(x + 1425, y + 900, "A");
    
    if (global.right == 83)
        draw_text(x + 1425, y + 900, "S");
    
    if (global.right == 68)
        draw_text(x + 1425, y + 900, "D");
    
    if (global.right == 70)
        draw_text(x + 1425, y + 900, "F");
    
    if (global.right == 71)
        draw_text(x + 1425, y + 900, "G");
    
    if (global.right == 72)
        draw_text(x + 1425, y + 900, "H");
    
    if (global.right == 74)
        draw_text(x + 1425, y + 900, "J");
    
    if (global.right == 75)
        draw_text(x + 1425, y + 900, "K");
    
    if (global.right == 76)
        draw_text(x + 1425, y + 900, "L");
    
    if (global.right == 90)
        draw_text(x + 1425, y + 900, "Z");
    
    if (global.right == 88)
        draw_text(x + 1425, y + 900, "X");
    
    if (global.right == 67)
        draw_text(x + 1425, y + 900, "C");
    
    if (global.right == 86)
        draw_text(x + 1425, y + 900, "V");
    
    if (global.right == 66)
        draw_text(x + 1425, y + 900, "B");
    
    if (global.right == 78)
        draw_text(x + 1425, y + 900, "N");
    
    if (global.right == 77)
        draw_text(x + 1425, y + 900, "M");
    
    if (global.right == 48)
        draw_text(x + 1425, y + 900, "0");
    
    if (global.right == 49)
        draw_text(x + 1425, y + 900, "1");
    
    if (global.right == 50)
        draw_text(x + 1425, y + 900, "2");
    
    if (global.right == 51)
        draw_text(x + 1425, y + 900, "3");
    
    if (global.right == 52)
        draw_text(x + 1425, y + 900, "4");
    
    if (global.right == 53)
        draw_text(x + 1425, y + 900, "5");
    
    if (global.right == 54)
        draw_text(x + 1425, y + 900, "6");
    
    if (global.right == 55)
        draw_text(x + 1425, y + 900, "7");
    
    if (global.right == 56)
        draw_text(x + 1425, y + 900, "8");
    
    if (global.right == 57)
        draw_text(x + 1425, y + 900, "9");
    
    if (global.right == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 1425, (y + 900) - 0);
    
    if (global.right == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 1425, (y + 900) - 0);
    
    if (global.right == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 1425, (y + 900) - 0);
    
    if (global.right == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 1425, (y + 900) - 0);
    
    if (global.right == 13)
        draw_text(x + 1425, y + 900, "ENTER");
    
    if (global.right == 32)
        draw_text(x + 1425, y + 900, "SPACE");
    
    if (global.right == 16)
        draw_text(x + 1425, y + 900, "SHIFT");
    
    if (global.right == 160)
        draw_text(x + 1425, y + 900, "L SHIFT");
    
    if (global.right == 161)
        draw_text(x + 1425, y + 900, "R SHIFT");
    
    if (global.right == 17)
        draw_text(x + 1425, y + 900, "CTRL");
    
    if (global.right == 162)
        draw_text(x + 1425, y + 900, "L CTRL");
    
    if (global.right == 163)
        draw_text(x + 1425, y + 900, "R CTRL");
    
    if (global.right == 18)
        draw_text(x + 1425, y + 900, "ALT");
    
    if (global.right == 164)
        draw_text(x + 1425, y + 900, "L ALT");
    
    if (global.right == 165)
        draw_text(x + 1425, y + 900, "R ALT");
    
    if (global.right == 8)
        draw_text(x + 1425, y + 900, "BACKSPACE");
    
    if (global.right == 9)
        draw_text(x + 1425, y + 900, "TAB");
    
    if (global.right == 36)
        draw_text(x + 1425, y + 900, "HOME");
    
    if (global.right == 35)
        draw_text(x + 1425, y + 900, "END");
    
    if (global.right == 46)
        draw_text(x + 1425, y + 900, "DELETE");
    
    if (global.right == 45)
        draw_text(x + 1425, y + 900, "INSERT");
    
    if (global.right == 33)
        draw_text(x + 1425, y + 900, "PAGE UP");
    
    if (global.right == 34)
        draw_text(x + 1425, y + 900, "PAGE DOWN");
    
    if (global.right == 19)
        draw_text(x + 1425, y + 900, "PAUSE");
    
    if (global.right == 44)
        draw_text(x + 1425, y + 900, "PRINT SCREEN");
    
    if (global.right == 112)
        draw_text(x + 1425, y + 900, "F1");
    
    if (global.right == 113)
        draw_text(x + 1425, y + 900, "F2");
    
    if (global.right == 114)
        draw_text(x + 1425, y + 900, "F3");
    
    if (global.right == 115)
        draw_text(x + 1425, y + 900, "F4");
    
    if (global.right == 116)
        draw_text(x + 1425, y + 900, "F5");
    
    if (global.right == 117)
        draw_text(x + 1425, y + 900, "F6");
    
    if (global.right == 118)
        draw_text(x + 1425, y + 900, "F7");
    
    if (global.right == 119)
        draw_text(x + 1425, y + 900, "F8");
    
    if (global.right == 120)
        draw_text(x + 1425, y + 900, "F9");
    
    if (global.right == 121)
        draw_text(x + 1425, y + 900, "F10");
    
    if (global.right == 122)
        draw_text(x + 1425, y + 900, "F11");
    
    if (global.right == 123)
        draw_text(x + 1425, y + 900, "F12");
    
    if (global.right == 96)
        draw_text(x + 1425, y + 900, "NP 0");
    
    if (global.right == 97)
        draw_text(x + 1425, y + 900, "NP 1");
    
    if (global.right == 98)
        draw_text(x + 1425, y + 900, "NP 2");
    
    if (global.right == 99)
        draw_text(x + 1425, y + 900, "NP 3");
    
    if (global.right == 100)
        draw_text(x + 1425, y + 900, "NP 4");
    
    if (global.right == 101)
        draw_text(x + 1425, y + 900, "NP 5");
    
    if (global.right == 102)
        draw_text(x + 1425, y + 900, "NP 6");
    
    if (global.right == 103)
        draw_text(x + 1425, y + 900, "NP 7");
    
    if (global.right == 104)
        draw_text(x + 1425, y + 900, "NP 8");
    
    if (global.right == 105)
        draw_text(x + 1425, y + 900, "NP 9");
    
    if (global.right == 106)
        draw_text(x + 1425, y + 900, "MULTIPLY");
    
    if (global.right == 111)
        draw_text(x + 1425, y + 900, "DIVIDE");
    
    if (global.right == 107)
        draw_text(x + 1425, y + 900, "ADD");
    
    if (global.right == 109)
        draw_text(x + 1425, y + 900, "SUBTRACT");
    
    if (global.right == 110)
        draw_text(x + 1425, y + 900, "DECIMAL");
    
    if (global.right == 192)
        draw_text(x + 1425, y + 900, "TILDE");
    
    if (global.right == 189)
        draw_text(x + 1425, y + 900, "MINUS");
    
    if (global.right == 187)
        draw_text(x + 1425, y + 900, "EQUALS");
    
    if (global.right == 219)
        draw_text(x + 1425, y + 900, "O BRACKET");
    
    if (global.right == 221)
        draw_text(x + 1425, y + 900, "C BRACKET");
    
    if (global.right == 220)
        draw_text(x + 1425, y + 900, "BACKSLASH");
    
    if (global.right == 20)
        draw_text(x + 1425, y + 900, "CAPS LOCK");
    
    if (global.right == 186)
        draw_text(x + 1425, y + 900, "SEMICOLON");
    
    if (global.right == 222)
        draw_text(x + 1425, y + 900, "APOSTROPHE");
    
    if (global.right == 188)
        draw_text(x + 1425, y + 900, "COMMA");
    
    if (global.right == 190)
        draw_text(x + 1425, y + 900, "PERIOD");
    
    if (global.right == 191)
        draw_text(x + 1425, y + 900, "SLASH");
    
    if (global.right == 1)
        draw_text(x + 1425, y + 900, "L CLICK");
    
    if (global.right == 2)
        draw_text(x + 1425, y + 900, "R CLICK");
    
    if (global.right == 3)
        draw_text(x + 1425, y + 900, "M CLICK");
    
    if (global.right == 4)
        draw_text(x + 1425, y + 900, "MOUSE SIDE 1");
    
    if (global.right == 5)
        draw_text(x + 1425, y + 900, "MOUSE SIDE 2");
    
    if (global.action1 == 81)
        draw_text(x + 1425, y + 900 + 150, "Q");
    
    if (global.action1 == 87)
        draw_text(x + 1425, y + 900 + 150, "W");
    
    if (global.action1 == 69)
        draw_text(x + 1425, y + 900 + 150, "E");
    
    if (global.action1 == 82)
        draw_text(x + 1425, y + 900 + 150, "R");
    
    if (global.action1 == 84)
        draw_text(x + 1425, y + 900 + 150, "T");
    
    if (global.action1 == 89)
        draw_text(x + 1425, y + 900 + 150, "Y");
    
    if (global.action1 == 85)
        draw_text(x + 1425, y + 900 + 150, "U");
    
    if (global.action1 == 73)
        draw_text(x + 1425, y + 900 + 150, "I");
    
    if (global.action1 == 79)
        draw_text(x + 1425, y + 900 + 150, "O");
    
    if (global.action1 == 80)
        draw_text(x + 1425, y + 900 + 150, "P");
    
    if (global.action1 == 65)
        draw_text(x + 1425, y + 900 + 150, "A");
    
    if (global.action1 == 83)
        draw_text(x + 1425, y + 900 + 150, "S");
    
    if (global.action1 == 68)
        draw_text(x + 1425, y + 900 + 150, "D");
    
    if (global.action1 == 70)
        draw_text(x + 1425, y + 900 + 150, "F");
    
    if (global.action1 == 71)
        draw_text(x + 1425, y + 900 + 150, "G");
    
    if (global.action1 == 72)
        draw_text(x + 1425, y + 900 + 150, "H");
    
    if (global.action1 == 74)
        draw_text(x + 1425, y + 900 + 150, "J");
    
    if (global.action1 == 75)
        draw_text(x + 1425, y + 900 + 150, "K");
    
    if (global.action1 == 76)
        draw_text(x + 1425, y + 900 + 150, "L");
    
    if (global.action1 == 90)
        draw_text(x + 1425, y + 900 + 150, "Z");
    
    if (global.action1 == 88)
        draw_text(x + 1425, y + 900 + 150, "X");
    
    if (global.action1 == 67)
        draw_text(x + 1425, y + 900 + 150, "C");
    
    if (global.action1 == 86)
        draw_text(x + 1425, y + 900 + 150, "V");
    
    if (global.action1 == 66)
        draw_text(x + 1425, y + 900 + 150, "B");
    
    if (global.action1 == 78)
        draw_text(x + 1425, y + 900 + 150, "N");
    
    if (global.action1 == 77)
        draw_text(x + 1425, y + 900 + 150, "M");
    
    if (global.action1 == 48)
        draw_text(x + 1425, y + 900 + 150, "0");
    
    if (global.action1 == 49)
        draw_text(x + 1425, y + 900 + 150, "1");
    
    if (global.action1 == 50)
        draw_text(x + 1425, y + 900 + 150, "2");
    
    if (global.action1 == 51)
        draw_text(x + 1425, y + 900 + 150, "3");
    
    if (global.action1 == 52)
        draw_text(x + 1425, y + 900 + 150, "4");
    
    if (global.action1 == 53)
        draw_text(x + 1425, y + 900 + 150, "5");
    
    if (global.action1 == 54)
        draw_text(x + 1425, y + 900 + 150, "6");
    
    if (global.action1 == 55)
        draw_text(x + 1425, y + 900 + 150, "7");
    
    if (global.action1 == 56)
        draw_text(x + 1425, y + 900 + 150, "8");
    
    if (global.action1 == 57)
        draw_text(x + 1425, y + 900 + 150, "9");
    
    if (global.action1 == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 1425, y + 900 + 150);
    
    if (global.action1 == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 1425, y + 900 + 150);
    
    if (global.action1 == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 1425, y + 900 + 150);
    
    if (global.action1 == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 1425, y + 900 + 150);
    
    if (global.action1 == 13)
        draw_text(x + 1425, y + 900 + 150, "ENTER");
    
    if (global.action1 == 32)
        draw_text(x + 1425, y + 900 + 150, "SPACE");
    
    if (global.action1 == 16)
        draw_text(x + 1425, y + 900 + 150, "SHIFT");
    
    if (global.action1 == 160)
        draw_text(x + 1425, y + 900 + 150, "L SHIFT");
    
    if (global.action1 == 161)
        draw_text(x + 1425, y + 900 + 150, "R SHIFT");
    
    if (global.action1 == 17)
        draw_text(x + 1425, y + 900 + 150, "CTRL");
    
    if (global.action1 == 162)
        draw_text(x + 1425, y + 900 + 150, "L CTRL");
    
    if (global.action1 == 163)
        draw_text(x + 1425, y + 900 + 150, "R CTRL");
    
    if (global.action1 == 18)
        draw_text(x + 1425, y + 900 + 150, "ALT");
    
    if (global.action1 == 164)
        draw_text(x + 1425, y + 900 + 150, "L ALT");
    
    if (global.action1 == 165)
        draw_text(x + 1425, y + 900 + 150, "R ALT");
    
    if (global.action1 == 8)
        draw_text(x + 1425, y + 900 + 150, "BACKSPACE");
    
    if (global.action1 == 9)
        draw_text(x + 1425, y + 900 + 150, "TAB");
    
    if (global.action1 == 36)
        draw_text(x + 1425, y + 900 + 150, "HOME");
    
    if (global.action1 == 35)
        draw_text(x + 1425, y + 900 + 150, "END");
    
    if (global.action1 == 46)
        draw_text(x + 1425, y + 900 + 150, "DELETE");
    
    if (global.action1 == 45)
        draw_text(x + 1425, y + 900 + 150, "INSERT");
    
    if (global.action1 == 33)
        draw_text(x + 1425, y + 900 + 150, "PAGE UP");
    
    if (global.action1 == 34)
        draw_text(x + 1425, y + 900 + 150, "PAGE DOWN");
    
    if (global.action1 == 19)
        draw_text(x + 1425, y + 900 + 150, "PAUSE");
    
    if (global.action1 == 44)
        draw_text(x + 1425, y + 900 + 150, "PRINT SCREEN");
    
    if (global.action1 == 112)
        draw_text(x + 1425, y + 900 + 150, "F1");
    
    if (global.action1 == 113)
        draw_text(x + 1425, y + 900 + 150, "F2");
    
    if (global.action1 == 114)
        draw_text(x + 1425, y + 900 + 150, "F3");
    
    if (global.action1 == 115)
        draw_text(x + 1425, y + 900 + 150, "F4");
    
    if (global.action1 == 116)
        draw_text(x + 1425, y + 900 + 150, "F5");
    
    if (global.action1 == 117)
        draw_text(x + 1425, y + 900 + 150, "F6");
    
    if (global.action1 == 118)
        draw_text(x + 1425, y + 900 + 150, "F7");
    
    if (global.action1 == 119)
        draw_text(x + 1425, y + 900 + 150, "F8");
    
    if (global.action1 == 120)
        draw_text(x + 1425, y + 900 + 150, "F9");
    
    if (global.action1 == 121)
        draw_text(x + 1425, y + 900 + 150, "F10");
    
    if (global.action1 == 122)
        draw_text(x + 1425, y + 900 + 150, "F11");
    
    if (global.action1 == 123)
        draw_text(x + 1425, y + 900 + 150, "F12");
    
    if (global.action1 == 96)
        draw_text(x + 1425, y + 900 + 150, "NP 0");
    
    if (global.action1 == 97)
        draw_text(x + 1425, y + 900 + 150, "NP 1");
    
    if (global.action1 == 98)
        draw_text(x + 1425, y + 900 + 150, "NP 2");
    
    if (global.action1 == 99)
        draw_text(x + 1425, y + 900 + 150, "NP 3");
    
    if (global.action1 == 100)
        draw_text(x + 1425, y + 900 + 150, "NP 4");
    
    if (global.action1 == 101)
        draw_text(x + 1425, y + 900 + 150, "NP 5");
    
    if (global.action1 == 102)
        draw_text(x + 1425, y + 900 + 150, "NP 6");
    
    if (global.action1 == 103)
        draw_text(x + 1425, y + 900 + 150, "NP 7");
    
    if (global.action1 == 104)
        draw_text(x + 1425, y + 900 + 150, "NP 8");
    
    if (global.action1 == 105)
        draw_text(x + 1425, y + 900 + 150, "NP 9");
    
    if (global.action1 == 106)
        draw_text(x + 1425, y + 900 + 150, "MULTIPLY");
    
    if (global.action1 == 111)
        draw_text(x + 1425, y + 900 + 150, "DIVIDE");
    
    if (global.action1 == 107)
        draw_text(x + 1425, y + 900 + 150, "ADD");
    
    if (global.action1 == 109)
        draw_text(x + 1425, y + 900 + 150, "SUBTRACT");
    
    if (global.action1 == 110)
        draw_text(x + 1425, y + 900 + 150, "DECIMAL");
    
    if (global.action1 == 192)
        draw_text(x + 1425, y + 900 + 150, "TILDE");
    
    if (global.action1 == 189)
        draw_text(x + 1425, y + 900 + 150, "MINUS");
    
    if (global.action1 == 187)
        draw_text(x + 1425, y + 900 + 150, "EQUALS");
    
    if (global.action1 == 219)
        draw_text(x + 1425, y + 900 + 150, "O BRACKET");
    
    if (global.action1 == 221)
        draw_text(x + 1425, y + 900 + 150, "C BRACKET");
    
    if (global.action1 == 220)
        draw_text(x + 1425, y + 900 + 150, "BACKSLASH");
    
    if (global.action1 == 20)
        draw_text(x + 1425, y + 900 + 150, "CAPS LOCK");
    
    if (global.action1 == 186)
        draw_text(x + 1425, y + 900 + 150, "SEMICOLON");
    
    if (global.action1 == 222)
        draw_text(x + 1425, y + 900 + 150, "APOSTROPHE");
    
    if (global.action1 == 188)
        draw_text(x + 1425, y + 900 + 150, "COMMA");
    
    if (global.action1 == 190)
        draw_text(x + 1425, y + 900 + 150, "PERIOD");
    
    if (global.action1 == 191)
        draw_text(x + 1425, y + 900 + 150, "SLASH");
    
    if (global.action1 == 1)
        draw_text(x + 1425, y + 900 + 150, "L CLICK");
    
    if (global.action1 == 2)
        draw_text(x + 1425, y + 900 + 150, "R CLICK");
    
    if (global.action1 == 3)
        draw_text(x + 1425, y + 900 + 150, "M CLICK");
    
    if (global.action1 == 4)
        draw_text(x + 1425, y + 900 + 150, "MOUSE SIDE 1");
    
    if (global.action1 == 5)
        draw_text(x + 1425, y + 900 + 150, "MOUSE SIDE 2");
    
    if (global.action2 == 81)
        draw_text(x + 1425, y + 900 + 300, "Q");
    
    if (global.action2 == 87)
        draw_text(x + 1425, y + 900 + 300, "W");
    
    if (global.action2 == 69)
        draw_text(x + 1425, y + 900 + 300, "E");
    
    if (global.action2 == 82)
        draw_text(x + 1425, y + 900 + 300, "R");
    
    if (global.action2 == 84)
        draw_text(x + 1425, y + 900 + 300, "T");
    
    if (global.action2 == 89)
        draw_text(x + 1425, y + 900 + 300, "Y");
    
    if (global.action2 == 85)
        draw_text(x + 1425, y + 900 + 300, "U");
    
    if (global.action2 == 73)
        draw_text(x + 1425, y + 900 + 300, "I");
    
    if (global.action2 == 79)
        draw_text(x + 1425, y + 900 + 300, "O");
    
    if (global.action2 == 80)
        draw_text(x + 1425, y + 900 + 300, "P");
    
    if (global.action2 == 65)
        draw_text(x + 1425, y + 900 + 300, "A");
    
    if (global.action2 == 83)
        draw_text(x + 1425, y + 900 + 300, "S");
    
    if (global.action2 == 68)
        draw_text(x + 1425, y + 900 + 300, "D");
    
    if (global.action2 == 70)
        draw_text(x + 1425, y + 900 + 300, "F");
    
    if (global.action2 == 71)
        draw_text(x + 1425, y + 900 + 300, "G");
    
    if (global.action2 == 72)
        draw_text(x + 1425, y + 900 + 300, "H");
    
    if (global.action2 == 74)
        draw_text(x + 1425, y + 900 + 300, "J");
    
    if (global.action2 == 75)
        draw_text(x + 1425, y + 900 + 300, "K");
    
    if (global.action2 == 76)
        draw_text(x + 1425, y + 900 + 300, "L");
    
    if (global.action2 == 90)
        draw_text(x + 1425, y + 900 + 300, "Z");
    
    if (global.action2 == 88)
        draw_text(x + 1425, y + 900 + 300, "X");
    
    if (global.action2 == 67)
        draw_text(x + 1425, y + 900 + 300, "C");
    
    if (global.action2 == 86)
        draw_text(x + 1425, y + 900 + 300, "V");
    
    if (global.action2 == 66)
        draw_text(x + 1425, y + 900 + 300, "B");
    
    if (global.action2 == 78)
        draw_text(x + 1425, y + 900 + 300, "N");
    
    if (global.action2 == 77)
        draw_text(x + 1425, y + 900 + 300, "M");
    
    if (global.action2 == 48)
        draw_text(x + 1425, y + 900 + 300, "0");
    
    if (global.action2 == 49)
        draw_text(x + 1425, y + 900 + 300, "1");
    
    if (global.action2 == 50)
        draw_text(x + 1425, y + 900 + 300, "2");
    
    if (global.action2 == 51)
        draw_text(x + 1425, y + 900 + 300, "3");
    
    if (global.action2 == 52)
        draw_text(x + 1425, y + 900 + 300, "4");
    
    if (global.action2 == 53)
        draw_text(x + 1425, y + 900 + 300, "5");
    
    if (global.action2 == 54)
        draw_text(x + 1425, y + 900 + 300, "6");
    
    if (global.action2 == 55)
        draw_text(x + 1425, y + 900 + 300, "7");
    
    if (global.action2 == 56)
        draw_text(x + 1425, y + 900 + 300, "8");
    
    if (global.action2 == 57)
        draw_text(x + 1425, y + 900 + 300, "9");
    
    if (global.action2 == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 1425, y + 900 + 300);
    
    if (global.action2 == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 1425, y + 900 + 300);
    
    if (global.action2 == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 1425, y + 900 + 300);
    
    if (global.action2 == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 1425, y + 900 + 300);
    
    if (global.action2 == 13)
        draw_text(x + 1425, y + 900 + 300, "ENTER");
    
    if (global.action2 == 32)
        draw_text(x + 1425, y + 900 + 300, "SPACE");
    
    if (global.action2 == 16)
        draw_text(x + 1425, y + 900 + 300, "SHIFT");
    
    if (global.action2 == 160)
        draw_text(x + 1425, y + 900 + 300, "L SHIFT");
    
    if (global.action2 == 161)
        draw_text(x + 1425, y + 900 + 300, "R SHIFT");
    
    if (global.action2 == 17)
        draw_text(x + 1425, y + 900 + 300, "CTRL");
    
    if (global.action2 == 162)
        draw_text(x + 1425, y + 900 + 300, "L CTRL");
    
    if (global.action2 == 163)
        draw_text(x + 1425, y + 900 + 300, "R CTRL");
    
    if (global.action2 == 18)
        draw_text(x + 1425, y + 900 + 300, "ALT");
    
    if (global.action2 == 164)
        draw_text(x + 1425, y + 900 + 300, "L ALT");
    
    if (global.action2 == 165)
        draw_text(x + 1425, y + 900 + 300, "R ALT");
    
    if (global.action2 == 8)
        draw_text(x + 1425, y + 900 + 300, "BACKSPACE");
    
    if (global.action2 == 9)
        draw_text(x + 1425, y + 900 + 300, "TAB");
    
    if (global.action2 == 36)
        draw_text(x + 1425, y + 900 + 300, "HOME");
    
    if (global.action2 == 35)
        draw_text(x + 1425, y + 900 + 300, "END");
    
    if (global.action2 == 46)
        draw_text(x + 1425, y + 900 + 300, "DELETE");
    
    if (global.action2 == 45)
        draw_text(x + 1425, y + 900 + 300, "INSERT");
    
    if (global.action2 == 33)
        draw_text(x + 1425, y + 900 + 300, "PAGE UP");
    
    if (global.action2 == 34)
        draw_text(x + 1425, y + 900 + 300, "PAGE DOWN");
    
    if (global.action2 == 19)
        draw_text(x + 1425, y + 900 + 300, "PAUSE");
    
    if (global.action2 == 44)
        draw_text(x + 1425, y + 900 + 300, "PRINT SCREEN");
    
    if (global.action2 == 112)
        draw_text(x + 1425, y + 900 + 300, "F1");
    
    if (global.action2 == 113)
        draw_text(x + 1425, y + 900 + 300, "F2");
    
    if (global.action2 == 114)
        draw_text(x + 1425, y + 900 + 300, "F3");
    
    if (global.action2 == 115)
        draw_text(x + 1425, y + 900 + 300, "F4");
    
    if (global.action2 == 116)
        draw_text(x + 1425, y + 900 + 300, "F5");
    
    if (global.action2 == 117)
        draw_text(x + 1425, y + 900 + 300, "F6");
    
    if (global.action2 == 118)
        draw_text(x + 1425, y + 900 + 300, "F7");
    
    if (global.action2 == 119)
        draw_text(x + 1425, y + 900 + 300, "F8");
    
    if (global.action2 == 120)
        draw_text(x + 1425, y + 900 + 300, "F9");
    
    if (global.action2 == 121)
        draw_text(x + 1425, y + 900 + 300, "F10");
    
    if (global.action2 == 122)
        draw_text(x + 1425, y + 900 + 300, "F11");
    
    if (global.action2 == 123)
        draw_text(x + 1425, y + 900 + 300, "F12");
    
    if (global.action2 == 96)
        draw_text(x + 1425, y + 900 + 300, "NP 0");
    
    if (global.action2 == 97)
        draw_text(x + 1425, y + 900 + 300, "NP 1");
    
    if (global.action2 == 98)
        draw_text(x + 1425, y + 900 + 300, "NP 2");
    
    if (global.action2 == 99)
        draw_text(x + 1425, y + 900 + 300, "NP 3");
    
    if (global.action2 == 100)
        draw_text(x + 1425, y + 900 + 300, "NP 4");
    
    if (global.action2 == 101)
        draw_text(x + 1425, y + 900 + 300, "NP 5");
    
    if (global.action2 == 102)
        draw_text(x + 1425, y + 900 + 300, "NP 6");
    
    if (global.action2 == 103)
        draw_text(x + 1425, y + 900 + 300, "NP 7");
    
    if (global.action2 == 104)
        draw_text(x + 1425, y + 900 + 300, "NP 8");
    
    if (global.action2 == 105)
        draw_text(x + 1425, y + 900 + 300, "NP 9");
    
    if (global.action2 == 106)
        draw_text(x + 1425, y + 900 + 300, "MULTIPLY");
    
    if (global.action2 == 111)
        draw_text(x + 1425, y + 900 + 300, "DIVIDE");
    
    if (global.action2 == 107)
        draw_text(x + 1425, y + 900 + 300, "ADD");
    
    if (global.action2 == 109)
        draw_text(x + 1425, y + 900 + 300, "SUBTRACT");
    
    if (global.action2 == 110)
        draw_text(x + 1425, y + 900 + 300, "DECIMAL");
    
    if (global.action2 == 192)
        draw_text(x + 1425, y + 900 + 300, "TILDE");
    
    if (global.action2 == 189)
        draw_text(x + 1425, y + 900 + 300, "MINUS");
    
    if (global.action2 == 187)
        draw_text(x + 1425, y + 900 + 300, "EQUALS");
    
    if (global.action2 == 219)
        draw_text(x + 1425, y + 900 + 300, "O BRACKET");
    
    if (global.action2 == 221)
        draw_text(x + 1425, y + 900 + 300, "C BRACKET");
    
    if (global.action2 == 220)
        draw_text(x + 1425, y + 900 + 300, "BACKSLASH");
    
    if (global.action2 == 20)
        draw_text(x + 1425, y + 900 + 300, "CAPS LOCK");
    
    if (global.action2 == 186)
        draw_text(x + 1425, y + 900 + 300, "SEMICOLON");
    
    if (global.action2 == 222)
        draw_text(x + 1425, y + 900 + 300, "APOSTROPHE");
    
    if (global.action2 == 188)
        draw_text(x + 1425, y + 900 + 300, "COMMA");
    
    if (global.action2 == 190)
        draw_text(x + 1425, y + 900 + 300, "PERIOD");
    
    if (global.action2 == 191)
        draw_text(x + 1425, y + 900 + 300, "SLASH");
    
    if (global.action2 == 1)
        draw_text(x + 1425, y + 900 + 300, "L CLICK");
    
    if (global.action2 == 2)
        draw_text(x + 1425, y + 900 + 300, "R CLICK");
    
    if (global.action2 == 3)
        draw_text(x + 1425, y + 900 + 300, "M CLICK");
    
    if (global.action2 == 4)
        draw_text(x + 1425, y + 900 + 300, "MOUSE SIDE 1");
    
    if (global.action2 == 5)
        draw_text(x + 1425, y + 900 + 300, "MOUSE SIDE 2");
    
    if (global.action3 == 81)
        draw_text(x + 1425, y + 900 + 450, "Q");
    
    if (global.action3 == 87)
        draw_text(x + 1425, y + 900 + 450, "W");
    
    if (global.action3 == 69)
        draw_text(x + 1425, y + 900 + 450, "E");
    
    if (global.action3 == 82)
        draw_text(x + 1425, y + 900 + 450, "R");
    
    if (global.action3 == 84)
        draw_text(x + 1425, y + 900 + 450, "T");
    
    if (global.action3 == 89)
        draw_text(x + 1425, y + 900 + 450, "Y");
    
    if (global.action3 == 85)
        draw_text(x + 1425, y + 900 + 450, "U");
    
    if (global.action3 == 73)
        draw_text(x + 1425, y + 900 + 450, "I");
    
    if (global.action3 == 79)
        draw_text(x + 1425, y + 900 + 450, "O");
    
    if (global.action3 == 80)
        draw_text(x + 1425, y + 900 + 450, "P");
    
    if (global.action3 == 65)
        draw_text(x + 1425, y + 900 + 450, "A");
    
    if (global.action3 == 83)
        draw_text(x + 1425, y + 900 + 450, "S");
    
    if (global.action3 == 68)
        draw_text(x + 1425, y + 900 + 450, "D");
    
    if (global.action3 == 70)
        draw_text(x + 1425, y + 900 + 450, "F");
    
    if (global.action3 == 71)
        draw_text(x + 1425, y + 900 + 450, "G");
    
    if (global.action3 == 72)
        draw_text(x + 1425, y + 900 + 450, "H");
    
    if (global.action3 == 74)
        draw_text(x + 1425, y + 900 + 450, "J");
    
    if (global.action3 == 75)
        draw_text(x + 1425, y + 900 + 450, "K");
    
    if (global.action3 == 76)
        draw_text(x + 1425, y + 900 + 450, "L");
    
    if (global.action3 == 90)
        draw_text(x + 1425, y + 900 + 450, "Z");
    
    if (global.action3 == 88)
        draw_text(x + 1425, y + 900 + 450, "X");
    
    if (global.action3 == 67)
        draw_text(x + 1425, y + 900 + 450, "C");
    
    if (global.action3 == 86)
        draw_text(x + 1425, y + 900 + 450, "V");
    
    if (global.action3 == 66)
        draw_text(x + 1425, y + 900 + 450, "B");
    
    if (global.action3 == 78)
        draw_text(x + 1425, y + 900 + 450, "N");
    
    if (global.action3 == 77)
        draw_text(x + 1425, y + 900 + 450, "M");
    
    if (global.action3 == 48)
        draw_text(x + 1425, y + 900 + 450, "0");
    
    if (global.action3 == 49)
        draw_text(x + 1425, y + 900 + 450, "1");
    
    if (global.action3 == 50)
        draw_text(x + 1425, y + 900 + 450, "2");
    
    if (global.action3 == 51)
        draw_text(x + 1425, y + 900 + 450, "3");
    
    if (global.action3 == 52)
        draw_text(x + 1425, y + 900 + 450, "4");
    
    if (global.action3 == 53)
        draw_text(x + 1425, y + 900 + 450, "5");
    
    if (global.action3 == 54)
        draw_text(x + 1425, y + 900 + 450, "6");
    
    if (global.action3 == 55)
        draw_text(x + 1425, y + 900 + 450, "7");
    
    if (global.action3 == 56)
        draw_text(x + 1425, y + 900 + 450, "8");
    
    if (global.action3 == 57)
        draw_text(x + 1425, y + 900 + 450, "9");
    
    if (global.action3 == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 1425, y + 900 + 450);
    
    if (global.action3 == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 1425, y + 900 + 450);
    
    if (global.action3 == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 1425, y + 900 + 450);
    
    if (global.action3 == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 1425, y + 900 + 450);
    
    if (global.action3 == 13)
        draw_text(x + 1425, y + 900 + 450, "ENTER");
    
    if (global.action3 == 32)
        draw_text(x + 1425, y + 900 + 450, "SPACE");
    
    if (global.action3 == 16)
        draw_text(x + 1425, y + 900 + 450, "SHIFT");
    
    if (global.action3 == 160)
        draw_text(x + 1425, y + 900 + 450, "L SHIFT");
    
    if (global.action3 == 161)
        draw_text(x + 1425, y + 900 + 450, "R SHIFT");
    
    if (global.action3 == 17)
        draw_text(x + 1425, y + 900 + 450, "CTRL");
    
    if (global.action3 == 162)
        draw_text(x + 1425, y + 900 + 450, "L CTRL");
    
    if (global.action3 == 163)
        draw_text(x + 1425, y + 900 + 450, "R CTRL");
    
    if (global.action3 == 18)
        draw_text(x + 1425, y + 900 + 450, "ALT");
    
    if (global.action3 == 164)
        draw_text(x + 1425, y + 900 + 450, "L ALT");
    
    if (global.action3 == 165)
        draw_text(x + 1425, y + 900 + 450, "R ALT");
    
    if (global.action3 == 8)
        draw_text(x + 1425, y + 900 + 450, "BACKSPACE");
    
    if (global.action3 == 9)
        draw_text(x + 1425, y + 900 + 450, "TAB");
    
    if (global.action3 == 36)
        draw_text(x + 1425, y + 900 + 450, "HOME");
    
    if (global.action3 == 35)
        draw_text(x + 1425, y + 900 + 450, "END");
    
    if (global.action3 == 46)
        draw_text(x + 1425, y + 900 + 450, "DELETE");
    
    if (global.action3 == 45)
        draw_text(x + 1425, y + 900 + 450, "INSERT");
    
    if (global.action3 == 33)
        draw_text(x + 1425, y + 900 + 450, "PAGE UP");
    
    if (global.action3 == 34)
        draw_text(x + 1425, y + 900 + 450, "PAGE DOWN");
    
    if (global.action3 == 19)
        draw_text(x + 1425, y + 900 + 450, "PAUSE");
    
    if (global.action3 == 44)
        draw_text(x + 1425, y + 900 + 450, "PRINT SCREEN");
    
    if (global.action3 == 112)
        draw_text(x + 1425, y + 900 + 450, "F1");
    
    if (global.action3 == 113)
        draw_text(x + 1425, y + 900 + 450, "F2");
    
    if (global.action3 == 114)
        draw_text(x + 1425, y + 900 + 450, "F3");
    
    if (global.action3 == 115)
        draw_text(x + 1425, y + 900 + 450, "F4");
    
    if (global.action3 == 116)
        draw_text(x + 1425, y + 900 + 450, "F5");
    
    if (global.action3 == 117)
        draw_text(x + 1425, y + 900 + 450, "F6");
    
    if (global.action3 == 118)
        draw_text(x + 1425, y + 900 + 450, "F7");
    
    if (global.action3 == 119)
        draw_text(x + 1425, y + 900 + 450, "F8");
    
    if (global.action3 == 120)
        draw_text(x + 1425, y + 900 + 450, "F9");
    
    if (global.action3 == 121)
        draw_text(x + 1425, y + 900 + 450, "F10");
    
    if (global.action3 == 122)
        draw_text(x + 1425, y + 900 + 450, "F11");
    
    if (global.action3 == 123)
        draw_text(x + 1425, y + 900 + 450, "F12");
    
    if (global.action3 == 96)
        draw_text(x + 1425, y + 900 + 450, "NP 0");
    
    if (global.action3 == 97)
        draw_text(x + 1425, y + 900 + 450, "NP 1");
    
    if (global.action3 == 98)
        draw_text(x + 1425, y + 900 + 450, "NP 2");
    
    if (global.action3 == 99)
        draw_text(x + 1425, y + 900 + 450, "NP 3");
    
    if (global.action3 == 100)
        draw_text(x + 1425, y + 900 + 450, "NP 4");
    
    if (global.action3 == 101)
        draw_text(x + 1425, y + 900 + 450, "NP 5");
    
    if (global.action3 == 102)
        draw_text(x + 1425, y + 900 + 450, "NP 6");
    
    if (global.action3 == 103)
        draw_text(x + 1425, y + 900 + 450, "NP 7");
    
    if (global.action3 == 104)
        draw_text(x + 1425, y + 900 + 450, "NP 8");
    
    if (global.action3 == 105)
        draw_text(x + 1425, y + 900 + 450, "NP 9");
    
    if (global.action3 == 106)
        draw_text(x + 1425, y + 900 + 450, "MULTIPLY");
    
    if (global.action3 == 111)
        draw_text(x + 1425, y + 900 + 450, "DIVIDE");
    
    if (global.action3 == 107)
        draw_text(x + 1425, y + 900 + 450, "ADD");
    
    if (global.action3 == 109)
        draw_text(x + 1425, y + 900 + 450, "SUBTRACT");
    
    if (global.action3 == 110)
        draw_text(x + 1425, y + 900 + 450, "DECIMAL");
    
    if (global.action3 == 192)
        draw_text(x + 1425, y + 900 + 450, "TILDE");
    
    if (global.action3 == 189)
        draw_text(x + 1425, y + 900 + 450, "MINUS");
    
    if (global.action3 == 187)
        draw_text(x + 1425, y + 900 + 450, "EQUALS");
    
    if (global.action3 == 219)
        draw_text(x + 1425, y + 900 + 450, "O BRACKET");
    
    if (global.action3 == 221)
        draw_text(x + 1425, y + 900 + 450, "C BRACKET");
    
    if (global.action3 == 220)
        draw_text(x + 1425, y + 900 + 450, "BACKSLASH");
    
    if (global.action3 == 20)
        draw_text(x + 1425, y + 900 + 450, "CAPS LOCK");
    
    if (global.action3 == 186)
        draw_text(x + 1425, y + 900 + 450, "SEMICOLON");
    
    if (global.action3 == 222)
        draw_text(x + 1425, y + 900 + 450, "APOSTROPHE");
    
    if (global.action3 == 188)
        draw_text(x + 1425, y + 900 + 450, "COMMA");
    
    if (global.action3 == 190)
        draw_text(x + 1425, y + 900 + 450, "PERIOD");
    
    if (global.action3 == 191)
        draw_text(x + 1425, y + 900 + 450, "SLASH");
    
    if (global.action3 == 1)
        draw_text(x + 1425, y + 900 + 450, "L CLICK");
    
    if (global.action3 == 2)
        draw_text(x + 1425, y + 900 + 450, "R CLICK");
    
    if (global.action3 == 3)
        draw_text(x + 1425, y + 900 + 450, "M CLICK");
    
    if (global.action3 == 4)
        draw_text(x + 1425, y + 900 + 450, "MOUSE SIDE 1");
    
    if (global.action3 == 5)
        draw_text(x + 1425, y + 900 + 450, "MOUSE SIDE 2");
    
    if (global.action4 == 81)
        draw_text(x + 2825, (y + 900) - 450, "Q");
    
    if (global.action4 == 87)
        draw_text(x + 2825, (y + 900) - 450, "W");
    
    if (global.action4 == 69)
        draw_text(x + 2825, (y + 900) - 450, "E");
    
    if (global.action4 == 82)
        draw_text(x + 2825, (y + 900) - 450, "R");
    
    if (global.action4 == 84)
        draw_text(x + 2825, (y + 900) - 450, "T");
    
    if (global.action4 == 89)
        draw_text(x + 2825, (y + 900) - 450, "Y");
    
    if (global.action4 == 85)
        draw_text(x + 2825, (y + 900) - 450, "U");
    
    if (global.action4 == 73)
        draw_text(x + 2825, (y + 900) - 450, "I");
    
    if (global.action4 == 79)
        draw_text(x + 2825, (y + 900) - 450, "O");
    
    if (global.action4 == 80)
        draw_text(x + 2825, (y + 900) - 450, "P");
    
    if (global.action4 == 65)
        draw_text(x + 2825, (y + 900) - 450, "A");
    
    if (global.action4 == 83)
        draw_text(x + 2825, (y + 900) - 450, "S");
    
    if (global.action4 == 68)
        draw_text(x + 2825, (y + 900) - 450, "D");
    
    if (global.action4 == 70)
        draw_text(x + 2825, (y + 900) - 450, "F");
    
    if (global.action4 == 71)
        draw_text(x + 2825, (y + 900) - 450, "G");
    
    if (global.action4 == 72)
        draw_text(x + 2825, (y + 900) - 450, "H");
    
    if (global.action4 == 74)
        draw_text(x + 2825, (y + 900) - 450, "J");
    
    if (global.action4 == 75)
        draw_text(x + 2825, (y + 900) - 450, "K");
    
    if (global.action4 == 76)
        draw_text(x + 2825, (y + 900) - 450, "L");
    
    if (global.action4 == 90)
        draw_text(x + 2825, (y + 900) - 450, "Z");
    
    if (global.action4 == 88)
        draw_text(x + 2825, (y + 900) - 450, "X");
    
    if (global.action4 == 67)
        draw_text(x + 2825, (y + 900) - 450, "C");
    
    if (global.action4 == 86)
        draw_text(x + 2825, (y + 900) - 450, "V");
    
    if (global.action4 == 66)
        draw_text(x + 2825, (y + 900) - 450, "B");
    
    if (global.action4 == 78)
        draw_text(x + 2825, (y + 900) - 450, "N");
    
    if (global.action4 == 77)
        draw_text(x + 2825, (y + 900) - 450, "M");
    
    if (global.action4 == 48)
        draw_text(x + 2825, (y + 900) - 450, "0");
    
    if (global.action4 == 49)
        draw_text(x + 2825, (y + 900) - 450, "1");
    
    if (global.action4 == 50)
        draw_text(x + 2825, (y + 900) - 450, "2");
    
    if (global.action4 == 51)
        draw_text(x + 2825, (y + 900) - 450, "3");
    
    if (global.action4 == 52)
        draw_text(x + 2825, (y + 900) - 450, "4");
    
    if (global.action4 == 53)
        draw_text(x + 2825, (y + 900) - 450, "5");
    
    if (global.action4 == 54)
        draw_text(x + 2825, (y + 900) - 450, "6");
    
    if (global.action4 == 55)
        draw_text(x + 2825, (y + 900) - 450, "7");
    
    if (global.action4 == 56)
        draw_text(x + 2825, (y + 900) - 450, "8");
    
    if (global.action4 == 57)
        draw_text(x + 2825, (y + 900) - 450, "9");
    
    if (global.action4 == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 2825, (y + 900) - 450);
    
    if (global.action4 == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 2825, (y + 900) - 450);
    
    if (global.action4 == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 2825, (y + 900) - 450);
    
    if (global.action4 == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 2825, (y + 900) - 450);
    
    if (global.action4 == 13)
        draw_text(x + 2825, (y + 900) - 450, "ENTER");
    
    if (global.action4 == 32)
        draw_text(x + 2825, (y + 900) - 450, "SPACE");
    
    if (global.action4 == 16)
        draw_text(x + 2825, (y + 900) - 450, "SHIFT");
    
    if (global.action4 == 160)
        draw_text(x + 2825, (y + 900) - 450, "L SHIFT");
    
    if (global.action4 == 161)
        draw_text(x + 2825, (y + 900) - 450, "R SHIFT");
    
    if (global.action4 == 17)
        draw_text(x + 2825, (y + 900) - 450, "CTRL");
    
    if (global.action4 == 162)
        draw_text(x + 2825, (y + 900) - 450, "L CTRL");
    
    if (global.action4 == 163)
        draw_text(x + 2825, (y + 900) - 450, "R CTRL");
    
    if (global.action4 == 18)
        draw_text(x + 2825, (y + 900) - 450, "ALT");
    
    if (global.action4 == 164)
        draw_text(x + 2825, (y + 900) - 450, "L ALT");
    
    if (global.action4 == 165)
        draw_text(x + 2825, (y + 900) - 450, "R ALT");
    
    if (global.action4 == 8)
        draw_text(x + 2825, (y + 900) - 450, "BACKSPACE");
    
    if (global.action4 == 9)
        draw_text(x + 2825, (y + 900) - 450, "TAB");
    
    if (global.action4 == 36)
        draw_text(x + 2825, (y + 900) - 450, "HOME");
    
    if (global.action4 == 35)
        draw_text(x + 2825, (y + 900) - 450, "END");
    
    if (global.action4 == 46)
        draw_text(x + 2825, (y + 900) - 450, "DELETE");
    
    if (global.action4 == 45)
        draw_text(x + 2825, (y + 900) - 450, "INSERT");
    
    if (global.action4 == 33)
        draw_text(x + 2825, (y + 900) - 450, "PAGE UP");
    
    if (global.action4 == 34)
        draw_text(x + 2825, (y + 900) - 450, "PAGE DOWN");
    
    if (global.action4 == 19)
        draw_text(x + 2825, (y + 900) - 450, "PAUSE");
    
    if (global.action4 == 44)
        draw_text(x + 2825, (y + 900) - 450, "PRINT SCREEN");
    
    if (global.action4 == 112)
        draw_text(x + 2825, (y + 900) - 450, "F1");
    
    if (global.action4 == 113)
        draw_text(x + 2825, (y + 900) - 450, "F2");
    
    if (global.action4 == 114)
        draw_text(x + 2825, (y + 900) - 450, "F3");
    
    if (global.action4 == 115)
        draw_text(x + 2825, (y + 900) - 450, "F4");
    
    if (global.action4 == 116)
        draw_text(x + 2825, (y + 900) - 450, "F5");
    
    if (global.action4 == 117)
        draw_text(x + 2825, (y + 900) - 450, "F6");
    
    if (global.action4 == 118)
        draw_text(x + 2825, (y + 900) - 450, "F7");
    
    if (global.action4 == 119)
        draw_text(x + 2825, (y + 900) - 450, "F8");
    
    if (global.action4 == 120)
        draw_text(x + 2825, (y + 900) - 450, "F9");
    
    if (global.action4 == 121)
        draw_text(x + 2825, (y + 900) - 450, "F10");
    
    if (global.action4 == 122)
        draw_text(x + 2825, (y + 900) - 450, "F11");
    
    if (global.action4 == 123)
        draw_text(x + 2825, (y + 900) - 450, "F12");
    
    if (global.action4 == 96)
        draw_text(x + 2825, (y + 900) - 450, "NP 0");
    
    if (global.action4 == 97)
        draw_text(x + 2825, (y + 900) - 450, "NP 1");
    
    if (global.action4 == 98)
        draw_text(x + 2825, (y + 900) - 450, "NP 2");
    
    if (global.action4 == 99)
        draw_text(x + 2825, (y + 900) - 450, "NP 3");
    
    if (global.action4 == 100)
        draw_text(x + 2825, (y + 900) - 450, "NP 4");
    
    if (global.action4 == 101)
        draw_text(x + 2825, (y + 900) - 450, "NP 5");
    
    if (global.action4 == 102)
        draw_text(x + 2825, (y + 900) - 450, "NP 6");
    
    if (global.action4 == 103)
        draw_text(x + 2825, (y + 900) - 450, "NP 7");
    
    if (global.action4 == 104)
        draw_text(x + 2825, (y + 900) - 450, "NP 8");
    
    if (global.action4 == 105)
        draw_text(x + 2825, (y + 900) - 450, "NP 9");
    
    if (global.action4 == 106)
        draw_text(x + 2825, (y + 900) - 450, "MULTIPLY");
    
    if (global.action4 == 111)
        draw_text(x + 2825, (y + 900) - 450, "DIVIDE");
    
    if (global.action4 == 107)
        draw_text(x + 2825, (y + 900) - 450, "ADD");
    
    if (global.action4 == 109)
        draw_text(x + 2825, (y + 900) - 450, "SUBTRACT");
    
    if (global.action4 == 110)
        draw_text(x + 2825, (y + 900) - 450, "DECIMAL");
    
    if (global.action4 == 192)
        draw_text(x + 2825, (y + 900) - 450, "TILDE");
    
    if (global.action4 == 189)
        draw_text(x + 2825, (y + 900) - 450, "MINUS");
    
    if (global.action4 == 187)
        draw_text(x + 2825, (y + 900) - 450, "EQUALS");
    
    if (global.action4 == 219)
        draw_text(x + 2825, (y + 900) - 450, "O BRACKET");
    
    if (global.action4 == 221)
        draw_text(x + 2825, (y + 900) - 450, "C BRACKET");
    
    if (global.action4 == 220)
        draw_text(x + 2825, (y + 900) - 450, "BACKSLASH");
    
    if (global.action4 == 20)
        draw_text(x + 2825, (y + 900) - 450, "CAPS LOCK");
    
    if (global.action4 == 186)
        draw_text(x + 2825, (y + 900) - 450, "SEMICOLON");
    
    if (global.action4 == 222)
        draw_text(x + 2825, (y + 900) - 450, "APOSTROPHE");
    
    if (global.action4 == 188)
        draw_text(x + 2825, (y + 900) - 450, "COMMA");
    
    if (global.action4 == 190)
        draw_text(x + 2825, (y + 900) - 450, "PERIOD");
    
    if (global.action4 == 191)
        draw_text(x + 2825, (y + 900) - 450, "SLASH");
    
    if (global.action4 == 1)
        draw_text(x + 2825, (y + 900) - 450, "L CLICK");
    
    if (global.action4 == 2)
        draw_text(x + 2825, (y + 900) - 450, "R CLICK");
    
    if (global.action4 == 3)
        draw_text(x + 2825, (y + 900) - 450, "M CLICK");
    
    if (global.action4 == 4)
        draw_text(x + 2825, (y + 900) - 450, "MOUSE SIDE 1");
    
    if (global.action4 == 5)
        draw_text(x + 2825, (y + 900) - 450, "MOUSE SIDE 2");
    
    if (global.action5 == 81)
        draw_text(x + 2825, (y + 900) - 300, "Q");
    
    if (global.action5 == 87)
        draw_text(x + 2825, (y + 900) - 300, "W");
    
    if (global.action5 == 69)
        draw_text(x + 2825, (y + 900) - 300, "E");
    
    if (global.action5 == 82)
        draw_text(x + 2825, (y + 900) - 300, "R");
    
    if (global.action5 == 84)
        draw_text(x + 2825, (y + 900) - 300, "T");
    
    if (global.action5 == 89)
        draw_text(x + 2825, (y + 900) - 300, "Y");
    
    if (global.action5 == 85)
        draw_text(x + 2825, (y + 900) - 300, "U");
    
    if (global.action5 == 73)
        draw_text(x + 2825, (y + 900) - 300, "I");
    
    if (global.action5 == 79)
        draw_text(x + 2825, (y + 900) - 300, "O");
    
    if (global.action5 == 80)
        draw_text(x + 2825, (y + 900) - 300, "P");
    
    if (global.action5 == 65)
        draw_text(x + 2825, (y + 900) - 300, "A");
    
    if (global.action5 == 83)
        draw_text(x + 2825, (y + 900) - 300, "S");
    
    if (global.action5 == 68)
        draw_text(x + 2825, (y + 900) - 300, "D");
    
    if (global.action5 == 70)
        draw_text(x + 2825, (y + 900) - 300, "F");
    
    if (global.action5 == 71)
        draw_text(x + 2825, (y + 900) - 300, "G");
    
    if (global.action5 == 72)
        draw_text(x + 2825, (y + 900) - 300, "H");
    
    if (global.action5 == 74)
        draw_text(x + 2825, (y + 900) - 300, "J");
    
    if (global.action5 == 75)
        draw_text(x + 2825, (y + 900) - 300, "K");
    
    if (global.action5 == 76)
        draw_text(x + 2825, (y + 900) - 300, "L");
    
    if (global.action5 == 90)
        draw_text(x + 2825, (y + 900) - 300, "Z");
    
    if (global.action5 == 88)
        draw_text(x + 2825, (y + 900) - 300, "X");
    
    if (global.action5 == 67)
        draw_text(x + 2825, (y + 900) - 300, "C");
    
    if (global.action5 == 86)
        draw_text(x + 2825, (y + 900) - 300, "V");
    
    if (global.action5 == 66)
        draw_text(x + 2825, (y + 900) - 300, "B");
    
    if (global.action5 == 78)
        draw_text(x + 2825, (y + 900) - 300, "N");
    
    if (global.action5 == 77)
        draw_text(x + 2825, (y + 900) - 300, "M");
    
    if (global.action5 == 48)
        draw_text(x + 2825, (y + 900) - 300, "0");
    
    if (global.action5 == 49)
        draw_text(x + 2825, (y + 900) - 300, "1");
    
    if (global.action5 == 50)
        draw_text(x + 2825, (y + 900) - 300, "2");
    
    if (global.action5 == 51)
        draw_text(x + 2825, (y + 900) - 300, "3");
    
    if (global.action5 == 52)
        draw_text(x + 2825, (y + 900) - 300, "4");
    
    if (global.action5 == 53)
        draw_text(x + 2825, (y + 900) - 300, "5");
    
    if (global.action5 == 54)
        draw_text(x + 2825, (y + 900) - 300, "6");
    
    if (global.action5 == 55)
        draw_text(x + 2825, (y + 900) - 300, "7");
    
    if (global.action5 == 56)
        draw_text(x + 2825, (y + 900) - 300, "8");
    
    if (global.action5 == 57)
        draw_text(x + 2825, (y + 900) - 300, "9");
    
    if (global.action5 == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 2825, (y + 900) - 300);
    
    if (global.action5 == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 2825, (y + 900) - 300);
    
    if (global.action5 == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 2825, (y + 900) - 300);
    
    if (global.action5 == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 2825, (y + 900) - 300);
    
    if (global.action5 == 13)
        draw_text(x + 2825, (y + 900) - 300, "ENTER");
    
    if (global.action5 == 32)
        draw_text(x + 2825, (y + 900) - 300, "SPACE");
    
    if (global.action5 == 16)
        draw_text(x + 2825, (y + 900) - 300, "SHIFT");
    
    if (global.action5 == 160)
        draw_text(x + 2825, (y + 900) - 300, "L SHIFT");
    
    if (global.action5 == 161)
        draw_text(x + 2825, (y + 900) - 300, "R SHIFT");
    
    if (global.action5 == 17)
        draw_text(x + 2825, (y + 900) - 300, "CTRL");
    
    if (global.action5 == 162)
        draw_text(x + 2825, (y + 900) - 300, "L CTRL");
    
    if (global.action5 == 163)
        draw_text(x + 2825, (y + 900) - 300, "R CTRL");
    
    if (global.action5 == 18)
        draw_text(x + 2825, (y + 900) - 300, "ALT");
    
    if (global.action5 == 164)
        draw_text(x + 2825, (y + 900) - 300, "L ALT");
    
    if (global.action5 == 165)
        draw_text(x + 2825, (y + 900) - 300, "R ALT");
    
    if (global.action5 == 8)
        draw_text(x + 2825, (y + 900) - 300, "BACKSPACE");
    
    if (global.action5 == 9)
        draw_text(x + 2825, (y + 900) - 300, "TAB");
    
    if (global.action5 == 36)
        draw_text(x + 2825, (y + 900) - 300, "HOME");
    
    if (global.action5 == 35)
        draw_text(x + 2825, (y + 900) - 300, "END");
    
    if (global.action5 == 46)
        draw_text(x + 2825, (y + 900) - 300, "DELETE");
    
    if (global.action5 == 45)
        draw_text(x + 2825, (y + 900) - 300, "INSERT");
    
    if (global.action5 == 33)
        draw_text(x + 2825, (y + 900) - 300, "PAGE UP");
    
    if (global.action5 == 34)
        draw_text(x + 2825, (y + 900) - 300, "PAGE DOWN");
    
    if (global.action5 == 19)
        draw_text(x + 2825, (y + 900) - 300, "PAUSE");
    
    if (global.action5 == 44)
        draw_text(x + 2825, (y + 900) - 300, "PRINT SCREEN");
    
    if (global.action5 == 112)
        draw_text(x + 2825, (y + 900) - 300, "F1");
    
    if (global.action5 == 113)
        draw_text(x + 2825, (y + 900) - 300, "F2");
    
    if (global.action5 == 114)
        draw_text(x + 2825, (y + 900) - 300, "F3");
    
    if (global.action5 == 115)
        draw_text(x + 2825, (y + 900) - 300, "F4");
    
    if (global.action5 == 116)
        draw_text(x + 2825, (y + 900) - 300, "F5");
    
    if (global.action5 == 117)
        draw_text(x + 2825, (y + 900) - 300, "F6");
    
    if (global.action5 == 118)
        draw_text(x + 2825, (y + 900) - 300, "F7");
    
    if (global.action5 == 119)
        draw_text(x + 2825, (y + 900) - 300, "F8");
    
    if (global.action5 == 120)
        draw_text(x + 2825, (y + 900) - 300, "F9");
    
    if (global.action5 == 121)
        draw_text(x + 2825, (y + 900) - 300, "F10");
    
    if (global.action5 == 122)
        draw_text(x + 2825, (y + 900) - 300, "F11");
    
    if (global.action5 == 123)
        draw_text(x + 2825, (y + 900) - 300, "F12");
    
    if (global.action5 == 96)
        draw_text(x + 2825, (y + 900) - 300, "NP 0");
    
    if (global.action5 == 97)
        draw_text(x + 2825, (y + 900) - 300, "NP 1");
    
    if (global.action5 == 98)
        draw_text(x + 2825, (y + 900) - 300, "NP 2");
    
    if (global.action5 == 99)
        draw_text(x + 2825, (y + 900) - 300, "NP 3");
    
    if (global.action5 == 100)
        draw_text(x + 2825, (y + 900) - 300, "NP 4");
    
    if (global.action5 == 101)
        draw_text(x + 2825, (y + 900) - 300, "NP 5");
    
    if (global.action5 == 102)
        draw_text(x + 2825, (y + 900) - 300, "NP 6");
    
    if (global.action5 == 103)
        draw_text(x + 2825, (y + 900) - 300, "NP 7");
    
    if (global.action5 == 104)
        draw_text(x + 2825, (y + 900) - 300, "NP 8");
    
    if (global.action5 == 105)
        draw_text(x + 2825, (y + 900) - 300, "NP 9");
    
    if (global.action5 == 106)
        draw_text(x + 2825, (y + 900) - 300, "MULTIPLY");
    
    if (global.action5 == 111)
        draw_text(x + 2825, (y + 900) - 300, "DIVIDE");
    
    if (global.action5 == 107)
        draw_text(x + 2825, (y + 900) - 300, "ADD");
    
    if (global.action5 == 109)
        draw_text(x + 2825, (y + 900) - 300, "SUBTRACT");
    
    if (global.action5 == 110)
        draw_text(x + 2825, (y + 900) - 300, "DECIMAL");
    
    if (global.action5 == 192)
        draw_text(x + 2825, (y + 900) - 300, "TILDE");
    
    if (global.action5 == 189)
        draw_text(x + 2825, (y + 900) - 300, "MINUS");
    
    if (global.action5 == 187)
        draw_text(x + 2825, (y + 900) - 300, "EQUALS");
    
    if (global.action5 == 219)
        draw_text(x + 2825, (y + 900) - 300, "O BRACKET");
    
    if (global.action5 == 221)
        draw_text(x + 2825, (y + 900) - 300, "C BRACKET");
    
    if (global.action5 == 220)
        draw_text(x + 2825, (y + 900) - 300, "BACKSLASH");
    
    if (global.action5 == 20)
        draw_text(x + 2825, (y + 900) - 300, "CAPS LOCK");
    
    if (global.action5 == 186)
        draw_text(x + 2825, (y + 900) - 300, "SEMICOLON");
    
    if (global.action5 == 222)
        draw_text(x + 2825, (y + 900) - 300, "APOSTROPHE");
    
    if (global.action5 == 188)
        draw_text(x + 2825, (y + 900) - 300, "COMMA");
    
    if (global.action5 == 190)
        draw_text(x + 2825, (y + 900) - 300, "PERIOD");
    
    if (global.action5 == 191)
        draw_text(x + 2825, (y + 900) - 300, "SLASH");
    
    if (global.action5 == 1)
        draw_text(x + 2825, (y + 900) - 300, "L CLICK");
    
    if (global.action5 == 2)
        draw_text(x + 2825, (y + 900) - 300, "R CLICK");
    
    if (global.action5 == 3)
        draw_text(x + 2825, (y + 900) - 300, "M CLICK");
    
    if (global.action5 == 4)
        draw_text(x + 2825, (y + 900) - 300, "MOUSE SIDE 1");
    
    if (global.action5 == 5)
        draw_text(x + 2825, (y + 900) - 300, "MOUSE SIDE 2");
    
    if (global.gun == 81)
        draw_text(x + 2825, (y + 900) - 150, "Q");
    
    if (global.gun == 87)
        draw_text(x + 2825, (y + 900) - 150, "W");
    
    if (global.gun == 69)
        draw_text(x + 2825, (y + 900) - 150, "E");
    
    if (global.gun == 82)
        draw_text(x + 2825, (y + 900) - 150, "R");
    
    if (global.gun == 84)
        draw_text(x + 2825, (y + 900) - 150, "T");
    
    if (global.gun == 89)
        draw_text(x + 2825, (y + 900) - 150, "Y");
    
    if (global.gun == 85)
        draw_text(x + 2825, (y + 900) - 150, "U");
    
    if (global.gun == 73)
        draw_text(x + 2825, (y + 900) - 150, "I");
    
    if (global.gun == 79)
        draw_text(x + 2825, (y + 900) - 150, "O");
    
    if (global.gun == 80)
        draw_text(x + 2825, (y + 900) - 150, "P");
    
    if (global.gun == 65)
        draw_text(x + 2825, (y + 900) - 150, "A");
    
    if (global.gun == 83)
        draw_text(x + 2825, (y + 900) - 150, "S");
    
    if (global.gun == 68)
        draw_text(x + 2825, (y + 900) - 150, "D");
    
    if (global.gun == 70)
        draw_text(x + 2825, (y + 900) - 150, "F");
    
    if (global.gun == 71)
        draw_text(x + 2825, (y + 900) - 150, "G");
    
    if (global.gun == 72)
        draw_text(x + 2825, (y + 900) - 150, "H");
    
    if (global.gun == 74)
        draw_text(x + 2825, (y + 900) - 150, "J");
    
    if (global.gun == 75)
        draw_text(x + 2825, (y + 900) - 150, "K");
    
    if (global.gun == 76)
        draw_text(x + 2825, (y + 900) - 150, "L");
    
    if (global.gun == 90)
        draw_text(x + 2825, (y + 900) - 150, "Z");
    
    if (global.gun == 88)
        draw_text(x + 2825, (y + 900) - 150, "X");
    
    if (global.gun == 67)
        draw_text(x + 2825, (y + 900) - 150, "C");
    
    if (global.gun == 86)
        draw_text(x + 2825, (y + 900) - 150, "V");
    
    if (global.gun == 66)
        draw_text(x + 2825, (y + 900) - 150, "B");
    
    if (global.gun == 78)
        draw_text(x + 2825, (y + 900) - 150, "N");
    
    if (global.gun == 77)
        draw_text(x + 2825, (y + 900) - 150, "M");
    
    if (global.gun == 48)
        draw_text(x + 2825, (y + 900) - 150, "0");
    
    if (global.gun == 49)
        draw_text(x + 2825, (y + 900) - 150, "1");
    
    if (global.gun == 50)
        draw_text(x + 2825, (y + 900) - 150, "2");
    
    if (global.gun == 51)
        draw_text(x + 2825, (y + 900) - 150, "3");
    
    if (global.gun == 52)
        draw_text(x + 2825, (y + 900) - 150, "4");
    
    if (global.gun == 53)
        draw_text(x + 2825, (y + 900) - 150, "5");
    
    if (global.gun == 54)
        draw_text(x + 2825, (y + 900) - 150, "6");
    
    if (global.gun == 55)
        draw_text(x + 2825, (y + 900) - 150, "7");
    
    if (global.gun == 56)
        draw_text(x + 2825, (y + 900) - 150, "8");
    
    if (global.gun == 57)
        draw_text(x + 2825, (y + 900) - 150, "9");
    
    if (global.gun == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 2825, (y + 900) - 150);
    
    if (global.gun == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 2825, (y + 900) - 150);
    
    if (global.gun == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 2825, (y + 900) - 150);
    
    if (global.gun == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 2825, (y + 900) - 150);
    
    if (global.gun == 13)
        draw_text(x + 2825, (y + 900) - 150, "ENTER");
    
    if (global.gun == 32)
        draw_text(x + 2825, (y + 900) - 150, "SPACE");
    
    if (global.gun == 16)
        draw_text(x + 2825, (y + 900) - 150, "SHIFT");
    
    if (global.gun == 160)
        draw_text(x + 2825, (y + 900) - 150, "L SHIFT");
    
    if (global.gun == 161)
        draw_text(x + 2825, (y + 900) - 150, "R SHIFT");
    
    if (global.gun == 17)
        draw_text(x + 2825, (y + 900) - 150, "CTRL");
    
    if (global.gun == 162)
        draw_text(x + 2825, (y + 900) - 150, "L CTRL");
    
    if (global.gun == 163)
        draw_text(x + 2825, (y + 900) - 150, "R CTRL");
    
    if (global.gun == 18)
        draw_text(x + 2825, (y + 900) - 150, "ALT");
    
    if (global.gun == 164)
        draw_text(x + 2825, (y + 900) - 150, "L ALT");
    
    if (global.gun == 165)
        draw_text(x + 2825, (y + 900) - 150, "R ALT");
    
    if (global.gun == 8)
        draw_text(x + 2825, (y + 900) - 150, "BACKSPACE");
    
    if (global.gun == 9)
        draw_text(x + 2825, (y + 900) - 150, "TAB");
    
    if (global.gun == 36)
        draw_text(x + 2825, (y + 900) - 150, "HOME");
    
    if (global.gun == 35)
        draw_text(x + 2825, (y + 900) - 150, "END");
    
    if (global.gun == 46)
        draw_text(x + 2825, (y + 900) - 150, "DELETE");
    
    if (global.gun == 45)
        draw_text(x + 2825, (y + 900) - 150, "INSERT");
    
    if (global.gun == 33)
        draw_text(x + 2825, (y + 900) - 150, "PAGE UP");
    
    if (global.gun == 34)
        draw_text(x + 2825, (y + 900) - 150, "PAGE DOWN");
    
    if (global.gun == 19)
        draw_text(x + 2825, (y + 900) - 150, "PAUSE");
    
    if (global.gun == 44)
        draw_text(x + 2825, (y + 900) - 150, "PRINT SCREEN");
    
    if (global.gun == 112)
        draw_text(x + 2825, (y + 900) - 150, "F1");
    
    if (global.gun == 113)
        draw_text(x + 2825, (y + 900) - 150, "F2");
    
    if (global.gun == 114)
        draw_text(x + 2825, (y + 900) - 150, "F3");
    
    if (global.gun == 115)
        draw_text(x + 2825, (y + 900) - 150, "F4");
    
    if (global.gun == 116)
        draw_text(x + 2825, (y + 900) - 150, "F5");
    
    if (global.gun == 117)
        draw_text(x + 2825, (y + 900) - 150, "F6");
    
    if (global.gun == 118)
        draw_text(x + 2825, (y + 900) - 150, "F7");
    
    if (global.gun == 119)
        draw_text(x + 2825, (y + 900) - 150, "F8");
    
    if (global.gun == 120)
        draw_text(x + 2825, (y + 900) - 150, "F9");
    
    if (global.gun == 121)
        draw_text(x + 2825, (y + 900) - 150, "F10");
    
    if (global.gun == 122)
        draw_text(x + 2825, (y + 900) - 150, "F11");
    
    if (global.gun == 123)
        draw_text(x + 2825, (y + 900) - 150, "F12");
    
    if (global.gun == 96)
        draw_text(x + 2825, (y + 900) - 150, "NP 0");
    
    if (global.gun == 97)
        draw_text(x + 2825, (y + 900) - 150, "NP 1");
    
    if (global.gun == 98)
        draw_text(x + 2825, (y + 900) - 150, "NP 2");
    
    if (global.gun == 99)
        draw_text(x + 2825, (y + 900) - 150, "NP 3");
    
    if (global.gun == 100)
        draw_text(x + 2825, (y + 900) - 150, "NP 4");
    
    if (global.gun == 101)
        draw_text(x + 2825, (y + 900) - 150, "NP 5");
    
    if (global.gun == 102)
        draw_text(x + 2825, (y + 900) - 150, "NP 6");
    
    if (global.gun == 103)
        draw_text(x + 2825, (y + 900) - 150, "NP 7");
    
    if (global.gun == 104)
        draw_text(x + 2825, (y + 900) - 150, "NP 8");
    
    if (global.gun == 105)
        draw_text(x + 2825, (y + 900) - 150, "NP 9");
    
    if (global.gun == 106)
        draw_text(x + 2825, (y + 900) - 150, "MULTIPLY");
    
    if (global.gun == 111)
        draw_text(x + 2825, (y + 900) - 150, "DIVIDE");
    
    if (global.gun == 107)
        draw_text(x + 2825, (y + 900) - 150, "ADD");
    
    if (global.gun == 109)
        draw_text(x + 2825, (y + 900) - 150, "SUBTRACT");
    
    if (global.gun == 110)
        draw_text(x + 2825, (y + 900) - 150, "DECIMAL");
    
    if (global.gun == 192)
        draw_text(x + 2825, (y + 900) - 150, "TILDE");
    
    if (global.gun == 189)
        draw_text(x + 2825, (y + 900) - 150, "MINUS");
    
    if (global.gun == 187)
        draw_text(x + 2825, (y + 900) - 150, "EQUALS");
    
    if (global.gun == 219)
        draw_text(x + 2825, (y + 900) - 150, "O BRACKET");
    
    if (global.gun == 221)
        draw_text(x + 2825, (y + 900) - 150, "C BRACKET");
    
    if (global.gun == 220)
        draw_text(x + 2825, (y + 900) - 150, "BACKSLASH");
    
    if (global.gun == 20)
        draw_text(x + 2825, (y + 900) - 150, "CAPS LOCK");
    
    if (global.gun == 186)
        draw_text(x + 2825, (y + 900) - 150, "SEMICOLON");
    
    if (global.gun == 222)
        draw_text(x + 2825, (y + 900) - 150, "APOSTROPHE");
    
    if (global.gun == 188)
        draw_text(x + 2825, (y + 900) - 150, "COMMA");
    
    if (global.gun == 190)
        draw_text(x + 2825, (y + 900) - 150, "PERIOD");
    
    if (global.gun == 191)
        draw_text(x + 2825, (y + 900) - 150, "SLASH");
    
    if (global.gun == 1)
        draw_text(x + 2825, (y + 900) - 150, "L CLICK");
    
    if (global.gun == 2)
        draw_text(x + 2825, (y + 900) - 150, "R CLICK");
    
    if (global.gun == 3)
        draw_text(x + 2825, (y + 900) - 150, "M CLICK");
    
    if (global.gun == 4)
        draw_text(x + 2825, (y + 900) - 150, "MOUSE SIDE 1");
    
    if (global.gun == 5)
        draw_text(x + 2825, (y + 900) - 150, "MOUSE SIDE 2");
    
    if (global.hook == 81)
        draw_text(x + 2825, (y + 900) - 0, "Q");
    
    if (global.hook == 87)
        draw_text(x + 2825, (y + 900) - 0, "W");
    
    if (global.hook == 69)
        draw_text(x + 2825, (y + 900) - 0, "E");
    
    if (global.hook == 82)
        draw_text(x + 2825, (y + 900) - 0, "R");
    
    if (global.hook == 84)
        draw_text(x + 2825, (y + 900) - 0, "T");
    
    if (global.hook == 89)
        draw_text(x + 2825, (y + 900) - 0, "Y");
    
    if (global.hook == 85)
        draw_text(x + 2825, (y + 900) - 0, "U");
    
    if (global.hook == 73)
        draw_text(x + 2825, (y + 900) - 0, "I");
    
    if (global.hook == 79)
        draw_text(x + 2825, (y + 900) - 0, "O");
    
    if (global.hook == 80)
        draw_text(x + 2825, (y + 900) - 0, "P");
    
    if (global.hook == 65)
        draw_text(x + 2825, (y + 900) - 0, "A");
    
    if (global.hook == 83)
        draw_text(x + 2825, (y + 900) - 0, "S");
    
    if (global.hook == 68)
        draw_text(x + 2825, (y + 900) - 0, "D");
    
    if (global.hook == 70)
        draw_text(x + 2825, (y + 900) - 0, "F");
    
    if (global.hook == 71)
        draw_text(x + 2825, (y + 900) - 0, "G");
    
    if (global.hook == 72)
        draw_text(x + 2825, (y + 900) - 0, "H");
    
    if (global.hook == 74)
        draw_text(x + 2825, (y + 900) - 0, "J");
    
    if (global.hook == 75)
        draw_text(x + 2825, (y + 900) - 0, "K");
    
    if (global.hook == 76)
        draw_text(x + 2825, (y + 900) - 0, "L");
    
    if (global.hook == 90)
        draw_text(x + 2825, (y + 900) - 0, "Z");
    
    if (global.hook == 88)
        draw_text(x + 2825, (y + 900) - 0, "X");
    
    if (global.hook == 67)
        draw_text(x + 2825, (y + 900) - 0, "C");
    
    if (global.hook == 86)
        draw_text(x + 2825, (y + 900) - 0, "V");
    
    if (global.hook == 66)
        draw_text(x + 2825, (y + 900) - 0, "B");
    
    if (global.hook == 78)
        draw_text(x + 2825, (y + 900) - 0, "N");
    
    if (global.hook == 77)
        draw_text(x + 2825, (y + 900) - 0, "M");
    
    if (global.hook == 48)
        draw_text(x + 2825, (y + 900) - 0, "0");
    
    if (global.hook == 49)
        draw_text(x + 2825, (y + 900) - 0, "1");
    
    if (global.hook == 50)
        draw_text(x + 2825, (y + 900) - 0, "2");
    
    if (global.hook == 51)
        draw_text(x + 2825, (y + 900) - 0, "3");
    
    if (global.hook == 52)
        draw_text(x + 2825, (y + 900) - 0, "4");
    
    if (global.hook == 53)
        draw_text(x + 2825, (y + 900) - 0, "5");
    
    if (global.hook == 54)
        draw_text(x + 2825, (y + 900) - 0, "6");
    
    if (global.hook == 55)
        draw_text(x + 2825, (y + 900) - 0, "7");
    
    if (global.hook == 56)
        draw_text(x + 2825, (y + 900) - 0, "8");
    
    if (global.hook == 57)
        draw_text(x + 2825, (y + 900) - 0, "9");
    
    if (global.hook == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 2825, (y + 900) - 0);
    
    if (global.hook == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 2825, (y + 900) - 0);
    
    if (global.hook == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 2825, (y + 900) - 0);
    
    if (global.hook == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 2825, (y + 900) - 0);
    
    if (global.hook == 13)
        draw_text(x + 2825, (y + 900) - 0, "ENTER");
    
    if (global.hook == 32)
        draw_text(x + 2825, (y + 900) - 0, "SPACE");
    
    if (global.hook == 16)
        draw_text(x + 2825, (y + 900) - 0, "SHIFT");
    
    if (global.hook == 160)
        draw_text(x + 2825, (y + 900) - 0, "L SHIFT");
    
    if (global.hook == 161)
        draw_text(x + 2825, (y + 900) - 0, "R SHIFT");
    
    if (global.hook == 17)
        draw_text(x + 2825, (y + 900) - 0, "CTRL");
    
    if (global.hook == 162)
        draw_text(x + 2825, (y + 900) - 0, "L CTRL");
    
    if (global.hook == 163)
        draw_text(x + 2825, (y + 900) - 0, "R CTRL");
    
    if (global.hook == 18)
        draw_text(x + 2825, (y + 900) - 0, "ALT");
    
    if (global.hook == 164)
        draw_text(x + 2825, (y + 900) - 0, "L ALT");
    
    if (global.hook == 165)
        draw_text(x + 2825, (y + 900) - 0, "R ALT");
    
    if (global.hook == 8)
        draw_text(x + 2825, (y + 900) - 0, "BACKSPACE");
    
    if (global.hook == 9)
        draw_text(x + 2825, (y + 900) - 0, "TAB");
    
    if (global.hook == 36)
        draw_text(x + 2825, (y + 900) - 0, "HOME");
    
    if (global.hook == 35)
        draw_text(x + 2825, (y + 900) - 0, "END");
    
    if (global.hook == 46)
        draw_text(x + 2825, (y + 900) - 0, "DELETE");
    
    if (global.hook == 45)
        draw_text(x + 2825, (y + 900) - 0, "INSERT");
    
    if (global.hook == 33)
        draw_text(x + 2825, (y + 900) - 0, "PAGE UP");
    
    if (global.hook == 34)
        draw_text(x + 2825, (y + 900) - 0, "PAGE DOWN");
    
    if (global.hook == 19)
        draw_text(x + 2825, (y + 900) - 0, "PAUSE");
    
    if (global.hook == 44)
        draw_text(x + 2825, (y + 900) - 0, "PRINT SCREEN");
    
    if (global.hook == 112)
        draw_text(x + 2825, (y + 900) - 0, "F1");
    
    if (global.hook == 113)
        draw_text(x + 2825, (y + 900) - 0, "F2");
    
    if (global.hook == 114)
        draw_text(x + 2825, (y + 900) - 0, "F3");
    
    if (global.hook == 115)
        draw_text(x + 2825, (y + 900) - 0, "F4");
    
    if (global.hook == 116)
        draw_text(x + 2825, (y + 900) - 0, "F5");
    
    if (global.hook == 117)
        draw_text(x + 2825, (y + 900) - 0, "F6");
    
    if (global.hook == 118)
        draw_text(x + 2825, (y + 900) - 0, "F7");
    
    if (global.hook == 119)
        draw_text(x + 2825, (y + 900) - 0, "F8");
    
    if (global.hook == 120)
        draw_text(x + 2825, (y + 900) - 0, "F9");
    
    if (global.hook == 121)
        draw_text(x + 2825, (y + 900) - 0, "F10");
    
    if (global.hook == 122)
        draw_text(x + 2825, (y + 900) - 0, "F11");
    
    if (global.hook == 123)
        draw_text(x + 2825, (y + 900) - 0, "F12");
    
    if (global.hook == 96)
        draw_text(x + 2825, (y + 900) - 0, "NP 0");
    
    if (global.hook == 97)
        draw_text(x + 2825, (y + 900) - 0, "NP 1");
    
    if (global.hook == 98)
        draw_text(x + 2825, (y + 900) - 0, "NP 2");
    
    if (global.hook == 99)
        draw_text(x + 2825, (y + 900) - 0, "NP 3");
    
    if (global.hook == 100)
        draw_text(x + 2825, (y + 900) - 0, "NP 4");
    
    if (global.hook == 101)
        draw_text(x + 2825, (y + 900) - 0, "NP 5");
    
    if (global.hook == 102)
        draw_text(x + 2825, (y + 900) - 0, "NP 6");
    
    if (global.hook == 103)
        draw_text(x + 2825, (y + 900) - 0, "NP 7");
    
    if (global.hook == 104)
        draw_text(x + 2825, (y + 900) - 0, "NP 8");
    
    if (global.hook == 105)
        draw_text(x + 2825, (y + 900) - 0, "NP 9");
    
    if (global.hook == 106)
        draw_text(x + 2825, (y + 900) - 0, "MULTIPLY");
    
    if (global.hook == 111)
        draw_text(x + 2825, (y + 900) - 0, "DIVIDE");
    
    if (global.hook == 107)
        draw_text(x + 2825, (y + 900) - 0, "ADD");
    
    if (global.hook == 109)
        draw_text(x + 2825, (y + 900) - 0, "SUBTRACT");
    
    if (global.hook == 110)
        draw_text(x + 2825, (y + 900) - 0, "DECIMAL");
    
    if (global.hook == 192)
        draw_text(x + 2825, (y + 900) - 0, "TILDE");
    
    if (global.hook == 189)
        draw_text(x + 2825, (y + 900) - 0, "MINUS");
    
    if (global.hook == 187)
        draw_text(x + 2825, (y + 900) - 0, "EQUALS");
    
    if (global.hook == 219)
        draw_text(x + 2825, (y + 900) - 0, "O BRACKET");
    
    if (global.hook == 221)
        draw_text(x + 2825, (y + 900) - 0, "C BRACKET");
    
    if (global.hook == 220)
        draw_text(x + 2825, (y + 900) - 0, "BACKSLASH");
    
    if (global.hook == 20)
        draw_text(x + 2825, (y + 900) - 0, "CAPS LOCK");
    
    if (global.hook == 186)
        draw_text(x + 2825, (y + 900) - 0, "SEMICOLON");
    
    if (global.hook == 222)
        draw_text(x + 2825, (y + 900) - 0, "APOSTROPHE");
    
    if (global.hook == 188)
        draw_text(x + 2825, (y + 900) - 0, "COMMA");
    
    if (global.hook == 190)
        draw_text(x + 2825, (y + 900) - 0, "PERIOD");
    
    if (global.hook == 191)
        draw_text(x + 2825, (y + 900) - 0, "SLASH");
    
    if (global.hook == 1)
        draw_text(x + 2825, (y + 900) - 0, "L CLICK");
    
    if (global.hook == 2)
        draw_text(x + 2825, (y + 900) - 0, "R CLICK");
    
    if (global.hook == 3)
        draw_text(x + 2825, (y + 900) - 0, "M CLICK");
    
    if (global.hook == 4)
        draw_text(x + 2825, (y + 900) - 0, "MOUSE SIDE 1");
    
    if (global.hook == 5)
        draw_text(x + 2825, (y + 900) - 0, "MOUSE SIDE 2");
    
    if (global.cannon == 81)
        draw_text(x + 2825, y + 900 + 150, "Q");
    
    if (global.cannon == 87)
        draw_text(x + 2825, y + 900 + 150, "W");
    
    if (global.cannon == 69)
        draw_text(x + 2825, y + 900 + 150, "E");
    
    if (global.cannon == 82)
        draw_text(x + 2825, y + 900 + 150, "R");
    
    if (global.cannon == 84)
        draw_text(x + 2825, y + 900 + 150, "T");
    
    if (global.cannon == 89)
        draw_text(x + 2825, y + 900 + 150, "Y");
    
    if (global.cannon == 85)
        draw_text(x + 2825, y + 900 + 150, "U");
    
    if (global.cannon == 73)
        draw_text(x + 2825, y + 900 + 150, "I");
    
    if (global.cannon == 79)
        draw_text(x + 2825, y + 900 + 150, "O");
    
    if (global.cannon == 80)
        draw_text(x + 2825, y + 900 + 150, "P");
    
    if (global.cannon == 65)
        draw_text(x + 2825, y + 900 + 150, "A");
    
    if (global.cannon == 83)
        draw_text(x + 2825, y + 900 + 150, "S");
    
    if (global.cannon == 68)
        draw_text(x + 2825, y + 900 + 150, "D");
    
    if (global.cannon == 70)
        draw_text(x + 2825, y + 900 + 150, "F");
    
    if (global.cannon == 71)
        draw_text(x + 2825, y + 900 + 150, "G");
    
    if (global.cannon == 72)
        draw_text(x + 2825, y + 900 + 150, "H");
    
    if (global.cannon == 74)
        draw_text(x + 2825, y + 900 + 150, "J");
    
    if (global.cannon == 75)
        draw_text(x + 2825, y + 900 + 150, "K");
    
    if (global.cannon == 76)
        draw_text(x + 2825, y + 900 + 150, "L");
    
    if (global.cannon == 90)
        draw_text(x + 2825, y + 900 + 150, "Z");
    
    if (global.cannon == 88)
        draw_text(x + 2825, y + 900 + 150, "X");
    
    if (global.cannon == 67)
        draw_text(x + 2825, y + 900 + 150, "C");
    
    if (global.cannon == 86)
        draw_text(x + 2825, y + 900 + 150, "V");
    
    if (global.cannon == 66)
        draw_text(x + 2825, y + 900 + 150, "B");
    
    if (global.cannon == 78)
        draw_text(x + 2825, y + 900 + 150, "N");
    
    if (global.cannon == 77)
        draw_text(x + 2825, y + 900 + 150, "M");
    
    if (global.cannon == 48)
        draw_text(x + 2825, y + 900 + 150, "0");
    
    if (global.cannon == 49)
        draw_text(x + 2825, y + 900 + 150, "1");
    
    if (global.cannon == 50)
        draw_text(x + 2825, y + 900 + 150, "2");
    
    if (global.cannon == 51)
        draw_text(x + 2825, y + 900 + 150, "3");
    
    if (global.cannon == 52)
        draw_text(x + 2825, y + 900 + 150, "4");
    
    if (global.cannon == 53)
        draw_text(x + 2825, y + 900 + 150, "5");
    
    if (global.cannon == 54)
        draw_text(x + 2825, y + 900 + 150, "6");
    
    if (global.cannon == 55)
        draw_text(x + 2825, y + 900 + 150, "7");
    
    if (global.cannon == 56)
        draw_text(x + 2825, y + 900 + 150, "8");
    
    if (global.cannon == 57)
        draw_text(x + 2825, y + 900 + 150, "9");
    
    if (global.cannon == 37)
        draw_sprite(spr_mick_ui_text_rebind_k, 2, x + 2825, y + 900 + 150);
    
    if (global.cannon == 39)
        draw_sprite(spr_mick_ui_text_rebind_k, 3, x + 2825, y + 900 + 150);
    
    if (global.cannon == 38)
        draw_sprite(spr_mick_ui_text_rebind_k, 0, x + 2825, y + 900 + 150);
    
    if (global.cannon == 40)
        draw_sprite(spr_mick_ui_text_rebind_k, 1, x + 2825, y + 900 + 150);
    
    if (global.cannon == 13)
        draw_text(x + 2825, y + 900 + 150, "ENTER");
    
    if (global.cannon == 32)
        draw_text(x + 2825, y + 900 + 150, "SPACE");
    
    if (global.cannon == 16)
        draw_text(x + 2825, y + 900 + 150, "SHIFT");
    
    if (global.cannon == 160)
        draw_text(x + 2825, y + 900 + 150, "L SHIFT");
    
    if (global.cannon == 161)
        draw_text(x + 2825, y + 900 + 150, "R SHIFT");
    
    if (global.cannon == 17)
        draw_text(x + 2825, y + 900 + 150, "CTRL");
    
    if (global.cannon == 162)
        draw_text(x + 2825, y + 900 + 150, "L CTRL");
    
    if (global.cannon == 163)
        draw_text(x + 2825, y + 900 + 150, "R CTRL");
    
    if (global.cannon == 18)
        draw_text(x + 2825, y + 900 + 150, "ALT");
    
    if (global.cannon == 164)
        draw_text(x + 2825, y + 900 + 150, "L ALT");
    
    if (global.cannon == 165)
        draw_text(x + 2825, y + 900 + 150, "R ALT");
    
    if (global.cannon == 8)
        draw_text(x + 2825, y + 900 + 150, "BACKSPACE");
    
    if (global.cannon == 9)
        draw_text(x + 2825, y + 900 + 150, "TAB");
    
    if (global.cannon == 36)
        draw_text(x + 2825, y + 900 + 150, "HOME");
    
    if (global.cannon == 35)
        draw_text(x + 2825, y + 900 + 150, "END");
    
    if (global.cannon == 46)
        draw_text(x + 2825, y + 900 + 150, "DELETE");
    
    if (global.cannon == 45)
        draw_text(x + 2825, y + 900 + 150, "INSERT");
    
    if (global.cannon == 33)
        draw_text(x + 2825, y + 900 + 150, "PAGE UP");
    
    if (global.cannon == 34)
        draw_text(x + 2825, y + 900 + 150, "PAGE DOWN");
    
    if (global.cannon == 19)
        draw_text(x + 2825, y + 900 + 150, "PAUSE");
    
    if (global.cannon == 44)
        draw_text(x + 2825, y + 900 + 150, "PRINT SCREEN");
    
    if (global.cannon == 112)
        draw_text(x + 2825, y + 900 + 150, "F1");
    
    if (global.cannon == 113)
        draw_text(x + 2825, y + 900 + 150, "F2");
    
    if (global.cannon == 114)
        draw_text(x + 2825, y + 900 + 150, "F3");
    
    if (global.cannon == 115)
        draw_text(x + 2825, y + 900 + 150, "F4");
    
    if (global.cannon == 116)
        draw_text(x + 2825, y + 900 + 150, "F5");
    
    if (global.cannon == 117)
        draw_text(x + 2825, y + 900 + 150, "F6");
    
    if (global.cannon == 118)
        draw_text(x + 2825, y + 900 + 150, "F7");
    
    if (global.cannon == 119)
        draw_text(x + 2825, y + 900 + 150, "F8");
    
    if (global.cannon == 120)
        draw_text(x + 2825, y + 900 + 150, "F9");
    
    if (global.cannon == 121)
        draw_text(x + 2825, y + 900 + 150, "F10");
    
    if (global.cannon == 122)
        draw_text(x + 2825, y + 900 + 150, "F11");
    
    if (global.cannon == 123)
        draw_text(x + 2825, y + 900 + 150, "F12");
    
    if (global.cannon == 96)
        draw_text(x + 2825, y + 900 + 150, "NP 0");
    
    if (global.cannon == 97)
        draw_text(x + 2825, y + 900 + 150, "NP 1");
    
    if (global.cannon == 98)
        draw_text(x + 2825, y + 900 + 150, "NP 2");
    
    if (global.cannon == 99)
        draw_text(x + 2825, y + 900 + 150, "NP 3");
    
    if (global.cannon == 100)
        draw_text(x + 2825, y + 900 + 150, "NP 4");
    
    if (global.cannon == 101)
        draw_text(x + 2825, y + 900 + 150, "NP 5");
    
    if (global.cannon == 102)
        draw_text(x + 2825, y + 900 + 150, "NP 6");
    
    if (global.cannon == 103)
        draw_text(x + 2825, y + 900 + 150, "NP 7");
    
    if (global.cannon == 104)
        draw_text(x + 2825, y + 900 + 150, "NP 8");
    
    if (global.cannon == 105)
        draw_text(x + 2825, y + 900 + 150, "NP 9");
    
    if (global.cannon == 106)
        draw_text(x + 2825, y + 900 + 150, "MULTIPLY");
    
    if (global.cannon == 111)
        draw_text(x + 2825, y + 900 + 150, "DIVIDE");
    
    if (global.cannon == 107)
        draw_text(x + 2825, y + 900 + 150, "ADD");
    
    if (global.cannon == 109)
        draw_text(x + 2825, y + 900 + 150, "SUBTRACT");
    
    if (global.cannon == 110)
        draw_text(x + 2825, y + 900 + 150, "DECIMAL");
    
    if (global.cannon == 192)
        draw_text(x + 2825, y + 900 + 150, "TILDE");
    
    if (global.cannon == 189)
        draw_text(x + 2825, y + 900 + 150, "MINUS");
    
    if (global.cannon == 187)
        draw_text(x + 2825, y + 900 + 150, "EQUALS");
    
    if (global.cannon == 219)
        draw_text(x + 2825, y + 900 + 150, "O BRACKET");
    
    if (global.cannon == 221)
        draw_text(x + 2825, y + 900 + 150, "C BRACKET");
    
    if (global.cannon == 220)
        draw_text(x + 2825, y + 900 + 150, "BACKSLASH");
    
    if (global.cannon == 20)
        draw_text(x + 2825, y + 900 + 150, "CAPS LOCK");
    
    if (global.cannon == 186)
        draw_text(x + 2825, y + 900 + 150, "SEMICOLON");
    
    if (global.cannon == 222)
        draw_text(x + 2825, y + 900 + 150, "APOSTROPHE");
    
    if (global.cannon == 188)
        draw_text(x + 2825, y + 900 + 150, "COMMA");
    
    if (global.cannon == 190)
        draw_text(x + 2825, y + 900 + 150, "PERIOD");
    
    if (global.cannon == 191)
        draw_text(x + 2825, y + 900 + 150, "SLASH");
    
    if (global.cannon == 1)
        draw_text(x + 2825, y + 900 + 150, "L CLICK");
    
    if (global.cannon == 2)
        draw_text(x + 2825, y + 900 + 150, "R CLICK");
    
    if (global.cannon == 3)
        draw_text(x + 2825, y + 900 + 150, "M CLICK");
    
    if (global.cannon == 4)
        draw_text(x + 2825, y + 900 + 150, "MOUSE SIDE 1");
    
    if (global.cannon == 5)
        draw_text(x + 2825, y + 900 + 150, "MOUSE SIDE 2");
}

if (tab == 4)
{
    if (global.c_action1 == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 1425, (y + 900) - 300);
    
    if (global.c_action1 == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 1425, (y + 900) - 300);
    
    if (global.c_action1 == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 1425, (y + 900) - 300);
    
    if (global.c_action1 == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 1425, (y + 900) - 300);
    
    if (global.c_action1 == 32773)
        draw_text(x + 1425, (y + 900) - 300, "LB");
    
    if (global.c_action1 == 32774)
        draw_text(x + 1425, (y + 900) - 300, "RB");
    
    if (global.c_action1 == 32775)
        draw_text(x + 1425, (y + 900) - 300, "LT");
    
    if (global.c_action1 == 32776)
        draw_text(x + 1425, (y + 900) - 300, "RT");
    
    if (global.c_action1 == 32777)
        draw_text(x + 1425, (y + 900) - 300, "SELECT");
    
    if (global.c_action1 == 32779)
        draw_text(x + 1425, (y + 900) - 300, "LS");
    
    if (global.c_action1 == 32780)
        draw_text(x + 1425, (y + 900) - 300, "RS");
    
    if (global.c_action2 == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 1425, (y + 900) - 150);
    
    if (global.c_action2 == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 1425, (y + 900) - 150);
    
    if (global.c_action2 == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 1425, (y + 900) - 150);
    
    if (global.c_action2 == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 1425, (y + 900) - 150);
    
    if (global.c_action2 == 32773)
        draw_text(x + 1425, (y + 900) - 150, "LB");
    
    if (global.c_action2 == 32774)
        draw_text(x + 1425, (y + 900) - 150, "RB");
    
    if (global.c_action2 == 32775)
        draw_text(x + 1425, (y + 900) - 150, "LT");
    
    if (global.c_action2 == 32776)
        draw_text(x + 1425, (y + 900) - 150, "RT");
    
    if (global.c_action2 == 32777)
        draw_text(x + 1425, (y + 900) - 150, "SELECT");
    
    if (global.c_action2 == 32779)
        draw_text(x + 1425, (y + 900) - 150, "LS");
    
    if (global.c_action2 == 32780)
        draw_text(x + 1425, (y + 900) - 150, "RS");
    
    if (global.c_action3 == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 1425, (y + 900) - 0);
    
    if (global.c_action3 == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 1425, (y + 900) - 0);
    
    if (global.c_action3 == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 1425, (y + 900) - 0);
    
    if (global.c_action3 == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 1425, (y + 900) - 0);
    
    if (global.c_action3 == 32773)
        draw_text(x + 1425, (y + 900) - 0, "LB");
    
    if (global.c_action3 == 32774)
        draw_text(x + 1425, (y + 900) - 0, "RB");
    
    if (global.c_action3 == 32775)
        draw_text(x + 1425, (y + 900) - 0, "LT");
    
    if (global.c_action3 == 32776)
        draw_text(x + 1425, (y + 900) - 0, "RT");
    
    if (global.c_action3 == 32777)
        draw_text(x + 1425, (y + 900) - 0, "SELECT");
    
    if (global.c_action3 == 32779)
        draw_text(x + 1425, (y + 900) - 0, "LS");
    
    if (global.c_action3 == 32780)
        draw_text(x + 1425, (y + 900) - 0, "RS");
    
    if (global.c_action4 == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 1425, y + 900 + 150);
    
    if (global.c_action4 == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 1425, y + 900 + 150);
    
    if (global.c_action4 == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 1425, y + 900 + 150);
    
    if (global.c_action4 == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 1425, y + 900 + 150);
    
    if (global.c_action4 == 32773)
        draw_text(x + 1425, y + 900 + 150, "LB");
    
    if (global.c_action4 == 32774)
        draw_text(x + 1425, y + 900 + 150, "RB");
    
    if (global.c_action4 == 32775)
        draw_text(x + 1425, y + 900 + 150, "LT");
    
    if (global.c_action4 == 32776)
        draw_text(x + 1425, y + 900 + 150, "RT");
    
    if (global.c_action4 == 32777)
        draw_text(x + 1425, y + 900 + 150, "SELECT");
    
    if (global.c_action4 == 32779)
        draw_text(x + 1425, y + 900 + 150, "LS");
    
    if (global.c_action4 == 32780)
        draw_text(x + 1425, y + 900 + 150, "RS");
    
    if (global.c_action5 == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 1425, y + 900 + 300);
    
    if (global.c_action5 == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 1425, y + 900 + 300);
    
    if (global.c_action5 == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 1425, y + 900 + 300);
    
    if (global.c_action5 == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 1425, y + 900 + 300);
    
    if (global.c_action5 == 32773)
        draw_text(x + 1425, y + 900 + 300, "LB");
    
    if (global.c_action5 == 32774)
        draw_text(x + 1425, y + 900 + 300, "RB");
    
    if (global.c_action5 == 32775)
        draw_text(x + 1425, y + 900 + 300, "LT");
    
    if (global.c_action5 == 32776)
        draw_text(x + 1425, y + 900 + 300, "RT");
    
    if (global.c_action5 == 32777)
        draw_text(x + 1425, y + 900 + 300, "SELECT");
    
    if (global.c_action5 == 32779)
        draw_text(x + 1425, y + 900 + 300, "LS");
    
    if (global.c_action5 == 32780)
        draw_text(x + 1425, y + 900 + 300, "RS");
    
    if (global.c_action6 == 32769)
    {
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 2825, (y + 900) - 300);
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 2625, (y + 900) - 150);
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 2625, y + 900 + 0);
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 2625, y + 900 + 150);
    }
    
    if (global.c_action6 == 32770)
    {
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 2825, (y + 900) - 300);
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 2625, (y + 900) - 150);
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 2625, y + 900 + 0);
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 2625, y + 900 + 150);
    }
    
    if (global.c_action6 == 32771)
    {
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 2825, (y + 900) - 300);
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 2625, (y + 900) - 150);
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 2625, y + 900 + 0);
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 2625, y + 900 + 150);
    }
    
    if (global.c_action6 == 32772)
    {
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 2825, (y + 900) - 300);
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 2625, (y + 900) - 150);
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 2625, y + 900 + 0);
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 2625, y + 900 + 150);
    }
    
    if (global.c_action6 == 32773)
    {
        draw_text(x + 2825, (y + 900) - 300, "LB");
        draw_text(x + 2625, (y + 900) - 150, "LB");
        draw_text(x + 2625, y + 900 + 0, "LB");
        draw_text(x + 2625, y + 900 + 150, "LB");
    }
    
    if (global.c_action6 == 32774)
    {
        draw_text(x + 2825, (y + 900) - 300, "RB");
        draw_text(x + 2625, (y + 900) - 150, "RB");
        draw_text(x + 2625, y + 900 + 0, "RB");
        draw_text(x + 2625, y + 900 + 150, "RB");
    }
    
    if (global.c_action6 == 32775)
    {
        draw_text(x + 2825, (y + 900) - 300, "LT");
        draw_text(x + 2625, (y + 900) - 150, "LT");
        draw_text(x + 2625, y + 900 + 0, "LT");
        draw_text(x + 2625, y + 900 + 150, "LT");
    }
    
    if (global.c_action6 == 32776)
    {
        draw_text(x + 2825, (y + 900) - 300, "RT");
        draw_text(x + 2625, (y + 900) - 150, "RT");
        draw_text(x + 2625, y + 900 + 0, "RT");
        draw_text(x + 2625, y + 900 + 150, "RT");
    }
    
    if (global.c_action6 == 32777)
    {
        draw_text(x + 2825, (y + 900) - 300, "SELECT");
        draw_text(x + 2625, (y + 900) - 150, "SELECT");
        draw_text(x + 2625, y + 900 + 0, "SELECT");
        draw_text(x + 2625, y + 900 + 150, "SELECT");
    }
    
    if (global.c_action6 == 32779)
    {
        draw_text(x + 2825, (y + 900) - 300, "LS");
        draw_text(x + 2625, (y + 900) - 150, "LS");
        draw_text(x + 2625, y + 900 + 0, "LS");
        draw_text(x + 2625, y + 900 + 150, "LS");
    }
    
    if (global.c_action6 == 32780)
    {
        draw_text(x + 2825, (y + 900) - 300, "RS");
        draw_text(x + 2625, (y + 900) - 150, "RS");
        draw_text(x + 2625, y + 900 + 0, "RS");
        draw_text(x + 2625, y + 900 + 150, "RS");
    }
    
    if (global.c_gun == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 3025, (y + 900) - 150);
    
    if (global.c_gun == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 3025, (y + 900) - 150);
    
    if (global.c_gun == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 3025, (y + 900) - 150);
    
    if (global.c_gun == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 3025, (y + 900) - 150);
    
    if (global.c_gun == 32773)
        draw_text(x + 3025, (y + 900) - 150, "LB");
    
    if (global.c_gun == 32774)
        draw_text(x + 3025, (y + 900) - 150, "RB");
    
    if (global.c_gun == 32775)
        draw_text(x + 3025, (y + 900) - 150, "LT");
    
    if (global.c_gun == 32776)
        draw_text(x + 3025, (y + 900) - 150, "RT");
    
    if (global.c_gun == 32777)
        draw_text(x + 3025, (y + 900) - 150, "SELECT");
    
    if (global.c_gun == 32779)
        draw_text(x + 3025, (y + 900) - 150, "LS");
    
    if (global.c_gun == 32780)
        draw_text(x + 3025, (y + 900) - 150, "RS");
    
    if (global.c_hook == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 3025, (y + 900) - 0);
    
    if (global.c_hook == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 3025, (y + 900) - 0);
    
    if (global.c_hook == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 3025, (y + 900) - 0);
    
    if (global.c_hook == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 3025, (y + 900) - 0);
    
    if (global.c_hook == 32773)
        draw_text(x + 3025, (y + 900) - 0, "LB");
    
    if (global.c_hook == 32774)
        draw_text(x + 3025, (y + 900) - 0, "RB");
    
    if (global.c_hook == 32775)
        draw_text(x + 3025, (y + 900) - 0, "LT");
    
    if (global.c_hook == 32776)
        draw_text(x + 3025, (y + 900) - 0, "RT");
    
    if (global.c_hook == 32777)
        draw_text(x + 3025, (y + 900) - 0, "SELECT");
    
    if (global.c_hook == 32779)
        draw_text(x + 3025, (y + 900) - 0, "LS");
    
    if (global.c_hook == 32780)
        draw_text(x + 3025, (y + 900) - 0, "RS");
    
    if (global.c_cannon == 32769)
        draw_sprite(spr_mick_ui_text_rebind_c, 0, x + 3025, y + 900 + 150);
    
    if (global.c_cannon == 32770)
        draw_sprite(spr_mick_ui_text_rebind_c, 1, x + 3025, y + 900 + 150);
    
    if (global.c_cannon == 32771)
        draw_sprite(spr_mick_ui_text_rebind_c, 2, x + 3025, y + 900 + 150);
    
    if (global.c_cannon == 32772)
        draw_sprite(spr_mick_ui_text_rebind_c, 3, x + 3025, y + 900 + 150);
    
    if (global.c_cannon == 32773)
        draw_text(x + 3025, y + 900 + 150, "LB");
    
    if (global.c_cannon == 32774)
        draw_text(x + 3025, y + 900 + 150, "RB");
    
    if (global.c_cannon == 32775)
        draw_text(x + 3025, y + 900 + 150, "LT");
    
    if (global.c_cannon == 32776)
        draw_text(x + 3025, y + 900 + 150, "RT");
    
    if (global.c_cannon == 32777)
        draw_text(x + 3025, y + 900 + 150, "SELECT");
    
    if (global.c_cannon == 32779)
        draw_text(x + 3025, y + 900 + 150, "LS");
    
    if (global.c_cannon == 32780)
        draw_text(x + 3025, y + 900 + 150, "RS");
}

if (tab == 4)
{
    draw_text(x + 2825, (y + 900) - 150, "+");
    draw_text(x + 2825, y + 900 + 0, "+");
    draw_text(x + 2825, y + 900 + 150, "+");
}

if (room == rm_mainmenu && tab < 12)
{
    if (global.demo != 2)
        global.demo = 2;
}

if (global.demo == 1)
{
    if (tab == 3)
        draw_sprite_ext(spr_mick_ui_menu_demo2x, 0, x + 2100, y + 825 + 75, 0.6, 0.6, 0, c_white, 1);
    
    if (tab == 4)
        draw_sprite_ext(spr_mick_ui_menu_demo2x, 0, x + 2200, (y + 900) - 75, 0.8, 0.8, 0, c_white, 1);
}

if (tab == 12 || tab == 13 || tab == 15)
{
    if (global.difficulty == 1)
        draw_sprite(spr_mick_ui_casual, 0, 3140, 60);
    
    if (global.difficulty == 2)
        draw_sprite(spr_mick_ui_sandbox, 0, 3140, 60);
}
