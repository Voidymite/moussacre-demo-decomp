if (place_meeting(x, y, obj_mick) ? true : place_meeting(x, y, obj_mick_plane))
{
    with (obj_mick_ui_face)
        image_yscale = 1.5
    repeat (15)
        instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_sparkle_health)
    repeat (45)
    {
        if global.particles
            instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_sparkle_health)
    }
    audio_play_sound(snd_item_health, 1, 0)
    ds_map_replace(obj_global.temp_data, key, true)
    instance_destroy()
    if drop
    {
        global.score += 100
        if (global.hp == global.hp_max)
        {
            repeat (10)
                instance_create_depth(x, y, -2, obj_item_gem_follow)
        }
    }
    if (global.hp < global.hp_max)
        global.hp += 1
    with (obj_mick_ui_gems)
        image_yscale = 1.5
}
if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id)
