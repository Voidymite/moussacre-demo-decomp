time = 30
grown = 0
image_xscale = 0.2
image_yscale = 0.2
image_angle = irandom_range(0, 359)
sound = choose(0, 1)
if (!sound)
    audio_play_sound(snd_object_walt_ice_1, 1, false)
else
    audio_play_sound(snd_object_walt_ice_2, 1, false)
