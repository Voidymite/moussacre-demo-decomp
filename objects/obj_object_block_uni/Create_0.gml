depth = 1.5
key = scr_tempdatagetkey()
temp_data = ds_map_find_value(obj_global.temp_data, key)
if ((!is_undefined(temp_data)) && temp_data == true)
{
}
if (global.level == 2)
    sprite_index = spr_block_forest
