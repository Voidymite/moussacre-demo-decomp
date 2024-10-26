image_xscale = obj_mick.image_xscale;
hspd = irandom_range(-20, -10);
vspd = irandom_range(-30, -10);

if (y >= room_height)
    vspd = 30;

time = 300;
dust_time = 1;
other_time = 45;
image_speed = 0;

if (place_meeting(x, y, obj_hitbox_walt_attack_1) || place_meeting(x, y, obj_hitbox_walt_attack_2))
{
    if (!place_meeting(x, y, obj_wall_shield))
    {
        audio_play_sound(snd_object_walt_ice_3, 1, 0);
        hspd = irandom_range(-20, 20);
        vspd = irandom_range(-30, -10);
        sprite_index = spr_mick_dead_2;
    }
}

if (place_meeting(x, y, obj_object_mothermouse))
{
    if (!place_meeting(x, y, obj_wall_shield))
    {
        audio_play_sound(snd_object_walt_ice_3, 1, 0);
        y = -100000;
        
        with (obj_object_mothermouse)
        {
            if (color == 0)
                sprite_index = spr_object_mothermouse_brown_eat;
            
            if (color == 1)
                sprite_index = spr_object_mothermouse_gray_eat;
            
            if (color == 2)
                sprite_index = spr_object_mothermouse_white_eat;
        }
    }
}

if (place_meeting(x, y, obj_object_saw_horizontal) || place_meeting(x, y, obj_object_saw_vertical) || place_meeting(x, y, obj_object_saw_giant) || place_meeting(x, y, obj_hitbox_sawdrone_attack_1) || place_meeting(x, y, obj_hitbox_sawdrone_attack_2) || place_meeting(x, y, obj_hitbox_os_attack_9) || place_meeting(x, y, obj_hitbox_os_attack_11) || place_meeting(x, y, obj_hitbox_os_attack_14))
{
    audio_play_sound(snd_mick_kill_3, 1, 0);
    audio_play_sound(snd_mick_kill_3, 1, 0);
    instance_create_depth(x, y, -10, obj_particle_mick_dead_2);
    instance_create_depth(x, y, -10, obj_particle_mick_dead_3);
    image_alpha = 0;
}

if (place_meeting(x, y, obj_hitbox_os_attack_8))
{
    audio_play_sound(snd_mick_kill_3, 1, 0);
    audio_play_sound(snd_mick_kill_3, 1, 0);
    instance_create_depth(x, y, -10, obj_particle_mick_dead_4);
    instance_create_depth(x, y, -10, obj_particle_mick_dead_5);
    image_alpha = 0;
}

if (place_meeting(x, y, obj_hitbox_os_dash))
{
    audio_play_sound(snd_mick_death_2, 1, 0);
    audio_play_sound(snd_mick_death_2, 1, 0);
    vspd = -30;
    sprite_index = spr_mick_dead_7;
}
