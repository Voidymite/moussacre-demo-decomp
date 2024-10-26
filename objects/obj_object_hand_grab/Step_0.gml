if (place_meeting(x, y, obj_mick) && sprite_index != spr_object_hand_grab && sprite_index != spr_object_hand_grab_main)
{
    audio_play_sound(snd_object_hand_1, 1, 0);
    obj_mick.sprite_index = spr_mick_idle;
    image_index = 0;
    
    if (!main)
        sprite_index = spr_object_hand_grab;
    else
        sprite_index = spr_object_hand_grab_main;
}

if (sprite_index == spr_object_hand_grab || sprite_index == spr_object_hand_grab_main)
{
    if (!grab)
    {
        grab = 1;
        obj_mick.astate = 8;
        global.hspd = 0;
        obj_mick.vspd = 0;
    }
    
    if (image_index >= 5)
    {
        image_speed = 0;
        time--;
    }
    else
    {
        obj_mick.image_alpha = 0;
    }
    
    if (image_index == 4)
    {
        if (room == rm_forest_3)
        {
            if (x == 31520)
                instance_create_depth(37088, 7392, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (x == 35712)
                instance_create_depth(32640, 1504, 0, obj_object_hand_release);
            
            if (x == 62400)
                instance_create_depth(58976, 1504, 0, obj_object_hand_release);
            
            if (x == 67168)
                instance_create_depth(52032, 6592, 0, obj_object_hand_release);
        }
        
        if (room == rm_forest_4)
        {
            if (x == 26848)
                instance_create_depth(800, 1280, 0, obj_object_hand_release);
        }
        
        if (room == rm_forest_5)
        {
            if (x == 672)
                instance_create_depth(7264, 480, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (x == 4896)
                instance_create_depth(2048, 1312, 0, obj_object_hand_release);
            
            if (x == 5216)
                instance_create_depth(8864, 736, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (x == 12960)
                instance_create_depth(7072, 896, 0, obj_object_hand_release);
            
            if (x == 16960)
                instance_create_depth(20672, 288, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (x == 20672)
                instance_create_depth(15936, 512, 0, obj_object_hand_release);
            
            if (x == 16448)
                instance_create_depth(2048, 1312, 0, obj_object_hand_release);
            
            if (x == 26592)
                instance_create_depth(400, 1312, 0, obj_object_hand_release);
        }
        
        if (room == rm_forest_7)
        {
            if (x == 15296)
                instance_create_depth(192, 19136, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (x == 128)
                instance_create_depth(12672, 20736, 0, obj_object_hand_release);
            
            if (x == 10048)
                instance_create_depth(7744, 15680, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (x == 1664)
                instance_create_depth(3456, 17152, 0, obj_object_hand_release);
            
            if (x == 640)
                instance_create_depth(14848, 13824, 0, obj_object_hand_release);
            
            if (x == 14848)
                instance_create_depth(7744, 15680, 0, obj_object_hand_release);
            
            if (x == 1408)
                instance_create_depth(640, 13824, 0, obj_object_hand_release);
        }
        
        if (room == rm_forest_10)
        {
            if (y == 37600)
                instance_create_depth(7872, 35008, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (x == 7904)
                instance_create_depth(2912, 36480, 0, obj_object_hand_release);
            
            if (y == 35040)
                instance_create_depth(7904, 32160, 0, obj_object_hand_release).sprite_index = spr_object_hand_release_main;
            
            if (y == 32224)
                instance_create_depth(640, 34688, 0, obj_object_hand_release);
        }
    }
}

if (time == 0)
{
    time = 60;
    
    if (!main)
        sprite_index = spr_object_hand_still;
    else
        sprite_index = spr_object_hand_still_main;
    
    image_index = 0;
    image_speed = 1;
    grab = 0;
}
