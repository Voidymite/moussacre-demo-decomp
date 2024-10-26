draw_self();

if (move == 10 && y == -5000)
{
    draw_sprite_ext(spr_boss_os_dm, arm_1_frame, camera_get_view_x(view_camera[0]) - arm_pos, camera_get_view_y(view_camera[0]) + 750, 1, 1, 0, c_white, 1);
    draw_sprite_ext(spr_boss_os_dm, arm_2_frame, camera_get_view_x(view_camera[0]) + 3200 + arm_pos, camera_get_view_y(view_camera[0]) + 750, -1, 1, 0, c_white, 1);
}

arm_1_frame++;

if (arm_1_frame == 3 || arm_1_frame == 7)
    arm_1_frame = 0;

arm_2_frame++;

if (arm_2_frame == 3 || arm_2_frame == 7)
    arm_2_frame = 0;

if (state == 1)
{
    if (sparkle_size > 0 && int_time <= 170 && move == 1)
    {
        draw_sprite_ext(spr_particle_twinkle, 0, x + (130 * -image_xscale), y + 20, sparkle_size, sparkle_size, sparkle_angle, c_white, 1);
        
        if (!shine)
            shine = 1;
    }
    
    if (sparkle_size > 0 && int_time <= 170 && move == 6)
    {
        draw_sprite_ext(spr_particle_twinkle, 0, x + (100 * image_xscale), y - 100, sparkle_size, sparkle_size, sparkle_angle, c_white, 1);
        
        if (!shine)
        {
            shine = 1;
            audio_play_sound(snd_object_sawdrone_attack_3, 1, 0);
        }
    }
    
    if (sparkle_size > 0 && int_time <= 1599 && move == 7)
    {
        draw_sprite_ext(spr_particle_twinkle, 0, x + (100 * image_xscale), y - 100, sparkle_size, sparkle_size, sparkle_angle, c_white, 1);
        
        if (!shine)
        {
            shine = 1;
            audio_play_sound(snd_object_sawdrone_attack_3, 1, 0);
        }
    }
    
    if (sparkle_size > 0 && int_time <= 595 && move == 8)
    {
        draw_sprite_ext(spr_particle_twinkle, 0, x, y - 100, sparkle_size, sparkle_size, sparkle_angle, c_white, 1);
        
        if (!shine)
        {
            shine = 1;
            audio_play_sound(snd_object_sawdrone_attack_3, 1, 0);
        }
    }
}
