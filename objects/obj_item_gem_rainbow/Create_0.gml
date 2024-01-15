base_pos = y
pos = irandom_range(-9, 9)
dir = choose(-1, 1)
image_index = irandom_range(0, 15)
color = irandom_range(0, 8)
depth = -2
key = scr_tempdatagetkey()
temp_data = ds_map_find_value(obj_global.temp_data, key)
if ((!is_undefined(temp_data)) && temp_data == 1)
    instance_destroy()
y = (base_pos + pos)
instance_deactivate_object(id)
