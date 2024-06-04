time -= 1
x -= (80 * image_xscale)
dust_time -= 1
if (dust_time == 0)
{
    dust_time = 4
    instance_create_depth((x + 40 * image_angle), y, -1, obj_particle_dust_small)
}
if (place_meeting(x, y, obj_bulletdelete) ? true : (time == 0 ? true : place_meeting(x, y, obj_wall)))
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
        audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0)
    instance_create_depth(x, y, -1, obj_particle_poof)
    instance_destroy()
}
