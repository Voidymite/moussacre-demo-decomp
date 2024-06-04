x = camera_get_view_x(view_camera[0]) + 192
y = camera_get_view_y(view_camera[0]) + 192
if (rank != pre_rank)
{
    size = 1.5
    if (rank == spr_mick_ui_rank_f_small)
        audio_play_sound(snd_rank_f, 1, 0)
    if (rank == spr_mick_ui_rank_d_small)
        audio_play_sound(snd_rank_d, 1, 0)
    if (rank == spr_mick_ui_rank_c_small)
        audio_play_sound(snd_rank_c, 1, 0)
    if (rank == spr_mick_ui_rank_b_small)
        audio_play_sound(snd_rank_b, 1, 0)
    if (rank == spr_mick_ui_rank_a_small)
        audio_play_sound(snd_rank_a, 1, 0)
    if (rank == spr_mick_ui_rank_x_small)
        audio_play_sound(snd_rank_x, 1, 0)
}
pre_rank = rank
