global.dodging = 0;
running = 0;
walked = 0;
vspd = 0;

if (global.badge != 1)
    djump = 0;
else
    djump = -1;

djump_time = 4;
jumpspin_time = 4;
wjump_time = 4;
wkick_time = 0;
pound_used = 0;
jump_used = 0;
falling = 0;
land_time = 0;
cling = 0;
jump_buffer = 0;
c_time = 0;
bounce = 0;
hstate = 0;
dir = 1;
vstate = 0;
apex = 0;
crouching = 0;
hurt_timer = 0;
flash = 0;
hurt_anim = 0;
stun_timer = 0;
astate = 0;
spin_time = 0;
stalled = 0;
dash_time = 0;
dashed = 0;
dust_time = 1;
image_time = 3;
walk_time = 20;
run_time = 2;
run_time_2 = 2;
wall_time = 2;
depth = -1;
audio_group_set_gain(snd_background_city_1, 0.9, 0);
exist_time = 1;
rot = 16;
tilt = 0;
tilt_spd = 4;
shoot = 6;
time = 32;

if (global.hspd < 0)
    global.hspd = 0;
