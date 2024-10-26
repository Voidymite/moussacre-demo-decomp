if (phase == 1)
{
    white -= 0.1;
    draw_sprite_ext(spr_white, 0, 0, 0, 3200, 1800, 0, c_white, white);
}

if (timer_whole == 500)
    depth = old_depth;
