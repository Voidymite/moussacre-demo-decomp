if (pos > -5 && pos < 5)
    spd = 1
if (pos == -5 || pos == 5)
    spd = 0.5
if (pos == -6 || pos == 6)
    spd = 0.25
if (pos == -7 || pos == 7)
    spd = 0.125
if (pos == -8 || pos == 8)
    spd = 0.0625
if (pos == -9 || pos == 9)
    spd = 0.03125
y += (spd * dir)
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
if place_meeting(x, y, obj_mick)
{
    ds_map_replace(obj_global.temp_data, key, 1)
    instance_destroy()
    global.score += 10
    global.color += 1
    with (obj_mick_ui_gems)
        image_yscale = 1.5
    if (color == 0)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_red)
        audio_play_sound(snd_item_gem_1, 1, false)
    }
    if (color == 1)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_orange)
        audio_play_sound(snd_item_gem_2, 1, false)
    }
    if (color == 2)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_yellow)
        audio_play_sound(snd_item_gem_3, 1, false)
    }
    if (color == 3)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_green)
        audio_play_sound(snd_item_gem_4, 1, false)
    }
    if (color == 4)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_blue)
        audio_play_sound(snd_item_gem_5, 1, false)
    }
    if (color == 5)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_indigo)
        audio_play_sound(snd_item_gem_6, 1, false)
    }
    if (color == 6)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_violet)
        audio_play_sound(snd_item_gem_7, 1, false)
    }
    if (color == 7)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_black)
        audio_play_sound(snd_item_gem_8, 1, false)
    }
    if (color == 8)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_white)
        audio_play_sound(snd_item_gem_9, 1, false)
    }
}
if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id)
