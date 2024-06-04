ready = 0
scared = 0
scared_time = -1
attacking = 0
hspd = 0
vspd = 0
vstate = 0
idle = spr_enemy_beaversoldier_idle
no_splat = 0
depth = 1
image_xscale = choose(-1, 1)
image_index = irandom_range(0, 7)
key = scr_tempdatagetkey()
temp_data = ds_map_find_value(obj_global.temp_data, key)
if ((!is_undefined(temp_data)) && temp_data == true)
    drop = 0
else
    drop = 1
