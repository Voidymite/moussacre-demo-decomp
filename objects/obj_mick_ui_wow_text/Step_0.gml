image_xscale = size
image_yscale = size
if (phase == 0)
{
    size -= 0.5
    if (size == 0.5)
    {
        audio_play_sound(snd_item_checkpoint_1, 1, false)
        phase = 1
        if global.rumble
            gamepad_set_vibration(0, 1, 1)
        shake_time = 20
    }
}
if (shake_time > 0)
    shake_time -= 1
if (shake_time == 0)
    gamepad_set_vibration(0, 0, 0)
if (phase == 1)
{
    size += 0.125
    if (size == 1)
        phase = 2
}
