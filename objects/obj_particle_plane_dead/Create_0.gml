image_xscale = obj_mick.image_xscale;
hspd = 60;
vspd = 0;

if (y >= room_height)
    vspd = 30;

time = 300;
dust_time = 1;
smoke = 1;

repeat (10)
    instance_create_depth(x + random_range(-200, 200), y + random_range(-200, 200), -5, obj_particle_explosion_2);
