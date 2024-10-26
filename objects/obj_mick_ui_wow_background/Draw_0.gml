draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, y - scroll_y);
draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, y - scroll_y);
draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x) - 3200, (y - scroll_y) + 1800);
draw_sprite(spr_mick_ui_pause_4, 0, x + scroll_x, (y - scroll_y) + 1800);

if (room == rm_wow)
{
    draw_sprite_ext(spr_white, 0, 0, 0, 3200, 1800, 0, c_white, flash);
}
else
{
}
