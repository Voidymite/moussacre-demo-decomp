if (time > 0)
    time--;

if (place_meeting(x, y, obj_mick) && time == 0)
{
    with (obj_mick_ui_face)
        image_yscale = 1.5;
    
    repeat (15)
        instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_sparkle_health);
    
    repeat (45)
    {
        if (global.particles)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_sparkle_health);
    }
    
    audio_play_sound(snd_item_health, 1, 0);
    instance_destroy();
    
    if (drop)
    {
        global.score += 100;
        
        if (global.numbers)
        {
            if (global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 100;
            
            instance_create_depth(-100, -100, -10001, obj_particle_addsub_2).num = 1;
        }
        
        if (global.hp == global.hp_max)
        {
            repeat (10)
                instance_create_depth(x, y, -2, obj_item_gem_follow);
        }
    }
    
    if (global.hp < global.hp_max)
        global.hp++;
    
    with (obj_mick_ui_gems)
        image_yscale = 1.5;
}

if (!stop)
{
    x += hspd;
    y += vspd;
    vspd++;
}
else
{
    hspd = 0;
    vspd = 0;
}

if (place_meeting(x + hspd, y, obj_wall))
{
    while (!place_meeting(x + sign(hspd), y, obj_wall))
        x += sign(hspd);
    
    hspd = 0;
    x -= (4 * dir);
}

if (place_meeting(x, y + vspd, obj_wall))
{
    if (vspd > 0)
    {
        while (!place_meeting(x, y + sign(vspd), obj_wall))
            y += sign(vspd);
        
        if (bounce < 5)
        {
            bounce++;
            y -= 2;
        }
        
        if (bounce == 5)
        {
            hspd = 0;
            vspd = 0;
            stop = 1;
        }
        
        if (bounce == 4)
        {
            hspd = 0;
            vspd = -1;
        }
        
        if (bounce == 3)
        {
            hspd = 0;
            vspd = -2;
        }
        
        if (bounce == 2)
        {
            hspd = 1 * dir;
            vspd = -4;
        }
        
        if (bounce == 1)
        {
            hspd = 2 * dir;
            vspd = -8;
        }
        
        if (bounce == 0)
        {
            hspd = 4 * dir;
            vspd = -16;
        }
        
        vspd = 0;
    }
    else
    {
        y += 40;
        vspd = 0;
    }
}
