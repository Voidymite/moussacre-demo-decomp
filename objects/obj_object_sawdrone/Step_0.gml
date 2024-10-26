if (point_distance(x, y, obj_mick.x, obj_mick.y) < 1200 && time > 1)
    time--;

if (point_distance(x, y, obj_mick.x, obj_mick.y) >= 1000)
    time--;

if (type == 6)
{
    if (time > 0 && time < 60)
    {
        sparkle_size += sparkle_grow;
        sparkle_grow -= 0.01;
        sparkle_angle += 8;
    }
}

if (time == 0)
{
    time = 15;
    
    if (atk > 0 && ult_leave_time > 0)
    {
        atk--;
        
        if (type <= 5)
        {
            instance_create_depth(x, y + 100, depth - 1, obj_hitbox_sawdrone_attack_1);
            audio_play_sound(snd_object_sawdrone_attack_1, 1, 0);
        }
        else
        {
            instance_create_depth(x, y + 100, depth - 0.5, obj_particle_gunshot);
            instance_create_depth(x, y + 100, depth - 1, obj_hitbox_sawdrone_attack_2);
            audio_play_sound(snd_object_sawdrone_attack_2, 1, 0);
            audio_play_sound(snd_object_sawdrone_attack_2, 1, 0);
        }
    }
}

if (atk == 0)
    sprite_index = spr_object_sawdrone_shot;

if (leave_time > 0)
{
    if (atk == 0)
        leave_time--;
}

if (!dead)
{
    if (leave_time == 0 || ult_leave_time == 0)
    {
        x += lengthdir_x(spd, dir);
        y += lengthdir_y(spd, dir);
        size += 0.02;
        size += 0.02;
        spd += 3;
        
        if (image_xscale >= 8)
            instance_destroy();
        
        depth--;
    }
    
    if (leave_time > 0 && ult_leave_time > 0)
    {
        x += ((place_x - x) * 0.3);
        y += ((place_y - y) * 0.3);
        ult_leave_time--;
    }
    
    if (x < obj_mick.x)
        image_xscale = -1 * size;
    else
        image_xscale = 1 * size;
    
    image_yscale = size;
    
    if (place == 0)
    {
        place_x = camera_get_view_x(view_camera[0]) + 350 + var_x;
        place_y = camera_get_view_y(view_camera[0]) + 350 + var_y;
    }
    
    if (place == 1)
    {
        place_x = ((camera_get_view_x(view_camera[0]) + 3200) - 350) + var_x;
        place_y = camera_get_view_y(view_camera[0]) + 350 + var_y;
    }
    
    if (place == 2)
    {
        place_x = ((camera_get_view_x(view_camera[0]) + 3200) - 350) + var_x;
        place_y = ((camera_get_view_y(view_camera[0]) + 1800) - 350) + var_y;
    }
    
    if (place == 3)
    {
        place_x = camera_get_view_x(view_camera[0]) + 350 + var_x;
        place_y = ((camera_get_view_y(view_camera[0]) + 1800) - 350) + var_y;
    }
}
else
{
    if (atk > 0)
    {
        if (type < 5)
            sprite_index = spr_object_sawdrone_idle_dead;
        else
            sprite_index = spr_object_sawdrone_gold_dead;
    }
    else
    {
        sprite_index = spr_object_sawdrone_shot_dead;
    }
    
    fall_speed += 0.2;
    y += fall_speed;
    time = 99;
    
    if (fall_speed >= -30)
        gamepad_set_vibration(0, 0, 0);
    
    if (fall_speed >= 100)
        instance_destroy();
    
    image_angle += rot_spd;
    smoke--;
    
    if (smoke == 0)
    {
        if (global.particles)
            smoke = 10;
        else
            smoke = 40;
        
        instance_create_depth(x, y, depth - 1, obj_particle_smoke_4).size = image_xscale;
    }
}
