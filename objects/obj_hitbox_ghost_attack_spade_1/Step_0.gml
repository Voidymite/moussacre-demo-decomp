time--;
dust_time--;
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
image_angle = direction - 90;

if (dust_time == 0)
{
    dust_time = 4;
    instance_create_depth(x, y, -1, obj_particle_dust_small);
}

if (place_meeting(x, y, obj_wall))
{
    scr_screenshake();
    instance_create_depth(x, y, -1, obj_particle_spade_1_temp);
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 0;
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 45;
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 90;
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 135;
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 180;
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 225;
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 270;
    instance_create_depth(x, y, -1, obj_hitbox_ghost_attack_spade_2).direction = 315;
    instance_destroy();
}
