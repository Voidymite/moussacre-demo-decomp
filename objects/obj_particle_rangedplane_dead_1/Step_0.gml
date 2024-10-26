if (time == -1000)
    instance_destroy();

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
smoke--;

if (smoke == 0)
{
    if (global.particles)
        smoke = 3;
    else
        smoke = 12;
    
    instance_create_depth(x, y, depth - 1, obj_particle_smoke_2).image_alpha = 0.5;
}
