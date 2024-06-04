life = 15
image_xscale = 300
image_yscale = 300
image_alpha = 0
repeat (10)
    instance_create_depth((x + (random_range(-200, 200))), (y + (random_range(-200, 200))), -5, obj_particle_explosion_3)
if global.rumble
    gamepad_set_vibration(0, 0.5, 0.5)
