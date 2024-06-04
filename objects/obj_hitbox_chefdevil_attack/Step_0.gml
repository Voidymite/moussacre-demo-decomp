time -= 1
x += (hspd * dir * -1)
y += vspd
image_angle += rspd
vspd += 1
if (vspd >= 20)
    vspd = 20
dust_time -= 0.5
if (dust_time == 0)
{
    dust_time = 3
    instance_create_depth(x, y, -1, obj_particle_dust_big)
}
if place_meeting(x, y, obj_mick)
{
    if (!global.dodging)
    {
        instance_create_depth(x, y, -1, obj_particle_poof)
        instance_destroy()
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
}
