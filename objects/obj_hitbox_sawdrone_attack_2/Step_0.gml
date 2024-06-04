time -= 1
dust_time -= 1
if (!stop)
{
    x += lengthdir_x(spd, direction)
    y += lengthdir_y(spd, direction)
    if (dust_time == 0)
    {
        dust_time = 4
        instance_create_depth(x, y, (depth + 1), obj_particle_dust_big)
    }
}
else if ((!(place_meeting(x, y, obj_wall))) && (!(place_meeting(x, y, obj_object_block_spin))) && (!(place_meeting(x, y, obj_object_block_groundpound))) && (!(place_meeting(x, y, obj_object_block_uni))))
{
    instance_create_depth(x, y, -1, obj_particle_poof)
    instance_destroy()
}
if place_meeting(x, y, obj_mick)
{
    if (!stop)
    {
        with (obj_mick)
        {
            if (hurt_timer == 0)
            {
                if (dash_time <= 8)
                {
                    instance_create_depth(x, y, -10, obj_particle_slash_vertical).image_yscale = 4
                    obj_mick.pain = 1
                    hurt_timer = 120
                    global.hp -= 2
                }
                else if global.rumble
                    gamepad_set_vibration(0, 0.025, 0.025)
            }
        }
    }
    else
    {
        with (obj_mick)
        {
            if (hurt_timer == 0)
            {
                if (dash_time <= 8)
                {
                    instance_create_depth(x, y, -10, obj_particle_slash_vertical)
                    hurt_timer = 120
                    global.hp -= 1
                }
                else if global.rumble
                    gamepad_set_vibration(0, 0.025, 0.025)
            }
        }
    }
}
if (time == 0)
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
    {
    }
    instance_create_depth(x, y, -1, obj_particle_poof)
    instance_destroy()
}
image_time -= 1
if (image_time == 0)
{
    image_time = 3
    if (!stop)
        instance_create_depth(x, y, 2, obj_afterimage_2).sprite_index = sprite_index
}
if ((!stoppable) && (!(place_meeting(x, y, obj_wall))) && (!(place_meeting(x, y, obj_object_block_spin))) && (!(place_meeting(x, y, obj_object_block_groundpound))) && (!(place_meeting(x, y, obj_object_block_uni))))
    stoppable = 1
if stoppable
{
    if (time == 0 ? true : (place_meeting(x, y, obj_wall) ? true : (place_meeting(x, y, obj_object_block_spin) ? true : (place_meeting(x, y, obj_object_block_groundpound) ? true : place_meeting(x, y, obj_object_block_uni)))))
    {
        if (!(place_meeting(x, y, obj_wall_nowalljump)))
        {
            if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
                audio_play_sound(snd_object_sawdrone_bullet_2, 1, 0)
            instance_create_depth(x, y, -1, obj_particle_poof)
            instance_destroy()
        }
    }
}
