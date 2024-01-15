x += ((obj_mick_ui_pause_select.x - x) * 0.15)
y += ((obj_mick_ui_pause_select.y - y) * 0.15)
if (sprite_index == spr_mick_ui_select_active)
{
    if (image_index > 4)
        sprite_index = spr_mick_ui_select
}
