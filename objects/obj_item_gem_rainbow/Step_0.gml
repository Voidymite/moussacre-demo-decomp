if (pos > -5 && pos < 5)
    spd = 1
if (pos == -5 ? true : pos == 5)
    spd = 0.5
if (pos == -6 ? true : pos == 6)
    spd = 0.25
if (pos == -7 ? true : pos == 7)
    spd = 0.125
if (pos == -8 ? true : pos == 8)
    spd = 0.0625
if (pos == -9 ? true : pos == 9)
    spd = 0.03125
drawn += (spd * dir)
pos += (1 * dir)
if (dir == 1 && pos == 10)
{
    pos -= 1
    dir *= -1
}
if (dir == -1 && pos == -10)
{
    pos += 1
    dir *= -1
}
if (place_meeting(x, y, obj_mick) ? true : place_meeting(x, y, obj_mick_plane))
{
    ds_map_replace(obj_global.temp_data, key, true)
    instance_destroy()
    repeat (50)
        instance_create_depth(x, y, -2, obj_item_gem_follow)
    repeat (15)
        instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_sparkle_rainbow)
    repeat (45)
    {
        if global.particles
            instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_sparkle_rainbow)
    }
    with (obj_mick_ui_gems)
        image_yscale = 1.5
    audio_play_sound(snd_item_gem_10, 1, 0)
}
if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id)
