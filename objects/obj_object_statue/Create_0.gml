x_pos = x
y_pos = y
activated = 0
shake = 15
time = 140
fall = 1
vib_dir = 1
vib = 0
sound = 1
pop = 1
if (global.walt == 1)
{
    instance_destroy()
    instance_create_depth(0, 0, 0, obj_weather)
}
