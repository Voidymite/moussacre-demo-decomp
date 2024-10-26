draw_self();
draw_set_halign(fa_center);
draw_set_font(font);
draw_set_color(c_white);
draw_sprite_ext(spr_black, 0, 0, 0, 3200, 180, 0, c_white, 1);
draw_sprite_ext(spr_black, 0, 0, 1800, 3200, -180, 0, c_white, 1);

if (time <= 0)
{
    draw_text(pos, 100, "MOUSETRAP");
    draw_text(3200 - pos, 100, "OSBORG");
    draw_sprite_ext(spr_white, 0, 0, 0, 3200, 1800, 0, c_white, 1 + (time * 0.1));
}

if (time < 30)
{
    draw_sprite_ext(spr_vs, 0, 1600, 900, size, size, 0, c_white, 1);
    
    if (time > 0)
        size -= 0.25;
}
