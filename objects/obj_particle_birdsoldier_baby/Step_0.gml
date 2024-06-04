x += (spd * (-dir))
y -= spd
spd += 1
time -= 1
if (time == 0)
    instance_destroy()
