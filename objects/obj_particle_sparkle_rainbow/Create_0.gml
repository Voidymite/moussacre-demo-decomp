color = irandom_range(0, 8)
dir = irandom_range(0, 359)
spd = irandom_range(5, 25)
rot = choose(-1, 1)
image_index = color
image_angle = irandom_range(0, 359)
image_speed = 0
sizeup = random_range(1, 6)
image_xscale = sizeup
image_yscale = sizeup
if (room == rm_wow)
    spd *= 2
