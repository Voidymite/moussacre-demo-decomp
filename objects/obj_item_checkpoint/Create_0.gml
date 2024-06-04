open = 0
depth = -3
key = scr_tempdatagetkey()
temp_data = ds_map_find_value(obj_global.temp_data, key)
if ((!is_undefined(temp_data)) && temp_data == true)
    drop = 0
else
    drop = 1
