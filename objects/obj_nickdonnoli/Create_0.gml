global.volume = 0.67;
global.volume2 = 0.67;
global.volume3 = 0.67;
global.rumble = 1;
global.fullscreen = 1;
global.resolution = 3;
global.fix1 = 1;
global.up = 38;
global.down = 40;
global.left = 37;
global.right = 39;
global.action1 = 90;
global.action2 = 88;
global.action3 = 67;
global.action4 = 86;
global.action5 = 160;
global.action6 = 32;
global.gun = 90;
global.hook = 88;
global.cannon = 67;
global.c_action1 = 32769;
global.c_action2 = 32771;
global.c_action3 = 32770;
global.c_action4 = 32772;
global.c_action5 = 32776;
global.c_action6 = 32775;
global.c_gun = 32771;
global.c_hook = 32772;
global.c_cannon = 32770;
texture_prefetch("misc_level");
texture_prefetch("misc_things");
texture_prefetch("city_level");
texture_prefetch("city_things");
texture_prefetch("forest_level");
texture_prefetch("forest_things");
texture_prefetch("os_level");
texture_prefetch("os_things");
texture_prefetch("kitchen_level");
texture_prefetch("kitchen_things");
texture_prefetch("sky_level");
texture_prefetch("sky_things");
skip = 0;
time = 420;
grow = 0.007;
image_speed = 0;
image_xscale = 2.343;
image_yscale = 2.343;
ini_open("PumpkinEater");
scr_load();
ini_close();
ini_open("TheWayILikeIt");
scr_load_settings();
ini_close();
