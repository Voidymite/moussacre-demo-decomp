draw_self();

if (phase == 4)
{
    if (obj_finisher_mick.move == 3)
        draw_sprite(spr_background_blood_splash_gray_3, 0, -100 + irandom_range(-x_shake, x_shake), 0 + irandom_range(y_shake, y_shake * 2));
    
    if (shake > 59)
    {
        draw_sprite_ext(spr_black, 0, -1000, -1000, 10000, 10000, 0, c_white, 1);
        black = 1;
    }
    else
    {
        black = 0;
    }
    
    if (move == 0)
    {
        if (shake <= 119 && shake > 99)
            draw_sprite_ext(spr_finisher_dots, 0, 1600, 900, 0.5, 0.5, 0, c_white, 1);
        
        if (shake <= 99 && shake > 79)
            draw_sprite_ext(spr_finisher_dots, 1, 1600, 900, 0.5, 0.5, 0, c_white, 1);
        
        if (shake <= 79 && shake > 59)
            draw_sprite_ext(spr_finisher_dots, 2, 1600, 900, 0.5, 0.5, 0, c_white, 1);
    }
    
    if (shake == 119)
    {
        if (timer_whole < 5000)
        {
            audio_play_sound(snd_boss_finisher_slash_4, 1, 0);
            audio_stop_sound(snd_boss_finisher_spin_1);
            audio_stop_sound(snd_boss_finisher_jump_1);
            audio_stop_sound(snd_boss_finisher_dive_2);
        }
        
        if (move == 2 || move == 3)
            instance_create_depth(1600, 900, -50, obj_particle_slash_vertical);
        
        if (move == 1)
            instance_create_depth(1600, 900, -50, obj_particle_slash_horizontal).image_xscale = 6;
    }
}

if (phase == 1)
{
    white -= 0.1;
    draw_sprite_ext(spr_white, 0, 0, 0, 3200, 1800, 0, c_white, white);
}

if (shake <= 0)
{
    draw_sprite_ext(spr_finisher_dead_os_1, 0, dead_x, dead_y, size_1, size_1, 0, c_white, 1);
    
    if (size_1 > 1)
        size_1--;
}

if (shake == -15)
{
    audio_play_sound(snd_boss_finisher_pound_1, 1, 0);
    audio_play_sound(snd_boss_finisher_pound_1, 1, 0);
    
    if (global.rumble)
        gamepad_set_vibration(0, 0.5, 0.5);
}

if (shake == -30)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0, 0);
}

if (shake <= -30)
{
    draw_sprite_ext(spr_finisher_dead_os_2, 0, dead_x, dead_y, size_2, size_2, 0, c_white, 1);
    
    if (size_2 > 1)
        size_2--;
}

if (shake == -45)
{
    audio_play_sound(snd_boss_finisher_pound_2, 1, 0);
    audio_play_sound(snd_boss_finisher_pound_2, 1, 0);
    
    if (global.rumble)
        gamepad_set_vibration(0, 0.5, 0.5);
}

if (shake == -60)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0, 0);
}

if (shake <= -60)
{
    draw_sprite_ext(spr_finisher_dead_os_3, 0, dead_x, dead_y, size_3, size_3, 0, c_white, 1);
    
    if (size_3 > 1)
        size_3--;
}

if (shake == -75)
{
    audio_play_sound(snd_boss_finisher_pound_3, 1, 0);
    audio_play_sound(snd_boss_finisher_pound_3, 1, 0);
    
    if (global.rumble)
        gamepad_set_vibration(0, 0.5, 0.5);
    
    x_shake = 20;
    y_shake = 20;
    obj_finisher_boss.x_shake = 20;
    obj_finisher_boss.y_shake = 20;
}

if (shake == -120)
{
    if (global.rumble)
        gamepad_set_vibration(0, 0, 0);
}

if (shake == -240)
    audio_play_sound(snd_boss_finisher_what_1, 1, 0);

if (shake <= -240)
    draw_sprite(spr_finisher_dead_os_4, 0, dead_x, dead_y);
