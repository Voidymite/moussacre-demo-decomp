life--;
rot += rot_spd;

if (life == 0)
    instance_destroy();

if (place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_item_checkpoint) || place_meeting(x, y, obj_object_block_spin) || place_meeting(x, y, obj_object_block_groundpound) || place_meeting(x, y, obj_object_block_uni) || place_meeting(x, y, obj_object_balloon) || place_meeting(x, y, obj_object_woodwall) || place_meeting(x, y, obj_enemy_batoncop) || place_meeting(x, y, obj_enemy_guncop) || place_meeting(x, y, obj_enemy_birdsoldier) || place_meeting(x, y, obj_enemy_hedgesoldier) || place_meeting(x, y, obj_enemy_turtlesoldier) || place_meeting(x, y, obj_enemy_mouse) || place_meeting(x, y, obj_boss_os_drone) || place_meeting(x, y, obj_boss_os))
{
    instance_create_depth(x, y, -10, obj_hitbox_bomb_2);
    audio_play_sound(snd_mick_bomb_2, 1, 0);
    instance_destroy();
}

y += vspd;
