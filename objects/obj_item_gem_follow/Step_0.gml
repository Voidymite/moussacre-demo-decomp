if (time == 0)
{
    if (obj_mick.x >= -100)
        move_towards_point(obj_mick.x, obj_mick.y, spd)
}
else
{
    x += lengthdir_x((2 * time), dir)
    y += lengthdir_y((2 * time), dir)
}
if (spd < 84 && time == 0)
    spd += 7
if (time > 0)
    time -= 1
if (place_meeting(x, y, obj_mick) ? true : place_meeting(x, y, obj_mick_plane))
{
    if (time == 0)
    {
        instance_destroy()
        global.score += 10
        global.color += 1
        with (obj_mick_ui_gems)
            image_yscale = 1.5
        if (color == 0)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_red)
            audio_play_sound(snd_item_gem_1, 1, 0)
        }
        if (color == 1)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_orange)
            audio_play_sound(snd_item_gem_2, 1, 0)
        }
        if (color == 2)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_yellow)
            audio_play_sound(snd_item_gem_3, 1, 0)
        }
        if (color == 3)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_green)
            audio_play_sound(snd_item_gem_4, 1, 0)
        }
        if (color == 4)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_blue)
            audio_play_sound(snd_item_gem_5, 1, 0)
        }
        if (color == 5)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_indigo)
            audio_play_sound(snd_item_gem_6, 1, 0)
        }
        if (color == 6)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_violet)
            audio_play_sound(snd_item_gem_7, 1, 0)
        }
        if (color == 7)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_black)
            audio_play_sound(snd_item_gem_8, 1, 0)
        }
        if (color == 8)
        {
            instance_create_depth(x, y, -10, obj_particle_collect_white)
            audio_play_sound(snd_item_gem_9, 1, 0)
        }
    }
}
