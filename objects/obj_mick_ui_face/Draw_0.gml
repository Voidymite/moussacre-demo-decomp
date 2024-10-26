if (global.demo < 2)
    x_min = 40;
else
    x_min = 0;

if (global.difficulty != 2)
{
    draw_sprite_ext(rank, 0, (x + 560) - x_min, y, 1, size, 0, c_white, image_alpha);
    draw_sprite_ext(rank_meter_color, rank_meter_fill, (x + 560) - x_min, y, 1, 1, 0, c_white, image_alpha);
    
    if (global.level != 3)
    {
        if (global.damaged <= 2)
            draw_sprite_ext(spr_mick_ui_rank_hits, global.damaged, (x + 560) - x_min, y, 1, 1, 0, c_white, image_alpha);
        else
            draw_sprite_ext(spr_mick_ui_rank_hits, 3, (x + 560) - x_min, y, 1, 1, 0, c_white, image_alpha);
    }
    else if (global.damaged == 0)
    {
        draw_sprite_ext(spr_mick_ui_rank_hits_boss, 0, (x + 560) - x_min, y, 1, 1, 0, c_white, image_alpha);
    }
    else
    {
        draw_sprite_ext(spr_mick_ui_rank_hits_boss, 1, (x + 560) - x_min, y, 1, 1, 0, c_white, image_alpha);
    }
}

if (global.demo >= 2)
{
    if (global.difficulty != 2)
        draw_sprite_ext(spr_mick_ui_special, global.sp, x + 420, y + 150, 1, 1, 0, c_white, image_alpha);
    else
        draw_sprite_ext(spr_mick_ui_special, 9, x + 420, y + 150, 1, 1, 0, c_white, image_alpha);
}

if (global.difficulty != 2)
    draw_sprite_ext(spr_mick_ui_health, global.hp, x + 300, y + 50, 1, 1, 0, c_white, image_alpha);
else
    draw_sprite_ext(spr_mick_ui_health, 14, x + 300, y + 50, 1, 1, 0, c_white, image_alpha);

draw_self();

if (global.hp >= 3)
    sprite_index = spr_mick_ui_neutral;

if (global.hp == 2)
    sprite_index = spr_mick_ui_hurt;

if (global.hp == 1)
    sprite_index = spr_mick_ui_dying;

if (global.hp <= 0)
    sprite_index = spr_mick_ui_dead;

if (image_yscale > 1)
    image_yscale -= 0.1;

if (image_yscale <= 1)
    image_yscale = 1;

if (size > 1)
    size -= 0.1;

if (size <= 0)
    size = 1;

if (obj_mick.draw_ready)
{
}

if (global.difficulty == 1)
    draw_sprite_ext(spr_mick_ui_casual, 0, camera_get_view_x(view_camera[0]) + 60, (camera_get_view_y(view_camera[0]) + 60) - obj_global.sub, 1, 1, 0, c_white, image_alpha);

if (global.difficulty == 2)
    draw_sprite_ext(spr_mick_ui_sandbox, 0, camera_get_view_x(view_camera[0]) + 60, (camera_get_view_y(view_camera[0]) + 60) - obj_global.sub, 1, 1, 0, c_white, image_alpha);

if (obj_mick.x <= (camera_get_view_x(view_camera[0]) + 1000) && obj_mick.y <= (camera_get_view_y(view_camera[0]) + 450) && obj_mick.x > -1000)
{
    if (image_alpha > 0.2)
        image_alpha -= 0.1;
}
else if (image_alpha < 1)
{
    image_alpha += 0.1;
}

if (global.badge == 1)
    draw_sprite_ext(spr_mick_ui_badge_triplejump_small, 0, x - 100, y + 190, 1, 1, 0, c_white, image_alpha);

if (global.badge == 2)
    draw_sprite_ext(spr_mick_ui_badge_counterattack_small, 0, x - 100, y + 190, 1, 1, 0, c_white, image_alpha);

if (global.badge == 3)
    draw_sprite_ext(spr_mick_ui_badge_blademerang_small, 0, x - 100, y + 190, 1, 1, 0, c_white, image_alpha);
