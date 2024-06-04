if (place_meeting(x, y, obj_mick) && (!(place_meeting(x, y, obj_hitbox_spin))) && (!(place_meeting(x, y, obj_hitbox_doublejump))) && (!(place_meeting(x, y, obj_hitbox_groundpound))))
{
    if (x <= obj_mick.x)
    {
        with (obj_mick)
        {
            if (stun_timer == -25 && hurt_timer == 0)
            {
                if (dash_time <= 8)
                    global.hspd = 48
                else if global.rumble
                    gamepad_set_vibration(0, 0.025, 0.025)
            }
        }
    }
    else
    {
        with (obj_mick)
        {
            if (stun_timer == -25 && hurt_timer == 0)
            {
                if (dash_time <= 8)
                    global.hspd = -48
                else if global.rumble
                    gamepad_set_vibration(0, 0.025, 0.025)
            }
        }
    }
    with (obj_mick)
    {
        if (stun_timer == -25 && hurt_timer == 0)
        {
            if (dash_time <= 8)
            {
                stun_timer = 25
                astate = 7
            }
            else if global.rumble
                gamepad_set_vibration(0, 0.025, 0.025)
        }
    }
}
if (place_meeting(x, y, obj_hitbox_spin) ? true : (place_meeting(x, y, obj_hitbox_doublejump) ? true : (place_meeting(x, y, obj_hitbox_groundpound) ? true : (place_meeting(x, y, obj_hitbox_shoot) ? true : (place_meeting(x, y, obj_hitbox_hook_3) ? true : place_meeting(x, y, obj_hitbox_bomb_2))))))
{
    ds_map_replace(obj_global.temp_data, key, true)
    if (!instance_exists(obj_object_mothermouse_spawn))
        global.mommouse += 1
    else
    {
        with (obj_object_mothermouse_spawn)
            moves = irandom_range(4, 6)
    }
}
if (place_meeting(x, y, obj_object_saw_horizontal) ? true : (place_meeting(x, y, obj_object_saw_vertical) ? true : (place_meeting(x, y, obj_hitbox_sawdrone_attack_1) ? true : place_meeting(x, y, obj_hitbox_sawdrone_attack_2))))
{
    instance_create_depth(x, y, -10, obj_particle_slash_vertical)
    if (color == 0 ? true : color == 3)
    {
        instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 0
        instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 0
    }
    if (color == 1 ? true : color == 4)
    {
        instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 1
        instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 1
    }
    if (color == 2 ? true : color == 5)
    {
        instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 2
        instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 2
    }
    repeat (36)
        instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_paint_color)
    repeat (108)
    {
        if global.particles
            instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_paint_color)
    }
    scr_screenshake(10);
    instance_destroy()
}
if (place_meeting(x, y, obj_hitbox_spin) ? true : (place_meeting(x, y, obj_hitbox_doublejump) ? true : (place_meeting(x, y, obj_hitbox_groundpound) ? true : (place_meeting(x, y, obj_object_waterspout) ? true : (place_meeting(x, y, obj_object_collapse) ? true : (place_meeting(x, y, obj_hitbox_shoot) ? true : (place_meeting(x, y, obj_hitbox_hook_3) ? true : place_meeting(x, y, obj_hitbox_bomb_2))))))))
{
    if place_meeting(x, y, obj_hitbox_spin)
    {
        instance_create_depth(round((obj_hitbox_spin.x + x) / 2), round((obj_hitbox_spin.y + y) / 2), -10, obj_particle_slash_horizontal)
        if (color == 0 ? true : color == 3)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_1).color = 0
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_2).color = 0
        }
        if (color == 1 ? true : color == 4)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_1).color = 1
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_2).color = 1
        }
        if (color == 2 ? true : color == 5)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_1).color = 2
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_2).color = 2
        }
        if drop
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow)
        }
        if (global.sp < global.sp_max)
            global.sp += 1
    }
    if place_meeting(x, y, obj_hitbox_doublejump)
    {
        instance_create_depth(round((obj_hitbox_doublejump.x + x) / 2), round((obj_hitbox_doublejump.y + y) / 2), -10, obj_particle_slash_vertical)
        if (color == 0 ? true : color == 3)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 0
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 0
        }
        if (color == 1 ? true : color == 4)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 1
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 1
        }
        if (color == 2 ? true : color == 5)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 2
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 2
        }
        if drop
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow)
        }
        if (global.sp < global.sp_max)
            global.sp += 1
        with (obj_mick)
        {
            astate = 4
            djump = 0
            y -= 2
            vstate = 1
            vspd = (-jump_height)
        }
    }
    if place_meeting(x, y, obj_hitbox_groundpound)
    {
        instance_create_depth(round((obj_hitbox_groundpound.x + x) / 2), round((obj_hitbox_groundpound.y + y) / 2), -10, obj_particle_slash_vertical)
        if (color == 0 ? true : color == 3)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 0
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 0
        }
        if (color == 1 ? true : color == 4)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 1
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 1
        }
        if (color == 2 ? true : color == 5)
        {
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_3).color = 2
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_4).color = 2
        }
        if drop
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow)
        }
        if (global.sp < global.sp_max)
            global.sp += 1
        with (obj_mick)
        {
            apex = 0
            stalled = 0
            astate = 6
            djump = 0
            y -= 2
            vstate = 1
            vspd = (-jump_height)
            spin_time = 0
            dash_time = 0
        }
    }
    if (place_meeting(x, y, obj_hitbox_shoot) ? true : (place_meeting(x, y, obj_hitbox_hook_3) ? true : place_meeting(x, y, obj_hitbox_bomb_2)))
    {
        no_splat = 1
        audio_play_sound(snd_mick_kill_4, 1, 0)
        instance_create_depth(x, y, -10, obj_particle_burst)
        if (color == 0 ? true : color == 3)
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_5).color = 0
        if (color == 1 ? true : color == 4)
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_5).color = 1
        if (color == 2 ? true : color == 5)
            instance_create_depth(x, y, -10, obj_particle_mouse_dead_5).color = 2
        if (point_distance(x, y, obj_mick.x, obj_mick.y) < 2400)
            audio_play_sound(snd_enemy_guncop_bullet_3, 1, 0)
        if drop
        {
            repeat (5)
                instance_create_depth(x, y, -2, obj_item_gem_follow)
        }
    }
    repeat (36)
        instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_paint_color)
    repeat (108)
    {
        if global.particles
            instance_create_depth((x + (irandom_range(-100, 100))), (y + (irandom_range(-100, 100))), -9, obj_particle_paint_color)
    }
    scr_screenshake(10);
    instance_destroy()
}
if (x < obj_mick.x && color < 3)
    image_xscale = -1
