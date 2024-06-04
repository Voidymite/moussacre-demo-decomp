draw_self()
if (sparkle_size > 0 && time > 0 && time < 60 && type == 6 && (!dead))
{
    draw_sprite_ext(spr_particle_twinkle, 0, x, (y + 100), sparkle_size, sparkle_size, sparkle_angle, c_white, 1)
    if (!shine)
    {
        shine = 1
        audio_play_sound(snd_object_sawdrone_attack_3, 1, 0)
    }
}
