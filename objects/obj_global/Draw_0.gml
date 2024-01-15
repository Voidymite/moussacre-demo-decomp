draw_set_halign(fa_left)
draw_set_font(font)
draw_set_color(c_white)
if ((!instance_exists(obj_mick_ui_pause)) && room != rm_wow && room != rm_mainmenu && room != rm_nickdonnoli && (!instance_exists(obj_transition_whitefade_1)))
{
    draw_text((camera_get_view_x(view_camera[0]) + 50), (camera_get_view_y(view_camera[0]) + 1750), (((((((((("TIME: " + string(global.hour)) + ":") + string(global.minute0)) + string(global.minute)) + ":") + string(global.second0)) + string(global.second)) + ".") + string(global.dsecond)) + string(global.csecond)))
    draw_text((camera_get_view_x(view_camera[0]) + 1050), (camera_get_view_y(view_camera[0]) + 1750), ("SCORE: " + string(global.score)))
}
