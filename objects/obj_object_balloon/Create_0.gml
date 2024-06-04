color = irandom_range(1, 9)
if (color == 2)
    sprite_index = spr_object_balloon_orange
if (color == 3)
    sprite_index = spr_object_balloon_yellow
if (color == 4)
    sprite_index = spr_object_balloon_green
if (color == 5)
    sprite_index = spr_object_balloon_blue
if (color == 6)
    sprite_index = spr_object_balloon_indigo
if (color == 7)
    sprite_index = spr_object_balloon_violet
if (color == 8)
    sprite_index = spr_object_balloon_black
if (color == 9)
    sprite_index = spr_object_balloon_white
depth = 1
popped = 0
popped_time = 60
image_xscale = 2
image_yscale = 2
instance_deactivate_object(id)
