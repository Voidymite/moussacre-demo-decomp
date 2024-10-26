if (instance_exists(obj_particle_explosion_1) && room == rm_city_8 && x == 640)
    instance_destroy();

if (!instance_exists(obj_object_sawdrone_spawn) && room == rm_forest_10 && x == 4736 && y == 49664)
    instance_destroy();

if (sizable)
    image_xscale = 384;
