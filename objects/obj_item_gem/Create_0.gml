base_pos = y;
pos = irandom_range(-9, 9);
dir = choose(-1, 1);
image_index = irandom_range(0, 15);
color = irandom_range(0, 8);
depth = -2;
key = scr_tempdatagetkey();
temp_data = ds_map_find_value(obj_global.temp_data, key);

if (!is_undefined(temp_data) && temp_data == true)
    instance_destroy();

drawn = base_pos + pos;

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

instance_deactivate_object(id);
