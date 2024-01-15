if (!popped)
{
    if place_meeting(x, y, obj_mick)
    {
        if (x <= obj_mick.x)
        {
            with (obj_mick)
            {
                if (stun_timer == 10 && hurt_timer == 0)
                {
                    if (dash_time <= 8)
                        global.hspd = 24
                    else if global.rumble
                        gamepad_set_vibration(0, 0.025, 0.025)
                }
            }
        }
        else
        {
            with (obj_mick)
            {
                if (stun_timer == 10 && hurt_timer == 0)
                {
                    if (dash_time <= 8)
                        global.hspd = -24
                    else if global.rumble
                        gamepad_set_vibration(0, 0.025, 0.025)
                }
            }
        }
        with (obj_mick)
        {
            if (stun_timer == -25 && hurt_timer == 0)
            {
                if (dash_time <= 8)
                {
                    stun_timer = 25
                    astate = 7
                }
                else if global.rumble
                    gamepad_set_vibration(0, 0.025, 0.025)
            }
        }
    }
    if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound))
    {
        if place_meeting(x, y, obj_hitbox_spin)
            instance_create_depth(round(((obj_hitbox_spin.x + x) / 2)), round(((obj_hitbox_spin.y + y) / 2)), -10, obj_particle_slash_horizontal).soft = 1
        if place_meeting(x, y, obj_hitbox_doublejump)
        {
            instance_create_depth(round(((obj_hitbox_doublejump.x + x) / 2)), round(((obj_hitbox_doublejump.y + y) / 2)), -10, obj_particle_slash_vertical).soft = 1
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
            instance_create_depth(round(((obj_hitbox_groundpound.x + x) / 2)), round(((obj_hitbox_groundpound.y + y) / 2)), -10, obj_particle_slash_vertical).soft = 1
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
        instance_create_depth(x, y, -10, obj_particle_poof)
        image_xscale = 0
        image_yscale = 0
        popped = 1
        smash = choose(0, 1)
        if (!smash)
            audio_play_sound(snd_object_balloon_pop_1, 1, false)
        else
            audio_play_sound(snd_object_balloon_pop_2, 1, false)
    }
}
if popped
    popped_time -= 1
if (popped_time == 0)
{
    popped = 0
    popped_time = 60
    color = irandom_range(1, 7)
    if (color == 1)
        sprite_index = spr_object_balloon_red
    if (color == 2)
        sprite_index = spr_object_balloon_orange
    if (color == 3)
        sprite_index = spr_object_balloon_yellow
    if (color == 4)
        sprite_index = spr_object_balloon_green
    if (color == 5)
        sprite_index = spr_object_balloon_blue
    if (color == 6)
        sprite_index = spr_object_balloon_indigo
    if (color == 7)
        sprite_index = spr_object_balloon_violet
}
if popped
    image_alpha = 0
else
    image_alpha = 1
if (image_xscale < 2 && popped == 0)
{
    image_xscale += 0.1
    image_yscale += 0.1
}
if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id)
