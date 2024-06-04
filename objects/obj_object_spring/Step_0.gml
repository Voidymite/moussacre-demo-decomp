if place_meeting(x, y, obj_mick)
{
    with (obj_mick)
    {
        astate = 0
        y -= 2
        bounce = 1
        vspd = (-(round(jump_height / 0.48)))
        audio_play_sound(snd_object_spring, 1, 0)
    }
    if (sprite_index != spr_object_spring_moving)
    {
        image_index = 0
        sprite_index = spr_object_spring_moving
    }
}
if (sprite_index == spr_object_spring_moving && image_index > 9)
    sprite_index = spr_object_spring_still
