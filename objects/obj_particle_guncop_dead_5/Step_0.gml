if (time == 0)
    instance_destroy()
dust_time -= 1
if (dust_time == 0)
{
    dust_time = 4
    instance_create_depth(x, (y + 100), 10, obj_particle_dust_big)
}
x += hspd
y += vspd
vspd += 1
time -= 1
