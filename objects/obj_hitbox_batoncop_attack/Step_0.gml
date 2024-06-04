time -= 1
if (time == 0)
    instance_destroy()
if (place_meeting(x, y, obj_mick) && (!(place_meeting(x, y, obj_hitbox_spin))) && (!(place_meeting(x, y, obj_hitbox_doublejump))) && (!(place_meeting(x, y, obj_hitbox_groundpound))))
{
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
