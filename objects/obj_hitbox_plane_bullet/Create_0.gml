image_alpha = 0
image_xscale = 200
image_yscale = 40
time = 5
if (global.rumble && point_distance(x, y, obj_mick.x, obj_mick.y) < 3200)
    gamepad_set_vibration(0, 0.5, 0.5)
