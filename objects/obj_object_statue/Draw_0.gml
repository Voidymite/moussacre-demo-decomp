draw_self()
if (time <= 0 && time >= -40)
{
    if pop
    {
        pop = 0
        audio_play_sound(snd_object_walt_activate_2, 1, 0)
        audio_play_sound(snd_object_walt_activate_2, 1, 0)
        audio_stop_sound(snd_object_walt_activate_1)
    }
    draw_sprite(spr_background_city_statue_4, 0, x, (y + time * 100))
    instance_create_depth((x + 1300 + (irandom_range(-400, 400))), (y + 900), (depth + 1), obj_particle_icemist_1)
    instance_create_depth((x + 1300 + (irandom_range(-400, 400))), (y + 900), (depth - 1), obj_particle_icemist_1)
    instance_create_depth((x + 1300 + (irandom_range(-400, 400))), (y + 900), (depth + 1), obj_particle_icemist_1)
    instance_create_depth((x + 1300 + (irandom_range(-400, 400))), (y + 900), (depth - 1), obj_particle_icemist_1)
}
