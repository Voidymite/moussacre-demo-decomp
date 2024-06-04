time -= 1
x -= (40 * image_xscale)
dust_time -= 1
if (dust_time == 0)
{
    dust_time = 4
    instance_create_depth((x + 40 * image_angle), y, -1, obj_particle_dust_small)
}
if place_meeting(x, y, obj_mick)
{
    if (!global.dodging)
    {
        instance_create_depth(x, y, -1, obj_particle_poof)
        instance_destroy()
        if (image_xscale == 1)
            instance_create_depth(x, y, 0, obj_particle_bullet_devil)
        else
            instance_create_depth(x, y, 0, obj_particle_bullet_devil).image_xscale = -1
    }
    with (obj_mick)
    {
        if (hurt_timer == 0)
        {
            if (dash_time <= 8)
            {
                instance_create_depth(x, y, -10, obj_particle_burst)
                hurt_timer = 120
                global.hp -= 1
            }
            else if global.rumble
                gamepad_set_vibration(0, 0.025, 0.025)
        }
    }
}
if (time == 0 ? true : (place_meeting(x, y, obj_wall) ? true : (place_meeting(x, y, obj_object_block_spin) ? true : (place_meeting(x, y, obj_object_block_groundpound) ? true : place_meeting(x, y, obj_object_block_uni)))))
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
        audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0)
    instance_create_depth(x, y, -1, obj_particle_poof)
    instance_destroy()
    if (image_xscale == 1)
        instance_create_depth(x, y, 0, obj_particle_bullet_angel)
    else
        instance_create_depth(x, y, 0, obj_particle_bullet_angel).image_xscale = -1
}
