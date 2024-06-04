if (!dead)
{
    if (global.hp > 0)
    {
        x += ((x_pos + 0.75 * camera_get_view_x(view_camera[0]) - x) * 0.05)
        y += ((y_pos + 0.75 * camera_get_view_y(view_camera[0]) - y) * 0.05)
    }
    if (point == 0)
    {
        x_pos = 3000
        y_pos = 1000
    }
    if (point == 1)
    {
        x_pos = 6000
        y_pos = 500
    }
    if (point == 2)
    {
        x_pos = 9000
        y_pos = 1000
    }
    if (point == 3)
    {
        x_pos = 12000
        y_pos = 500
    }
    if (point == 4)
    {
        x_pos = 15000
        y_pos = 1000
    }
    if (point == 5)
    {
        x_pos = 17000
        y_pos = 1000
    }
    if (point == 6)
    {
        x_pos = 19000
        y_pos = 1000
    }
    if (x >= 61000)
    {
        dead = 1
        dead_spd = global.hspd * 0.9
        scr_screenshake(10);
        audio_play_sound(snd_object_walt_death_1, 1, 0)
        audio_play_sound(snd_object_walt_death_2, 1, 0)
        audio_play_sound(snd_song_icydestruction_end, 1, 0)
        audio_stop_sound(snd_song_icydestruction)
        global.song_playing = 0
        global.song = -1
    }
    if (global.hp > 0)
    {
        if (obj_mick.x <= 10000)
            point = 0
        if (obj_mick.x > 10000 && obj_mick.x <= 25000)
            point = 1
        if (obj_mick.x > 25000 && obj_mick.x <= 35000)
            point = 2
        if (obj_mick.x > 35000 && obj_mick.x <= 48000)
            point = 3
        if (obj_mick.x > 48000 && obj_mick.x <= 56000)
            point = 4
        if (obj_mick.x > 56000 && obj_mick.x <= 60000)
            point = 5
        if (obj_mick.x > 60000)
            point = 6
        if (move != point)
        {
            move = point
            audio_play_sound(snd_object_walt_rocket_2, 1, 0)
        }
    }
    atk -= 1
    if (atk == 0)
    {
        if (mode == 1 && global.hp > 0)
            instance_create_depth(x, (y + 220), (depth - 2), obj_hitbox_walt_attack_1)
        instance_create_depth((x + (irandom_range(-400, 400))), (y + 570), (depth + 1), obj_particle_icemist_1)
        instance_create_depth((x + (irandom_range(-400, 400))), (y + 570), (depth - 1), obj_particle_icemist_1)
        atk = 5
    }
    if (mode == 0)
        audio_stop_sound(snd_object_walt_wind_1)
    mode_count -= 1
    if (mode_count == 0)
    {
        if (mode == 1)
        {
            mode = 0
            mode_count = 390
        }
        else
        {
            mode = 1
            mode_count = 180
            audio_play_sound(snd_object_walt_wind_2, 1, 0)
            audio_play_sound(snd_object_walt_wind_1, 1, 1)
        }
    }
}
else
{
    audio_stop_sound(snd_object_walt_rocket_1)
    audio_stop_sound(snd_object_walt_wind_1)
    audio_stop_sound(snd_object_walt_wind_2)
    smoke -= 1
    if (smoke == 0)
    {
        smoke = 3
        instance_create_depth((x + (random_range(180, 220))), (y - (random_range(180, 220))), (depth - 1), obj_particle_smoke_2)
    }
    sprite_index = spr_object_walt_dead
    mode_count = 100
    atk = 100
    fall *= 1.02
    y += fall
    x += dead_spd
    if global.rumble
        gamepad_set_vibration(0, 0.25, 0.25)
    if (y >= 4000)
    {
        audio_stop_sound(snd_object_walt_death_2)
        instance_destroy()
        if global.rumble
            gamepad_set_vibration(0, 1, 1)
        scr_screenshake(40);
        instance_create_depth(x, (room_height + 500), 500, obj_particle_explosion_1)
        audio_sound_gain(snd_song_icydestruction, 1, 0)
    }
}
