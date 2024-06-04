if (place_meeting(x, y, obj_hitbox_spin) ? true : (place_meeting(x, y, obj_hitbox_doublejump) ? true : (place_meeting(x, y, obj_hitbox_shoot) ? true : (place_meeting(x, y, obj_hitbox_hook_3) ? true : place_meeting(x, y, obj_hitbox_bomb_2)))))
{
    if place_meeting(x, y, obj_hitbox_spin)
    {
        instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal)
        audio_play_sound(snd_mick_kill_3, 1, 0)
    }
    if place_meeting(x, y, obj_hitbox_doublejump)
    {
        instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical)
        audio_play_sound(snd_mick_kill_3, 1, 0)
        with (obj_mick)
        {
            astate = 4
            djump = 0
            y -= 2
            vstate = 1
            vspd = (-jump_height)
        }
    }
    if (place_meeting(x, y, obj_hitbox_shoot) ? true : (place_meeting(x, y, obj_hitbox_hook_3) ? true : place_meeting(x, y, obj_hitbox_bomb_2)))
        instance_create_depth(x, y, -10, obj_particle_burst)
    repeat (5)
        instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_brokenblock)
    repeat (15)
    {
        if global.particles
            instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_brokenblock)
    }
    instance_create_depth(x, y, -10, obj_particle_poof)
    scr_screenshake(10);
    instance_destroy()
    smash = choose(0, 1)
    if (!smash)
        audio_play_sound(snd_object_block_break_1, 1, 0)
    else
        audio_play_sound(snd_object_block_break_2, 1, 0)
}
