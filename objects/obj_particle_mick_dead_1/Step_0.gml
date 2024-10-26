if (time == -1000)
    instance_destroy();

if (time >= 200)
{
    if (global.rumble)
        gamepad_set_vibration(0, 1, 1);
}
else
{
    gamepad_set_vibration(0, 0, 0);
}

if (image_alpha > 0)
    dust_time--;

if (dust_time == 0)
{
    dust_time = 4;
    instance_create_depth(x, y + 100, 10, obj_particle_dust_big);
}

x += (hspd * image_xscale);
y += vspd;
vspd++;
time--;
other_time--;

if (other_time == 0)
{
    if (sprite_index == spr_mick_dead_7)
    {
        image_alpha = 0;
        
        repeat (36)
            instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_ash);
        
        repeat (108)
        {
            if (global.particles)
                instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), -9, obj_particle_ash);
        }
    }
}
