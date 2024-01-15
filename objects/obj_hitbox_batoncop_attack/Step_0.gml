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
                hurt_timer = 120
                global.hp -= 1
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
                instance_create_depth((obj_mick.x + irandom_range(-100, 100)), (obj_mick.y + irandom_range(-100, 100)), -9, obj_particle_paint_blackwhite)
            }
            else if global.rumble
                gamepad_set_vibration(0, 0.025, 0.025)
        }
    }
}
