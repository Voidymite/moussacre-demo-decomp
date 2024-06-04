if (!instance_exists(obj_mick_plane))
    lean = global.hspd * 16
else
    lean = 2200
if (global.hp > 0 && instance_exists(obj_mick) && obj_mick.x > -2000)
{
    if instance_exists(obj_mick_plane)
    {
        x += ((obj_mick_plane.x + lean - x) * 0.05)
        y += ((obj_mick_plane.y - y) * 0.4)
    }
    else
    {
        x += ((obj_mick.x + lean - x) * 0.15)
        y += ((obj_mick.y - y) * 0.4)
    }
}
min_view_x = 0
min_view_y = 0
max_view_x = room_width - camera_get_view_width(view_camera[0])
max_view_y = room_height - camera_get_view_height(view_camera[0])
halfViewWidth = camera_get_view_width(view_camera[0]) / 2
halfViewHeight = camera_get_view_height(view_camera[0]) / 2
cx = x - halfViewWidth
cy = y - halfViewHeight
if (room != rm_city_4)
{
    cx = clamp(cx, min_view_x, max_view_x)
    cy = clamp(cy, min_view_y, max_view_y)
}
else
{
    cx = clamp(cx, min_view_x, max_view_x)
    cy = clamp(cy, min_view_y, (obj_object_collapse.y + 128 - camera_get_view_height(view_camera[0])))
}
camera_set_view_pos(view_camera[0], cx, cy)
if (shake_time > 0)
{
    shake_time -= 1
    shake_amount = shake_time * 10
    camera_set_view_pos(view_camera[0], (cx + (irandom_range((-shake_amount), shake_amount))), (cy + (irandom_range((-shake_amount), shake_amount))))
}
