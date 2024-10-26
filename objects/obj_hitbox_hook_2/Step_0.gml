if (obj_mick.astate != 11)
{
    instance_destroy();
    
    with (obj_mick)
    {
        jump_used = 0;
        stalled = 0;
        
        if (global.badge != 1)
            djump = 0;
        else
            djump = -1;
        
        djump_time = 1;
        c_time = 10;
    }
}
else if (x > -5000)
{
    if (dir == 0)
    {
        global.hspd = obj_mick.hspd_cap * 2;
        obj_mick.vspd = 0;
        image_angle = 0;
    }
    
    if (dir == 1)
    {
        global.hspd = obj_mick.hspd_cap * 2;
        obj_mick.vspd = obj_mick.vspd_cap * 2;
        image_angle = 315;
    }
    
    if (dir == 2)
    {
        global.hspd = 0;
        obj_mick.vspd = obj_mick.vspd_cap * 2;
        image_angle = 270;
    }
    
    if (dir == 3)
    {
        global.hspd = -(obj_mick.hspd_cap * 2);
        obj_mick.vspd = obj_mick.vspd_cap * 2;
        image_angle = 225;
    }
    
    if (dir == 4)
    {
        global.hspd = -(obj_mick.hspd_cap * 2);
        obj_mick.vspd = 0;
        image_angle = 180;
    }
    
    if (dir == 5)
    {
        global.hspd = -(obj_mick.hspd_cap * 2);
        obj_mick.vspd = -(obj_mick.vspd_cap * 2);
        image_angle = 135;
    }
    
    if (dir == 6)
    {
        global.hspd = 0;
        obj_mick.vspd = -(obj_mick.vspd_cap * 2);
        image_angle = 90;
    }
    
    if (dir == 7)
    {
        global.hspd = obj_mick.hspd_cap * 2;
        obj_mick.vspd = -(obj_mick.vspd_cap * 2);
        image_angle = 45;
    }
}

if (place_meeting(x, y, obj_mick))
    image_alpha = 0;
