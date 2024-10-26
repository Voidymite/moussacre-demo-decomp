if (place_meeting(x, y, obj_mick))
{
    audio_sound_gain(snd_song_sawbladesymphony, 1, 0);
    audio_play_sound(snd_song_sawbladesymphony_end, 1, 0);
    audio_play_sound(snd_object_generator_explode_1, 1, 0);
    audio_play_sound(snd_object_generator_explode_1, 1, 0);
    audio_stop_sound(snd_song_sawbladesymphony);
    global.song_playing = 0;
    global.song = -1;
    instance_create_depth(-10000, -10000, -400, obj_particle_electric);
    obj_object_generator.image_index = 1;
    
    with (obj_object_sawdrone)
    {
        dead = 1;
        
        if (global.particles)
        {
            repeat (10)
                instance_create_depth(x + random_range(-200, 200), y + random_range(-200, 200), -5, obj_particle_explosion_4);
        }
        else
        {
            repeat (2)
                instance_create_depth(x + random_range(-200, 200), y + random_range(-200, 200), -5, obj_particle_explosion_4);
        }
    }
    
    instance_destroy(obj_object_sawdrone_spawn);
    scr_screenshake_giant();
    
    if (global.rumble)
        gamepad_set_vibration(0, 1, 1);
    
    instance_destroy();
}
