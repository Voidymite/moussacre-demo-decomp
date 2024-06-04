type = irandom_range(1, 6)
sound = 0
if (type == 6)
    sprite_index = spr_object_sawdrone_gold
if (room == rm_forest_10)
{
    depth = -30
    hspd = 48
    vspd = -5
    hspd_acc = random_range(1.002, 1.008)
    vspd_acc = random_range(1.048, 1.096)
    size = random_range(1.5, 2.5)
    image_xscale = (-size)
    image_yscale = size
    time = 180
}
else
{
    depth = layer_get_depth(layer_get_id("Tiles2")) + 1
    hspd = global.hspd
    vspd = -5
    hspd_acc = random_range(1.005, 1.01)
    vspd_acc = random_range(1.012, 1.024)
    size = random_range(0.25, 0.75)
    image_xscale = (-size)
    image_yscale = size
    time = 600
}
