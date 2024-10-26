spawn = 0;
spd = 90;
image_xscale = 0;
image_yscale = 0;
ready = 0;
scared = 0;
scared_time = 0;
attack_time = 60;
attacking = 0;
hspd = 0;
vspd = 0;
vstate = 0;
no_splat = 0;
depth = 1;
key = scr_tempdatagetkey();
temp_data = ds_map_find_value(obj_global.temp_data, key);

if (!is_undefined(temp_data) && temp_data == true)
    drop = 0;
else
    drop = 1;

activated = 0;
