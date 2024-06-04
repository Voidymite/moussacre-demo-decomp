x += spd
life -= 1
if (life == 0 ? true : (place_meeting(x, y, obj_object_block_uni) ? true : (place_meeting(x, y, obj_wall) ? true : (place_meeting(x, y, obj_enemy_meleeplane) ? true : place_meeting(x, y, obj_enemy_rangedplane)))))
{
    if (point_distance(x, y, obj_mick.x, obj_mick.y) < 3200)
        audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0)
    instance_create_depth(x, y, -1, obj_particle_poof)
    instance_create_depth(x, y, 0, obj_hitbox_plane_bullet)
    instance_destroy()
}
