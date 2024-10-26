sink = 0;
spawn_time = 2;
scroll_x = 0;
scroll_x_2 = 0;
dm_dark = 0;
instance_create_depth(0, 0, 0, obj_foreground);

if (room == rm_forest_1 || room == rm_forest_2 || room == rm_forest_3 || room == rm_forest_4 || room == rm_forest_6 || room == rm_forest_7 || room == rm_forest_8 || room == rm_forest_9 || room == rm_forest_10)
    instance_create_depth(0, 0, 0, obj_weather);

if (room == rm_os_1)
    type = spr_background_os_castle;
