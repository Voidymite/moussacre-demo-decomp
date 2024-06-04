if (time > 0)
{
    image_xscale = size
    image_yscale = size
    if (phase == 0)
    {
        size += 0.1
        if (size == 1.1)
        {
            phase = 1
            audio_play_sound(snd_menu_rank, 1, 0)
            if global.rumble
                gamepad_set_vibration(0, 1, 1)
            shake_time = 20
            if (rank == 6)
            {
                repeat (50)
                    instance_create_depth((x + (irandom_range(-500, 500))), (y + (irandom_range(-500, 500))), (depth + 1), obj_particle_sparkle_rainbow)
                if global.particles
                {
                    repeat (150)
                        instance_create_depth((x + (irandom_range(-500, 500))), (y + (irandom_range(-500, 500))), (depth + 1), obj_particle_sparkle_rainbow)
                }
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
if (time == 0)
{
    phase = 0
    size = 0
}
if (time > -100)
    time -= 1
if (shake_time > 0)
    shake_time -= 1
if (shake_time == 1)
    gamepad_set_vibration(0, 0, 0)
