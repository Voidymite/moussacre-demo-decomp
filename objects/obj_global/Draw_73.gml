draw_set_halign(fa_left);
draw_set_font(font);
draw_set_color(c_white);

if (room == rm_vs || room == rm_finisher || room == rm_casual)
{
    if (room == rm_finisher)
    {
        if (obj_finisher_mick.black)
            sub = 10000;
        else
            sub = 0;
    }
    else
    {
        sub = 10000;
    }
}
else
{
    sub = 0;
}

if (!instance_exists(obj_mick_ui_pause_new) && room != rm_wow && room != rm_mainmenu && room != rm_nickdonnoli && room != rm_casual && !instance_exists(obj_transition_whitefade_1))
{
    if (global.difficulty != 2)
    {
        if (global.score < 0)
            global.score = 0;
        
        draw_text(camera_get_view_x(view_camera[0]) + 50, (camera_get_view_y(view_camera[0]) + 1750) - sub, "TIME: " + string(global.hour) + ":" + string(global.minute0) + string(global.minute) + ":" + string(global.second0) + string(global.second) + "." + string(global.dsecond) + string(global.csecond));
        draw_text(camera_get_view_x(view_camera[0]) + 1050, (camera_get_view_y(view_camera[0]) + 1750) - sub, "SCORE: " + string(global.score));
    }
}
