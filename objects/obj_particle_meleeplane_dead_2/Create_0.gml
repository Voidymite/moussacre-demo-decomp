hspd = irandom_range(52, 60);
vspd = irandom_range(-30, -10);
time = 300;
dust_time = 1;
image_speed = 0;

if (place_meeting(x, y, obj_hitbox_walt_attack_1) || place_meeting(x, y, obj_hitbox_walt_attack_2))
    sprite_index = spr_enemy_batoncop_dead_6;