else
    image_xscale = 1
if instance_exists(obj_trigger_death_mouse)
{
    if (point_distance(x, y, obj_trigger_death_mouse.x, obj_trigger_death_mouse.y) < 1200)
    {
        ready = 1
        if ((!scared) && (!(place_meeting(x, y, obj_wall_fake))) && color < 3)
        {
            scr_stopsound_mouse_voice()
            scared_sound = irandom_range(0, 1)
            if (scared_sound == 0)
                audio_play_sound(snd_enemy_mouse_scared_voice_1, 1, 0)
            if (scared_sound == 1)
                audio_play_sound(snd_enemy_mouse_scared_voice_2, 1, 0)
            scared = 1
            scared_time = 30
            image_index = 0
        }
        if ((!scared) && (!(place_meeting(x, y, obj_wall_fake))) && color < 3)
        {
            scr_stopsound_mouse_voice()
            scared_sound = irandom_range(0, 1)
            if (scared_sound == 0)
                audio_play_sound(snd_enemy_mouse_scared_voice_1, 1, 0)
            if (scared_sound == 1)
                audio_play_sound(snd_enemy_mouse_scared_voice_2, 1, 0)
            scared = 1
            scared_time = 30
            image_index = 0
        }
    }
    else
        ready = 0
}
if (scared_time > 0)
    scared_time -= 1
if (scared_time > 2)
{
    if (color == 0)
        sprite_index = spr_enemy_mouse_brown_scared
    if (color == 1)
        sprite_index = spr_enemy_mouse_white_scared
    if (color == 2)
        sprite_index = spr_enemy_mouse_gray_scared
    if (image_index == 4)
        image_index = 2
}
if (scared_time == 2)
    image_index = 4
if (scared_time == 1)
    image_index = 5
