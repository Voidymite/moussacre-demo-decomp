type = irandom_range(0, 7)
image_index = type
image_angle = irandom_range(0, 359)
image_speed = 0
sizeup = random_range(0.9, 1)
image_xscale = sizeup
image_yscale = sizeup
hspd = irandom_range(-20, 20)
vspd = irandom_range(-30, 0)
rspd = irandom_range(16, 32)
if (global.level == 2)
    sprite_index = spr_block_forest_broken
