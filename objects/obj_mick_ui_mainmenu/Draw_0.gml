if (tab == 0)
    draw_sprite_ext(spr_background_mainmenu, 0, 1600, 900, 2.2, 2.2, tilt, c_white, 1);

if (tab == 0)
{
    if (frame == 0)
        draw_sprite(spr_mick_ui_mainmenu, 1, 0, 0);
    
    if (frame == 1)
        draw_sprite(spr_mick_ui_mainmenu, 2, 0, 0);
    
    if (frame == 2)
        draw_sprite(spr_mick_ui_mainmenu, 0, 0, 0);
}

if (tab == 0)
    draw_sprite(spr_logo_mainmenu, 0, 0, 0);

draw_set_font(font_small);
draw_set_halign(fa_right);
draw_text(3150, 1750, "© 2024 Nicola Donnoli  v0.1.1");
draw_set_halign(fa_left);
draw_text(x + 300, (y + 1350 + 450) - 200, "BEST TIME: " + string(global.rhour) + ":" + string(global.minute0) + string(global.rminute) + ":" + string(global.second0) + string(global.rsecond) + "." + string(global.rdsecond) + string(global.rcsecond));
draw_text(x + 300, (y + 1350 + 550) - 200, "BEST SCORE: " + string(global.rscore));

if (tab > 0)
{
    draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, y - scroll_y);
    draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, y - scroll_y);
    draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, (y - scroll_y) + 1800);
    draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, (y - scroll_y) + 1800);
}

if (tab == 0)
{
}

if (tab == 1)
    draw_sprite(spr_mick_ui_pause_6, 0, x, y);

if (tab == 3)
{
    if (volume >= 0 && volume <= 5)
        draw_sprite(spr_mick_ui_pause_5, 0, x, y);
    
    if (volume >= 6 && volume <= 10)
        draw_sprite(spr_mick_ui_pause_3, 0, x, y);
    
    if (volume >= 11 && volume <= 15)
        draw_sprite(spr_mick_ui_pause_2, 0, x, y);
}

draw_set_halign(fa_center);
draw_set_font(font);
draw_set_color(c_white);

if (row == 0)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0)
    draw_text(x + 875 + 100, (y + 1350) - 450 - 200, "PLAY");

if (tab == 1)
    draw_text(x + 1675, (y + 900) - 600, "CONTROLS");

if (tab == 3)
    draw_sprite_ext(spr_mick_ui_audio, volume, x + 1600, (y + 900) - 450, 1, 1, rot, c_white, 1);

if (row == 1)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0)
    draw_text(x + 875 + 100, (y + 1350) - 150 - 200, "SETTINGS");

if (tab == 1)
{
    if (rumble > 0)
        gamepad_set_vibration(0, 1, 1);
    else
        gamepad_set_vibration(0, 0, 0);
    
    if (global.rumble)
        draw_text(x + 1675, (y + 900) - 360, "RUMBLE ON");
    else
        draw_text(x + 1675, (y + 900) - 360, "RUMBLE OFF");
}

if (tab == 3)
    draw_text(x + 1675, (y + 900) - 150, "INCREASE");

if (row == 2)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0)
    draw_text(x + 875 + 100, (y + 1350 + 150) - 200, "QUIT");

if (tab == 1)
    draw_text(x + 1675, (y + 900) - 120, "AUDIO");

if (tab == 3)
    draw_text(x + 1675, y + 900 + 150, "DECREASE");

if (row == 3)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 0)
    draw_text(x + 1675, y + 900 + 450, "");

if (tab == 1)
{
    if (!window_get_fullscreen())
        draw_text(x + 1675, y + 900 + 120, "WINDOWED");
    else
        draw_text(x + 1675, y + 900 + 120, "FULLSCREEN");
}

if (tab == 3)
    draw_text(x + 1675, y + 900 + 450, "GO BACK");

if (row == 4)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 1)
{
    if (global.particles)
        draw_text(x + 1675, y + 900 + 360, "PARTICLES HIGH");
    else
        draw_text(x + 1675, y + 900 + 360, "PARTICLES LOW");
}

if (row == 5)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

if (tab == 1)
    draw_text(x + 1675, y + 900 + 600, "GO BACK");

if (tab == 2)
{
    with (obj_mick_ui_pause_select)
    {
        x = -500;
        y = -500;
    }
    
    if (row == 0)
        draw_sprite(spr_mick_ui_controls_1, 0, x, y);
    
    if (row == 1)
        draw_sprite(spr_mick_ui_controls_2, 0, x, y);
}
