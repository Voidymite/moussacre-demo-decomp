if (phase > 0 && start == 0)
    time -= 1
if (time == 0)
{
    if (phase == 1)
        time = irandom_range(130, 160)
    if (phase == 2)
        time = irandom_range(80, 110)
    if (phase == 3)
        time = irandom_range(30, 60)
    if (phase == 4)
        time = irandom_range(10, 40)
    if (phase == 5)
        time = irandom_range(5, 10)
    if (global.hp > 0)
        instance_create_depth(-1000, -1000, -2, obj_object_sawdrone)
}
if (phase == 1)
{
    if (start == 1)
    {
        global.song_playing = 0
        global.song = 11
    }
    if (start > 0)
        start -= 1
    spawn -= 1
    if (spawn == 0 && start > 0)
    {
        spawn = 5
        instance_create_depth((camera_get_view_x(view_camera[0]) - 1000), (camera_get_view_y(view_camera[0]) + 1900), 450, obj_particle_sawdrone)
    }
    if (start == 178)
    {
        instance_create_depth(4736, 49664, 0, obj_wall).image_yscale = 7
        instance_create_depth(4508, 49664, 0, obj_wall_nowalljump).image_yscale = 896
    }
}
if (phase == 0 && obj_mick.y <= 47000)
    phase = 1
if (phase == 1 && obj_mick.y <= 37800)
    phase = 2
if (phase == 2 && obj_mick.y <= 33800)
    phase = 3
if (phase == 3 && obj_mick.y <= 29300)
    phase = 4
if (phase == 4 && obj_mick.y <= 26000)
    phase = 5
