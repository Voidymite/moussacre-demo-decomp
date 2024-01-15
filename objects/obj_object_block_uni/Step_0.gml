if (place_meeting(x, y, obj_hitbox_groundpound) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_spin))
{
    if place_meeting(x, y, obj_hitbox_spin)
        instance_create_depth(round(((obj_hitbox_spin.x + x) / 2)), round(((obj_hitbox_spin.y + y) / 2)), -10, obj_particle_slash_horizontal)
    if place_meeting(x, y, obj_hitbox_doublejump)
    {
        instance_create_depth(round(((obj_hitbox_doublejump.x + x) / 2)), round(((obj_hitbox_doublejump.y + y) / 2)), -10, obj_particle_slash_vertical)
        with (obj_mick)
        {
            astate = 4
            djump = 0
            y -= 2
            vstate = 1
            vspd = -48
        }
    }
    if place_meeting(x, y, obj_hitbox_groundpound)
    {
        instance_create_depth(round(((obj_hitbox_groundpound.x + x) / 2)), round(((obj_hitbox_groundpound.y + y) / 2)), -10, obj_particle_slash_vertical)
        with (obj_mick)
        {
            apex = 0
            stalled = 0
            astate = 6
            djump = 0
            y -= 2
            vstate = 1
            vspd = -48
            spin_time = 0
            dash_time = 0
        }
    }
    instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
    instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
    instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
    instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
    instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
    if global.particles
    {
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_brokenblock)
    }
    instance_create_depth(x, y, -10, obj_particle_poof)
    script_execute(scr_screenshake)
    instance_destroy()
    smash = choose(0, 1)
    if (!smash)
        audio_play_sound(snd_object_block_break_1, 1, false)
    else
        audio_play_sound(snd_object_block_break_2, 1, false)
    audio_play_sound(snd_mick_kill_3, 1, false)
}
if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id)
