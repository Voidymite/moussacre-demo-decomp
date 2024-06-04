time -= 1
if (time == 0)
{
    if global.particles
        time = 3
    else
        time = 12
    repeat (6)
        instance_create_depth(irandom_range(0, 3200), 1800, 410, obj_particle_smoke_3)
}
