if (image_angle == 0)
    dir = 0;

if (image_angle == 315)
    dir = 1;

if (image_angle == 270)
    dir = 2;

if (image_angle == 225)
    dir = 3;

if (image_angle == 180)
    dir = 4;

if (image_angle == 135)
    dir = 5;

if (image_angle == 90)
    dir = 6;

if (image_angle == 45)
    dir = 7;

if (place_meeting(x, y, obj_mick) && !on)
{
    obj_mick.sprite_index = spr_mick_idle;
    image_index = 0;
    obj_mick.astate = 8;
    global.hspd = 0;
    obj_mick.vspd = 0;
    obj_mick.image_alpha = 0;
    on = 1;
    sprite_index = spr_object_cannon_shoot;
}

if (on)
{
    if (image_index > 7)
    {
        on = 0;
        sprite_index = spr_object_cannon_idle;
    }
    
    if (image_index > 5 && image_index < 6)
    {
        obj_mick.astate = 11;
        obj_mick.image_alpha = 1;
        instance_create_depth(-10000, -10000, 0, obj_hitbox_hook_2);
        scr_screenshake();
        
        if (dir == 0)
        {
            obj_mick.x = x + 200;
            obj_mick.y = y - 2;
            global.hspd = obj_mick.hspd_cap * 2;
            obj_mick.vspd = 0;
        }
        
        if (dir == 1)
        {
            obj_mick.x = x + 200;
            obj_mick.y = y + 200;
            global.hspd = obj_mick.hspd_cap * 2;
            obj_mick.vspd = obj_mick.vspd_cap * 2;
        }
        
        if (dir == 2)
        {
            obj_mick.x = x + 0;
            obj_mick.y = y + 200;
            global.hspd = 0;
            obj_mick.vspd = obj_mick.vspd_cap * 2;
        }
        
        if (dir == 3)
        {
            obj_mick.x = x - 200;
            obj_mick.y = y + 200;
            global.hspd = -(obj_mick.hspd_cap * 2);
            obj_mick.vspd = obj_mick.vspd_cap * 2;
        }
        
        if (dir == 4)
        {
            obj_mick.x = x - 200;
            obj_mick.y = y - 2;
            global.hspd = -(obj_mick.hspd_cap * 2);
            obj_mick.vspd = 0;
        }
        
        if (dir == 5)
        {
            obj_mick.x = x - 200;
            obj_mick.y = y - 200;
            global.hspd = -(obj_mick.hspd_cap * 2);
            obj_mick.vspd = -(obj_mick.vspd_cap * 2);
        }
        
        if (dir == 6)
        {
            obj_mick.x = x + 0;
            obj_mick.y = y - 200;
            global.hspd = 0;
            obj_mick.vspd = -(obj_mick.vspd_cap * 2);
        }
        
        if (dir == 7)
        {
            obj_mick.x = x + 200;
            obj_mick.y = y - 200;
            global.hspd = obj_mick.hspd_cap * 2;
            obj_mick.vspd = -(obj_mick.vspd_cap * 2);
        }
        
        instance_create_depth(obj_mick.x, obj_mick.y, -1, obj_particle_gunshot);
    }
}
