life -= 1
rot += rot_spd
if (life == 0)
    instance_destroy()
if (place_meeting(x, y, obj_wall) ? true : (place_meeting(x, y, obj_item_checkpoint) ? true : (place_meeting(x, y, obj_object_block_spin) ? true : (place_meeting(x, y, obj_object_block_groundpound) ? true : (place_meeting(x, y, obj_object_block_uni) ? true : (place_meeting(x, y, obj_object_balloon) ? true : (place_meeting(x, y, obj_object_woodwall) ? true : (place_meeting(x, y, obj_enemy_batoncop) ? true : (place_meeting(x, y, obj_enemy_guncop) ? true : (place_meeting(x, y, obj_enemy_birdsoldier) ? true : (place_meeting(x, y, obj_enemy_hedgesoldier) ? true : (place_meeting(x, y, obj_enemy_turtlesoldier) ? true : (place_meeting(x, y, obj_enemy_beaversoldier) ? true : place_meeting(x, y, obj_enemy_mouse))))))))))))))
{
    instance_create_depth(x, y, -10, obj_hitbox_bomb_2)
    audio_play_sound(snd_mick_bomb_2, 1, 0)
    instance_destroy()
}
y += vspd
