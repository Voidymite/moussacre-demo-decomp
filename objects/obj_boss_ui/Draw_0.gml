draw_self();

if (room == rm_os_1)
    draw_sprite_ext(spr_boss_health_gray, obj_boss_os.hp, obj_boss_ui.x - 192, obj_boss_ui.y + 100, -1, 1, 0, c_white, image_alpha);
else if (room == rm_test_12)
    draw_sprite_ext(spr_boss_health_indigo, 72, obj_boss_ui.x - 192, obj_boss_ui.y + 100, -1, 1, 0, c_white, image_alpha);
else if (room == rm_test_6)
    draw_sprite_ext(spr_boss_health_green, 44, obj_boss_ui.x - 192, obj_boss_ui.y + 100, -1, 1, 0, c_white, image_alpha);

if (image_yscale > 1)
    image_yscale -= 0.1;
else if (image_yscale <= 1)
    image_yscale = 1;

if (obj_mick.x >= ((camera_get_view_x(view_camera[0]) + 3200) - 761.9047619047619) && obj_mick.y >= ((camera_get_view_y(view_camera[0]) + 1800) - 600))
{
    if (image_alpha > 0.2)
        image_alpha -= 0.1;
}
else if (image_alpha < 1)
    image_alpha += 0.1;
