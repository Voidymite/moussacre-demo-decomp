type = irandom_range(1, 6);

if (type <= 5)
{
    time = 60;
    atk = 1;
}
else
{
    time = 120;
    atk = 1;
    sprite_index = spr_object_sawdrone_gold;
}

ult_leave_time = 500;
leave_time = 30;
spd = 1;
dir = irandom_range(0, 359);
place = irandom_range(0, 3);

if (place == 0)
{
    place_x = camera_get_view_x(view_camera[0]) + 350;
    place_y = camera_get_view_y(view_camera[0]) + 350;
    add_x = -1;
    add_y = -1;
}

if (place == 1)
{
    place_x = (camera_get_view_x(view_camera[0]) + 3200) - 350;
    place_y = camera_get_view_y(view_camera[0]) + 350;
    add_x = 1;
    add_y = -1;
}

if (place == 2)
{
    place_x = (camera_get_view_x(view_camera[0]) + 3200) - 350;
    place_y = (camera_get_view_y(view_camera[0]) + 1800) - 350;
    add_x = 1;
    add_y = 1;
}

if (place == 3)
{
    place_x = camera_get_view_x(view_camera[0]) + 350;
    place_y = (camera_get_view_y(view_camera[0]) + 1800) - 350;
    add_x = -1;
    add_y = 1;
}

x = place_x + (add_x * 300);
y = place_y + (add_y * 300);
var_x = irandom_range(-200, 200);
var_y = irandom_range(-200, 200);
size = 1;
fall_speed = -50;
dead = 0;
rot_spd = irandom_range(-5, 5);
smoke = 1;
sparkle_size = 0;
sparkle_grow = 0.2;
sparkle_angle = 0;
depth = -10;
sound = choose(0, 1);

if (sound)
    audio_play_sound(snd_object_sawdrone_spawn_1, 1, 0);
else
    audio_play_sound(snd_object_sawdrone_spawn_2, 1, 0);

shine = 0;
