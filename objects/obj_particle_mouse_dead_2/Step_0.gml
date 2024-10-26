if (color == 0)
    sprite_index = spr_enemy_mouse_brown_dead_4;

if (color == 1)
    sprite_index = spr_enemy_mouse_white_dead_4;

if (color == 2)
    sprite_index = spr_enemy_mouse_gray_dead_4;

if (time == 0)
    instance_destroy();

dust_time--;

if (dust_time == 0)
{
    dust_time = 4;
    instance_create_depth(x, y + 100, 10, obj_particle_dust_big);
}

x += hspd;
y += vspd;
vspd++;
time--;
