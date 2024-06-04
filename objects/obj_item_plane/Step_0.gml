if (place_meeting(x, y, obj_mick) && (!collected))
{
    collected = 1
    instance_create_depth(x, (y - 32), 0, obj_mick_plane)
    global.riding = 1
    y += -10000
}
if (collected && (!instance_exists(obj_mick_plane)))
{
    collected = 0
    y = y_pos
}
