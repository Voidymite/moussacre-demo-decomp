depth += 3;
x_pos = x;
y_pos = y;
x_shake = 0;
y_shake = 0;
scroll_x = 0;
scroll_y = 0;
image_speed = 0;
scr_stopsound();
audio_play_sound(snd_boss_os_death_voice_1, 1, 0);
audio_play_sound(snd_boss_hurt_1, 1, 0);
audio_stop_sound(snd_song_swissarmyknife);
global.song = -1;
