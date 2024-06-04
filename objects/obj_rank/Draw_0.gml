draw_self()
if (time <= -1)
{
    if (sprite_index == spr_mick_ui_rank_f)
        draw_sprite_ext(spr_mick_ui_rank_f_text, 0, x, y, size, size, 0, c_white, 1)
    if (sprite_index == spr_mick_ui_rank_d)
        draw_sprite_ext(spr_mick_ui_rank_d_text, 0, x, y, size, size, 0, c_white, 1)
    if (sprite_index == spr_mick_ui_rank_c)
        draw_sprite_ext(spr_mick_ui_rank_c_text, 0, x, y, size, size, 0, c_white, 1)
    if (sprite_index == spr_mick_ui_rank_b)
        draw_sprite_ext(spr_mick_ui_rank_b_text, 0, x, y, size, size, 0, c_white, 1)
    if (sprite_index == spr_mick_ui_rank_a)
        draw_sprite_ext(spr_mick_ui_rank_a_text, 0, x, y, size, size, 0, c_white, 1)
    if (sprite_index == spr_mick_ui_rank_x)
        draw_sprite_ext(spr_mick_ui_rank_x_text, 0, x, y, size, size, 0, c_white, 1)
    if (phase == 0)
    {
        size += 0.1
        if (size == 1.1)
        {
            phase = 1
            if (rank == 1)
            {
                sound = irandom_range(0, 4)
                if (sound == 0)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_f_voice_1, 1, 0)
                }
                if (sound == 1)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_f_voice_2, 1, 0)
                }
                if (sound == 2)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_f_voice_3, 1, 0)
                }
                if (sound == 3)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_f_voice_4, 1, 0)
                }
                if (sound == 4)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_f_voice_5, 1, 0)
                }
            }
            if (rank == 2)
                audio_play_sound(snd_menu_rank_d, 1, 0)
            if (rank == 3)
                audio_play_sound(snd_menu_rank_c, 1, 0)
            if (rank == 4)
                audio_play_sound(snd_menu_rank_b, 1, 0)
            if (rank == 5)
                audio_play_sound(snd_menu_rank_a, 1, 0)
            if (rank == 6)
            {
                sound = irandom_range(0, 4)
                if (sound == 0)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_x_voice_1, 1, 0)
                }
                if (sound == 1)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_x_voice_2, 1, 0)
                }
                if (sound == 2)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_x_voice_3, 1, 0)
                }
                if (sound == 3)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_x_voice_4, 1, 0)
                }
                if (sound == 4)
                {
                    repeat (2)
                        audio_play_sound(snd_mick_rank_x_voice_5, 1, 0)
                }
                audio_play_sound(snd_menu_rank_x, 1, 0)
                audio_play_sound(snd_item_checkpoint_1, 1, 0)
                repeat (50)
                    instance_create_depth((x + (irandom_range(-500, 500))), (y + (irandom_range(-500, 500))), (depth + 1), obj_particle_sparkle_rainbow)
                if global.particles
                {
                    repeat (150)
                        instance_create_depth((x + (irandom_range(-500, 500))), (y + (irandom_range(-500, 500))), (depth + 1), obj_particle_sparkle_rainbow)
                }
                audio_play_sound(snd_menu_rank, 1, 0)
                if global.rumble
                    gamepad_set_vibration(0, 1, 1)
                shake_time = 20
                obj_mick_ui_wow_background.flash = 0.5
            }
        }
    }
    if (phase == 1)
    {
        size -= 0.0125
        if (size == 1)
            phase = 2
    }
}
