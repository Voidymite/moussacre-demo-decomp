life = 5;
image_alpha = 1;
image_angle = irandom_range(0, 359);
size = 3;
image_xscale = size;
image_yscale = size;

if (global.rumble)
    gamepad_set_vibration(0, 0.5, 0.5);

can_parry = 0;
audio_play_sound(snd_boss_os_shot_hit_1, 1, 0);
audio_play_sound(snd_boss_os_shot_hit_1, 1, 0);
