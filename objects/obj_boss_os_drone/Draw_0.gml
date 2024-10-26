draw_self();

if (atk > 20 && atk <= 60)
    draw_sprite_ext(spr_particle_charge, 0, x + (130 * -image_xscale), y + 20, atk - 20, atk - 20, 0, c_white, 1);
