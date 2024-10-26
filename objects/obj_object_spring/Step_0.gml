if (place_meeting(x, y, obj_mick))
{
    with (obj_mick)
    {
        y -= 2;
        bounce = 1;
        
        if (astate == 3)
        {
            vspd = -round(jump_height / 0.42);
            audio_play_sound(snd_object_spring_2, 1, 0);
            scr_screenshake();
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5, 0.5);
        }
        else
        {
            vspd = -round(jump_height / 0.48);
            audio_play_sound(snd_object_spring, 1, 0);
        }
        
        astate = 0;
    }
    
    if (sprite_index != spr_object_spring_moving)
    {
        image_index = 0;
        sprite_index = spr_object_spring_moving;
    }
}

if (sprite_index == spr_object_spring_moving && image_index > 9)
{
    sprite_index = spr_object_spring_still;
    gamepad_set_vibration(0, 0, 0);
}
