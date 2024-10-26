draw_set_halign(fa_right);
draw_set_font(font);
draw_set_color(c_white);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
draw_text(x + 10, y + 170, string(global.color));
