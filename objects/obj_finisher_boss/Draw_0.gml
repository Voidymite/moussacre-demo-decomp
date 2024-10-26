draw_sprite(spr_mick_ui_pause_16, 0, 0 + scroll_x, 0 - scroll_y);
draw_sprite(spr_mick_ui_pause_16, 0, (0 + scroll_x) - 3200, 0 - scroll_y);
draw_sprite(spr_mick_ui_pause_16, 0, (0 + scroll_x) - 3200, (0 - scroll_y) + 1800);
draw_sprite(spr_mick_ui_pause_16, 0, 0 + scroll_x, (0 - scroll_y) + 1800);
scroll_x += 8;
scroll_y += 4.5;

if (scroll_x == 3200)
    scroll_x -= 3200;

if (scroll_y == 1800)
    scroll_y -= 1800;

if (obj_finisher_mick.phase == 4 && obj_finisher_mick.move > 0)
    draw_sprite(spr_background_blood_wall_gray, 0, 0, 0);

draw_self();

if (obj_finisher_mick.phase == 4)
{
    if (obj_finisher_mick.move == 1)
        draw_sprite(spr_background_blood_splash_gray_1, 0, -100 + irandom_range(-x_shake, x_shake), 0 + irandom_range(-y_shake, y_shake));
    
    if (obj_finisher_mick.move == 2)
        draw_sprite(spr_background_blood_splash_gray_2, 0, -100 + irandom_range(-x_shake, x_shake), 0 + irandom_range(-y_shake, -y_shake * 2));
}
