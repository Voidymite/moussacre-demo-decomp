if place_meeting(x, y, obj_mick)
{
    with (obj_mick)
    {
        if (hurt_timer == 0)
        {
            if (dash_time <= 8)
            {
                hurt_timer = 120
				repeat (20)
				{
					instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
				}
			}
            if (spin_time > 0)
            {
                hurt_timer = 120
                repeat (20)
				{
					instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
				}
            }
        }
    }
}
if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound))
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
	repeat (70)
	{
		instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_paint_color)
	}
    instance_destroy()
}
