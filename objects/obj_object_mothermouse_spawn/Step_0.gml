if (time == 0)
{
    if (moves > 0)
    {
        moves -= 1
        if (global.hp > 0)
            time = irandom_range(60, 90)
        instance_create_depth((obj_mick.x + (irandom_range(-100, 100))), (obj_mick.y + (choose(-2000, 2000))), -10, obj_object_mothermouse).color = color
    }
    else
        instance_destroy()
}
if (room == rm_forest_10 && obj_mick.y <= 26600)
    instance_destroy()
if (!instance_exists(obj_object_mothermouse))
    time -= 1
if (flash > 0)
    flash -= 0.15