if (!scared)
{
    if (color == 0)
        idle = spr_enemy_mouse_brown_idle
    if (color == 1)
        idle = spr_enemy_mouse_white_idle
    if (color == 2)
        idle = spr_enemy_mouse_gray_idle
    if (color == 3)
        idle = spr_enemy_mouse_brown_sleep
    if (color == 4)
        idle = spr_enemy_mouse_white_sleep
    if (color == 5)
        idle = spr_enemy_mouse_gray_sleep
}
else if ((!(point_distance(x, y, obj_mick.x, obj_mick.y))) < 1200)
{
    if (color == 0 ? true : color == 3)
        idle = spr_enemy_mouse_brown_shake
    if (color == 1 ? true : color == 4)
        idle = spr_enemy_mouse_white_shake
    if (color == 2 ? true : color == 5)
        idle = spr_enemy_mouse_gray_shake
}
else
{
    if (color == 0 ? true : color == 3)
        idle = spr_enemy_mouse_brown_idle
    if (color == 1 ? true : color == 4)
        idle = spr_enemy_mouse_white_idle
    if (color == 2 ? true : color == 5)
        idle = spr_enemy_mouse_gray_idle
}
if (scared_time == 0 && (!attacking))
    sprite_index = idle
if (scared && (!(place_meeting(x, y, obj_wall_fake))))
    attack_time -= 1
if (scared && place_meeting(x, y, obj_wall_fake) && global.infakewall)
    attack_time -= 1
if (hspd > 0)
    hspd -= 1
if (hspd < 0)
    hspd += 1
if place_meeting((x + hspd), y, obj_wall)
{
    while (!(place_meeting((x + sign(hspd)), y, obj_wall)))
        x += sign(hspd)
    hspd = 0
}
if place_meeting((x + hspd), y, obj_object_block_spin)
{
    while (!(place_meeting((x + sign(hspd)), y, obj_object_block_spin)))
        x += sign(hspd)
    hspd = 0
}
if place_meeting((x + hspd), y, obj_object_block_uni)
{
    while (!(place_meeting((x + sign(hspd)), y, obj_object_block_uni)))
        x += sign(hspd)
    hspd = 0
}
if place_meeting(x, (y + vspd), obj_wall)
{
    while (!(place_meeting(x, (y + sign(vspd)), obj_wall)))
        y += sign(vspd)
    vspd = 0
}
if place_meeting(x, (y + vspd), obj_object_block_groundpound)
{
    while (!(place_meeting(x, (y + sign(vspd)), obj_object_block_groundpound)))
        y += sign(vspd)
    vspd = 0
}
if place_meeting(x, (y + vspd), obj_object_block_uni)
{
    while (!(place_meeting(x, (y + sign(vspd)), obj_object_block_uni)))
        y += sign(vspd)
    vspd = 0
}
if place_meeting((x + hspd), (y + vspd), obj_wall)
{
    while (!(place_meeting((x + sign(hspd)), (y + sign(vspd)), obj_wall)))
    {
        x += sign(hspd)
        y += sign(vspd)
    }
    hspd = 0
    vspd = 0
}
if place_meeting((x + hspd), (y + vspd), obj_object_block_uni)
{
    while (!(place_meeting((x + sign(hspd)), (y + sign(vspd)), obj_object_block_uni)))
    {
        x += sign(hspd)
        y += sign(vspd)
    }
    hspd = 0
    vspd = 0
}
if place_meeting((x + 2), y, obj_wall)
{
    if (image_xscale == 1)
        x += hspd
    else
        x += 0
}
if place_meeting((x - 2), y, obj_wall)
{
    if (image_xscale == -1)
        x += hspd
    else
        x += 0
}
if ((!(place_meeting((x - 2), y, obj_wall))) && (!(place_meeting((x + 2), y, obj_wall))))
    x += hspd
if (place_meeting(x, (y + 2), obj_wall) ? true : (place_meeting(x, (y + 2), obj_object_block_groundpound) ? true : place_meeting(x, (y + 2), obj_object_block_uni)))
    vstate = 0
if ((!(place_meeting(x, (y + 2), obj_wall))) && (!(place_meeting(x, (y + 2), obj_object_block_groundpound))) && (!(place_meeting(x, (y + 2), obj_object_block_uni))))
    vstate = 1
if vstate
{
    y += vspd
    vspd += 2
    if (vspd >= 48)
        vspd = 48
}
else
    vspd = 0
if (y > (room_height + 500))
{
    no_splat = 1
    instance_destroy()
}
if (point_distance(x, y, obj_camera.x, obj_camera.y) > 5000)
    instance_deactivate_object(id)
