dir = 0
global.hspd = 0
obj_mick.vspd = 0
with (obj_mick)
{
    if (obj_hitbox_hook_2.dir == 0 ? true : (obj_hitbox_hook_2.dir == 4 ? true : (obj_hitbox_hook_2.dir == 5 ? true : (obj_hitbox_hook_2.dir == 6 ? true : obj_hitbox_hook_2.dir == 7))))
    {
        if (vstate == 0)
            y -= 8
    }
}
audio_play_sound(snd_mick_hook_2, 1, 0)
