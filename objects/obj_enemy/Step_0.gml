if (place_meeting(x, y, obj_mick))
{
    with (obj_mick)
    {
        if (hurt_timer == 0)
        {
            if (dash_time <= 2)
                hurt_timer = 120;
            
            if (spin_time > 0)
            {
                hurt_timer = 120;
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
                instance_create_depth(obj_mick.x + irandom_range(-100, 100), obj_mick.y + irandom_range(-100, 100), -9, obj_particle_paint_blackwhite);
            }
        }
    }
}

if (place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound))
{
    if (place_meeting(x, y, obj_hitbox_spin))
        instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal);
    
    if (place_meeting(x, y, obj_hitbox_doublejump))
    {
        instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical);
        
        with (obj_mick)
        {
            astate = 4;
            
            if (global.badge != 1)
                djump = 0;
            else
                djump = -1;
            
            y -= 2;
            vstate = 1;
            vspd = -jump_height;
        }
    }
    
    if (place_meeting(x, y, obj_hitbox_groundpound))
    {
        instance_create_depth(round((obj_hitbox_groundpound.x + x) / 2), round((obj_hitbox_groundpound.y + y) / 2), -10, obj_particle_slash_vertical);
        
        with (obj_mick)
        {
            apex = 0;
            stalled = 0;
            astate = 6;
            
            if (global.badge != 1)
                djump = 0;
            else
                djump = -1;
            
            y -= 2;
            vstate = 1;
            vspd = -jump_height;
            spin_time = 0;
            dash_time = 0;
        }
    }
    
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_paint_color);
    instance_destroy();
}
