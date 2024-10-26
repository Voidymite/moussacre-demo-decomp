image_angle += spd;
time--;

if (image_xscale > 1)
    depth = obj_mick.depth - 1 - (time * 0.01);
else
    depth = (obj_mick.depth + 1) - (time * 0.01);

image_xscale = size;
image_yscale = size;
size *= 0.95;
x += ((point_x - x) * 0.15);
y += ((point_y - y) * 0.15);

if (place_meeting(x, y, obj_mick) && image_xscale <= 1.2 && image_xscale > 0.8)
{
    with (obj_mick)
    {
        if (hurt_timer == 0 && parry == 0)
        {
            if (dash_time <= 2)
            {
                instance_create_depth(x, y, -10, obj_particle_burst);
                hurt_timer = 120;
                global.hp--;
                global.score -= 500;
                
                if (global.numbers)
                {
                    if (global.difficulty != 2)
                        instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = -500;
                    
                    instance_create_depth(-100, -100, -10001, obj_particle_addsub_2).num = -1;
                }
            }
            else if (global.rumble)
            {
                gamepad_set_vibration(0, 0.025, 0.025);
            }
        }
        
        if (parry > 0)
        {
            instance_create_depth(x, y, -3, obj_hitbox_counter);
            
            if (astate == 1 || astate == 14)
            {
                if (dir == 1)
                    instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = 0;
                else
                    instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = 180;
            }
            
            if (astate == 4)
                instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = 90;
            
            if (astate == 3)
                instance_create_depth(x, y, -4, obj_hitbox_deflect).direction = -90;
        }
    }
    
    if (place_meeting(x, y, obj_hitbox_counter))
        instance_destroy();
}

if (image_xscale <= 0.004)
    instance_destroy();
