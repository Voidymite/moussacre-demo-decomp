if (land_time == 3)
    draw_sprite_ext(spr_mick_land_slow, 0, x, y, dir, 1, 0, c_white, 1);

if (land_time == 2)
    draw_sprite_ext(spr_mick_land_slow, 1, x, y, dir, 1, 0, c_white, 1);

if (land_time == 1)
    draw_sprite_ext(spr_mick_land_slow, 2, x, y, dir, 1, 0, c_white, 1);

if (land_time == 0)
    draw_self();
