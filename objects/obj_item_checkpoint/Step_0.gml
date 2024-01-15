if (global.level < 0 || global.level > 10)
{
    if (room == rm_test_5)
    {
        if (x == 3916)
        {
            if (global.checkpoint == 1)
                open = 1
            else
                open = 0
        }
        if (x == 13064)
        {
            if (global.checkpoint == 2)
                open = 1
            else
                open = 0
        }
    }
}
if (global.level == 1)
{
    if (x == 17344 && room == rm_city_1)
    {
        if (global.checkpoint == 1)
            open = 1
        else
            open = 0
    }
    if (x == 35264 && room == rm_city_1)
    {
        if (global.checkpoint == 2)
            open = 1
        else
            open = 0
    }
    if (x == 832 && room == rm_city_3)
    {
        if (global.checkpoint == 3)
            open = 1
        else
            open = 0
    }
    if (x == 18112 && room == rm_city_3)
    {
        if (global.checkpoint == 4)
            open = 1
        else
            open = 0
    }
    if (x == 960 && room == rm_city_4)
    {
        if (global.checkpoint == 5)
            open = 1
        else
            open = 0
    }
    if (x == 1088 && room == rm_city_5)
    {
        if (global.checkpoint == 5)
            open = 1
        else
            open = 0
    }
    if (x == 1152 && room == rm_city_6)
    {
        if (global.checkpoint == 6)
            open = 1
        else
            open = 0
    }
    if (x == 2304 && room == rm_city_7)
    {
        if (global.checkpoint == 7)
            open = 1
        else
            open = 0
    }
    if (x == 1280 && room == rm_city_8)
    {
        if (global.checkpoint == 8)
            open = 1
        else
            open = 0
    }
}
if open
    sprite_index = spr_item_checkpoint_opened
else
    sprite_index = spr_item_checkpoint_closed
if (place_meeting(x, y, obj_mick) || place_meeting(x, y, obj_hitbox_spin) || place_meeting(x, y, obj_hitbox_doublejump) || place_meeting(x, y, obj_hitbox_groundpound))
{
    if (!open)
    {
        key = scr_tempdatagetkey()
        temp_data = ds_map_find_value(obj_global.temp_data, key)
        if ((!is_undefined(temp_data)) && temp_data == 1)
            drop = 0
        else
            drop = 1
        global.hp = global.hp_max
        audio_play_sound(snd_item_checkpoint_1, 1, false)
        ds_map_replace(obj_global.temp_data, key, 1)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_1)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_2)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_3)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_4)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_5)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_6)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_7)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_8)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_9)
        instance_create_depth(x, y, 10, obj_particle_checkpoint_letter_10)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        if global.particles
        {
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
            instance_create_depth((x + irandom_range(-100, 100)), (y + irandom_range(-100, 100)), -9, obj_particle_sparkle_rainbow)
        }
        if drop
            global.score += 1000
        if global.rumble
            gamepad_set_vibration(0, 0.5, 0.5)
        script_execute(scr_screenshake)
        if place_meeting(x, y, obj_hitbox_spin)
            instance_create_depth(round(((obj_hitbox_spin.x + x) / 2)), round(((obj_hitbox_spin.y + y) / 2)), -10, obj_particle_slash_horizontal)
        if place_meeting(x, y, obj_hitbox_doublejump)
        {
            instance_create_depth(round(((obj_hitbox_doublejump.x + x) / 2)), round(((obj_hitbox_doublejump.y + y) / 2)), -10, obj_particle_slash_vertical)
            with (obj_mick)
            {
                astate = 4
                djump = 0
                y -= 2
                vstate = 1
                vspd = -48
            }
        }
        if place_meeting(x, y, obj_hitbox_groundpound)
        {
            instance_create_depth(round(((obj_hitbox_groundpound.x + x) / 2)), round(((obj_hitbox_groundpound.y + y) / 2)), -10, obj_particle_slash_vertical)
            with (obj_mick)
            {
                apex = 0
                stalled = 0
                astate = 6
                djump = 0
                y -= 2
                vstate = 1
                vspd = -48
                spin_time = 0
                dash_time = 0
            }
        }
        if (global.level < 0 || global.level > 10)
        {
            if (room == rm_test_5)
            {
                if (x == 3916)
                    global.checkpoint = 1
                if (x == 13064)
                    global.checkpoint = 2
            }
        }
        if (global.level == 1)
        {
            if (room == rm_city_1)
            {
                if (x == 17344)
                    global.checkpoint = 1
                if (x == 35264)
                    global.checkpoint = 2
            }
            if (room == rm_city_3)
            {
                if (x == 832)
                    global.checkpoint = 3
                if (x == 18112)
                    global.checkpoint = 4
            }
            if (room == rm_city_4)
            {
                if (x == 960)
                    global.checkpoint = 5
            }
            if (room == rm_city_5)
            {
                if (x == 1088)
                    global.checkpoint = 5
            }
            if (room == rm_city_6)
            {
                if (x == 1152)
                    global.checkpoint = 6
            }
            if (room == rm_city_7)
            {
                if (x == 2304)
                    global.checkpoint = 7
            }
            if (room == rm_city_8)
            {
                if (x == 1280)
                    global.checkpoint = 8
            }
        }
    }
}
