image_alpha = 0;
time = 60;
spawn = 1;
active = 0;

if (room == rm_forest_3 && global.dronesback >= 1)
    instance_destroy();

if (room == rm_forest_7 && global.dronesback >= 2)
    instance_destroy();
