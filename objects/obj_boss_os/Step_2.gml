if (state == 1)
{
    if (move == 2 && int_time <= 300 && int_time > 45)
        instance_create_depth(x, y + 20, 0, obj_hitbox_os_attack_1);
    
    if (move == 3 && int_time <= 469 && int_time > 20)
        instance_create_depth(x, y, 0, obj_hitbox_os_attack_1);
    
    if (move == 6 && int_time <= 29 && int_time > 20)
        instance_create_depth(x, y, 0, obj_hitbox_os_attack_8);
    
    if (move == 7 && int_time <= 1579)
        instance_create_depth(x, y, 0, obj_hitbox_os_attack_9);
    
    if (move == 8 && int_time <= 569 && int_time > 20)
        instance_create_depth(x, y + 200, 0, obj_hitbox_os_attack_14);
}
