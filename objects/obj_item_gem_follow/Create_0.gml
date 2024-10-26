dir = irandom_range(0, 359);
image_index = irandom_range(0, 15);
color = irandom_range(0, 8);
time = 20;
spd = 0;

if (room == rm_os_1 || room == rm_finisher)
    color = choose(7, 8);

if (color == 1)
    sprite_index = spr_item_gem_orange;

if (color == 2)
    sprite_index = spr_item_gem_yellow;

if (color == 3)
    sprite_index = spr_item_gem_green;

if (color == 4)
    sprite_index = spr_item_gem_blue;

if (color == 5)
    sprite_index = spr_item_gem_indigo;

if (color == 6)
    sprite_index = spr_item_gem_violet;

if (color == 7)
    sprite_index = spr_item_gem_black;

if (color == 8)
    sprite_index = spr_item_gem_white;

recolor = 0;
