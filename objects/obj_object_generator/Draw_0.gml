draw_self()
draw_sprite(spr_background_generator_wire_1, 0, (x - 1409), y)
draw_sprite(spr_background_generator_wire_2, 0, (x + 1409), y)
time -= 1
if (time == 0)
{
    if global.particles
        time = 3
    else
        time = 12
    repeat (2)
    {
        if (image_index == 1)
            instance_create_depth((x + (irandom_range(-200, 200))), (y + (irandom_range(-200, 200))), -5, obj_particle_smoke_3)
    }
}
