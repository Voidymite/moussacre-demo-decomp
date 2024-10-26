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

if (sprite_index == spr_enemy_batoncop_dead_5)
{
    if (place_meeting(x, y, obj_hitbox_walt_attack_1) || place_meeting(x, y, obj_hitbox_walt_attack_2))
        sprite_index = spr_enemy_batoncop_dead_6;
}

if (sprite_index == spr_enemy_guncop_dead_5)
{
    if (place_meeting(x, y, obj_hitbox_walt_attack_1) || place_meeting(x, y, obj_hitbox_walt_attack_2))
        sprite_index = spr_enemy_guncop_dead_6;
}
