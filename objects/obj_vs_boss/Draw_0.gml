if (obj_vs_mick.time <= 0)
{
    draw_sprite(spr_mick_ui_pause_16, 0, 0 + scroll_x, 0 - scroll_y);
    draw_sprite(spr_mick_ui_pause_16, 0, (0 + scroll_x) - 3200, 0 - scroll_y);
    draw_sprite(spr_mick_ui_pause_16, 0, (0 + scroll_x) - 3200, (0 - scroll_y) + 1800);
    draw_sprite(spr_mick_ui_pause_16, 0, 0 + scroll_x, (0 - scroll_y) + 1800);
}

draw_self();
