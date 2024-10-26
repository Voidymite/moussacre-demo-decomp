scr_screenshake();
life = 5;
image_xscale = 300;
image_yscale = 300;
image_alpha = 0;

if (obj_mick.hurt_timer <= 20)
    obj_mick.hurt_timer = 20;

if (global.rumble)
    gamepad_set_vibration(0, 0.5, 0.5);

size = 1;
rot = irandom_range(0, 359);
audio_play_sound(snd_mick_counter_1, 1, 0);
