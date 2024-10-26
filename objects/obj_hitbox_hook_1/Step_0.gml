if (time > 0)
    time--;

x_pos = obj_mick.x;
y_pos = obj_mick.y + 40;

if (time > 0)
{
    x = x_pos + new_x;
    y = y_pos + new_y;
}

if (time > 0)
{
    if (dir == 0)
    {
        new_x += spd;
        image_angle = 0;
    }
    
    if (dir == 1)
    {
        new_x += spd;
        new_y += spd;
        image_angle = 315;
    }
    
    if (dir == 2)
    {
        new_y += spd;
        image_angle = 270;
    }
    
    if (dir == 3)
    {
        new_x -= spd;
        new_y += spd;
        image_angle = 225;
    }
    
    if (dir == 4)
    {
        new_x -= spd;
        image_angle = 180;
    }
    
    if (dir == 5)
    {
        new_x -= spd;
        new_y -= spd;
        image_angle = 135;
    }
    
    if (dir == 6)
    {
        new_y -= spd;
        image_angle = 90;
    }
    
    if (dir == 7)
    {
        new_x += spd;
        new_y -= spd;
        image_angle = 45;
    }
}
else
{
    move_towards_point(obj_mick.x, obj_mick.y + 40, spd);
    
    if (point_distance(x, y, obj_mick.x, obj_mick.y) <= 100)
        instance_destroy();
}

if (x <= 0 || x >= room_width)
    time = 0;

if (!place_meeting(x, y, obj_wall_nowalljump) && time > 0)
{
    if (place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_item_checkpoint) || place_meeting(x, y, obj_object_block_spin) || place_meeting(x, y, obj_object_block_groundpound) || place_meeting(x, y, obj_object_block_uni) || place_meeting(x, y, obj_object_balloon) || place_meeting(x, y, obj_object_woodwall) || place_meeting(x, y, obj_enemy_batoncop) || place_meeting(x, y, obj_enemy_guncop) || place_meeting(x, y, obj_enemy_birdsoldier) || place_meeting(x, y, obj_enemy_hedgesoldier) || place_meeting(x, y, obj_enemy_turtlesoldier) || place_meeting(x, y, obj_enemy_beaversoldier) || place_meeting(x, y, obj_enemy_mouse) || place_meeting(x, y, obj_boss_os) || place_meeting(x, y, obj_boss_os_drone))
    {
        obj_mick.astate = 11;
        instance_create_depth(x, y, -4, obj_hitbox_hook_2).dir = obj_hitbox_hook_1.dir;
        instance_destroy();
    }
}
