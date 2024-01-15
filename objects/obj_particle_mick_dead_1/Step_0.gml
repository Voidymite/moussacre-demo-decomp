if (time == -1000)
    instance_destroy()
if (time >= 200)
{
    if global.rumble
        gamepad_set_vibration(0, 1, 1)
}
else
    gamepad_set_vibration(0, 0, 0)
dust_time -= 1
if (dust_time == 0)
{
    dust_time = 4
    instance_create_depth(x, (y + 100), 10, obj_particle_dust_big)
}
x += (hspd * image_xscale)
y += vspd
vspd += 1
time -= 1
