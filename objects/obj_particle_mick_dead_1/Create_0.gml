hspd = irandom_range(-20, -10)
vspd = irandom_range(-30, -10)
if (y >= room_height)
    vspd = 30
time = 300
dust_time = 1
image_speed = 0
if (place_meeting(x, y, obj_hitbox_walt_attack_1) || place_meeting(x, y, obj_hitbox_walt_attack_2))
{
    if (!(place_meeting(x, y, obj_wall_shield)))
    {
        audio_play_sound(snd_object_walt_ice_3, 1, false)
        hspd = irandom_range(-20, 20)
        vspd = irandom_range(-30, -10)
        sprite_index = spr_mick_dead_2
    }
    else
        audio_play_sound(snd_enemy_guncop_bullet_3, 1, false)
}
else
    audio_play_sound(snd_enemy_guncop_bullet_3, 1, false)
