if (!instance_exists(obj_mick_plane))
    lean = global.hspd * 32;
else
    lean = 2200;

if (room == rm_os_1 && obj_boss_os.y >= 0)
{
    if (global.hp > 0 && instance_exists(obj_mick) && obj_mick.x > -2000)
    {
        x += ((((obj_mick.x + obj_boss_os.x) / 2) - x) * 0.15);
        y += ((((obj_mick.y + obj_boss_os.y) / 2) - y) * 0.15);
    }
}
else if (global.hp > 0 && instance_exists(obj_mick) && obj_mick.x > -2000)
{
    if (instance_exists(obj_mick_plane))
    {
        x += (((obj_mick_plane.x + lean) - x) * 0.05);
        y += ((obj_mick_plane.y - y) * 0.4);
    }
    else
    {
        if (!instance_exists(obj_object_hand_release))
            x += (((obj_mick.x + lean) - x) * 0.05);
        
        y += ((obj_mick.y - y) * 0.4);
    }
}

min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;
cx = x - halfViewWidth;
cy = y - halfViewHeight;

if (room != rm_city_4)
{
    cx = clamp(cx, min_view_x, max_view_x);
    cy = clamp(cy, min_view_y, max_view_y);
}
else
{
    cx = clamp(cx, min_view_x, max_view_x);
    cy = clamp(cy, min_view_y, (obj_object_collapse.y + 128) - camera_get_view_height(view_camera[0]));
}

camera_set_view_pos(view_camera[0], cx, cy);

if (shake_time > 0)
{
    shake_time--;
    shake_amount = shake_time * 10;
    camera_set_view_pos(view_camera[0], cx + irandom_range(-shake_amount, shake_amount), cy + irandom_range(-shake_amount, shake_amount));
}
