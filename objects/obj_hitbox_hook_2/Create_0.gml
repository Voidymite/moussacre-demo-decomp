dir = 0;
global.hspd = 0;
obj_mick.vspd = 0;

with (obj_mick)
{
    if (obj_hitbox_hook_2.dir == 0 || obj_hitbox_hook_2.dir == 4 || obj_hitbox_hook_2.dir == 5 || obj_hitbox_hook_2.dir == 6 || obj_hitbox_hook_2.dir == 7)
    {
        if (vstate == 0)
            y -= 8;
    }
}

if (x > -5000)
{
    audio_play_sound(snd_mick_hook_2, 1, 0);
    global.sp -= 3;
    
    if (global.numbers)
        instance_create_depth(-100, -100, -10001, obj_particle_addsub_3).num = -3;
}
