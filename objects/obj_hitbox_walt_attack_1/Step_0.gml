gamepad_set_vibration(0, 0.015, 0.015)
if (!fade)
{
    image_xscale += 0.04
    image_yscale += 0.04
}
else
{
    image_alpha -= 0.02
    if (image_alpha <= 0)
    {
        instance_destroy()
        if global.rumble
            gamepad_set_vibration(0, 0, 0)
    }
}
if (image_xscale == 2 && (!fade))
{
    fade = 1
    if (place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_wall_shield))
        instance_create_depth((x + irandom_range(-400, 400)), (y + irandom_range(-400, 400)), 300, obj_hitbox_walt_attack_2)
}
image_angle += rot_spd
if (global.hp > 0)
{
    x += ((target_x - x) * 0.03)
    y += ((target_y - y) * 0.03)
}
if (place_meeting(x, y, obj_mick) && fade)
{
    with (obj_mick)
    {
        if (hurt_timer == 0 && (!(place_meeting(x, y, obj_wall_shield))))
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
