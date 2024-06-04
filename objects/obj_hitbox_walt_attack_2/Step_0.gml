time -= 1
if (!grown)
{
    image_xscale += 0.2
    image_yscale += 0.2
    image_angle += 10
    if (image_xscale == 2)
        grown = 1
}
if (time <= 0)
{
    image_xscale -= 0.1
    image_yscale -= 0.1
    image_angle += 1
}
if (image_xscale <= 0 && grown)
    instance_destroy()
if place_meeting(x, y, obj_mick)
{
    with (obj_mick)
    {
        if (hurt_timer == 0 && (!(place_meeting(x, y, obj_wall_shield))))
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
