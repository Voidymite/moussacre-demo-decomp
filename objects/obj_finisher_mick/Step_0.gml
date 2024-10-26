var down, action1, action2;

if (!gamepad_is_connected(0))
{
    down = keyboard_check_pressed(global.down) || mouse_check_button_pressed(global.down);
    action1 = keyboard_check_pressed(global.action1) || mouse_check_button_pressed(global.action1);
    action2 = keyboard_check_pressed(global.action2) || mouse_check_button_pressed(global.action2);
    
    if (global.down == 1)
        down = mouse_check_button_pressed(global.down);
    
    if (global.action1 == 1)
        action1 = mouse_check_button_pressed(global.action1);
    
    if (global.action2 == 1)
        action2 = mouse_check_button_pressed(global.action2);
}
else
{
    gamepad_set_axis_deadzone(0, 0.24);
    down = gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3 || keyboard_check_pressed(global.down) || mouse_check_button_pressed(global.down);
    action1 = gamepad_button_check_pressed(0, global.c_action1) || keyboard_check_pressed(global.action1) || mouse_check_button_pressed(global.action1);
    action2 = gamepad_button_check_pressed(0, global.c_action2) || keyboard_check_pressed(global.action2) || mouse_check_button_pressed(global.action2);
    
    if (global.down == 1)
        down = mouse_check_button_pressed(global.down) || gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3;
    
    if (global.action1 == 1)
        action1 = mouse_check_button_pressed(global.action1) || gamepad_button_check_pressed(0, global.c_action1);
    
    if (global.action2 == 1)
        action2 = mouse_check_button_pressed(global.action2) || gamepad_button_check_pressed(0, global.c_action2);
}

if (sprite_index == spr_finisher_mick_spin || sprite_index == spr_finisher_mick_jump)
    image_speed = 1;
else
    image_speed = 0;

image_xscale = size;
image_yscale = size;
timer_whole--;

if (x_shake > 0)
{
    x_shake -= 2;
    y_shake -= 2;
}

if (lockout > -10)
    lockout--;
else if (phase == 1 || phase == 2)
    gamepad_set_vibration(0, 0, 0);

if (phase == 1)
{
    if (timer_slash > 120 && timer_whole <= 480)
        x += ((1344 - x) * 0.075);
    
    if (timer_whole <= 120 && timer_whole > 0)
        x = x_pos + irandom_range(-x_shake, x_shake);
    
    y = y_pos + irandom_range(-y_shake, y_shake);
    image_index = pose;
    
    if (pose == 1)
        obj_finisher_boss.image_index = 1;
    
    if (pose == 3)
        obj_finisher_boss.image_index = 2;
    
    if (pose == 5)
        obj_finisher_boss.image_index = 3;
    
    if (lockout <= 0)
    {
        if (pose == 1)
            pose = 2;
        
        if (pose == 3)
            pose = 4;
        
        if (pose == 5)
            pose = 6;
    }
    
    timer_slash--;
    
    if (lockout > 0)
        lockout--;
    else
        gamepad_set_vibration(0, 0, 0);
    
    if (timer_slash == 120)
    {
        x_pos = x;
        y_pos = y;
    }
    
    if (timer_slash == 180)
        audio_play_sound(snd_boss_finisher_effect_1, 1, 0);
    
    if (timer_slash <= 120 && timer_slash > 0 && timer_whole > 0 && lockout <= 0)
    {
        if (action2)
        {
            repeat (5)
                instance_create_depth(x + 800, 900, -55, obj_item_gem_finisher);
            
            audio_play_sound(snd_mick_kill_3, 1, 0);
            lockout = 5;
            timer_slash = 60;
            stop = 0;
            global.score += 50;
            
            if (global.numbers && global.difficulty != 2)
                instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 100;
            
            if (shake_add < 40)
                shake_add++;
            
            repeat (8)
                instance_create_depth(x + 800 + irandom_range(-400, 400), 900 + irandom_range(-400, 400), -20, obj_particle_paint_blackwhite);
            
            repeat (24)
            {
                if (global.particles)
                    instance_create_depth(x + 800 + irandom_range(-400, 400), 900 + irandom_range(-400, 400), -20, obj_particle_paint_blackwhite);
            }
            
            if (global.rumble)
                gamepad_set_vibration(0, 0.5 + (shake_add * 0.0125), 0.5 + (shake_add * 0.0125));
            
            if (pose == 0 && !stop)
            {
                pose = 1;
                x_shake = 20 + shake_add;
                y_shake = 20 + shake_add;
                obj_finisher_boss.x_shake = 20 + shake_add;
                obj_finisher_boss.y_shake = 20 + shake_add;
                stop = 1;
            }
            
            if (pose == 2 && !stop)
            {
                pose = choose(3, 5);
                x_shake = 20 + shake_add;
                y_shake = 20 + shake_add;
                obj_finisher_boss.x_shake = 20 + shake_add;
                obj_finisher_boss.y_shake = 20 + shake_add;
                stop = 1;
            }
            
            if (pose == 4 && !stop)
            {
                pose = choose(1, 5);
                x_shake = 20 + shake_add;
                y_shake = 20 + shake_add;
                obj_finisher_boss.x_shake = 20 + shake_add;
                obj_finisher_boss.y_shake = 20 + shake_add;
                stop = 1;
            }
            
            if (pose == 6 && !stop)
            {
                pose = choose(1, 3);
                x_shake = 20 + shake_add;
                y_shake = 20 + shake_add;
                obj_finisher_boss.x_shake = 20 + shake_add;
                obj_finisher_boss.y_shake = 20 + shake_add;
                stop = 1;
            }
            
            if (pose == 1 || pose == 3)
                instance_create_depth(x + 800, 900, -50, obj_particle_slash_vertical);
            else
                instance_create_depth(x + 800, 900, -50, obj_particle_slash_horizontal);
        }
    }
    
    if (timer_slash == 0)
    {
        if (image_index == 0)
            phase = 99;
        else
            timer_whole = 0;
    }
    
    if (timer_whole <= 0 && timer_whole > -10)
    {
        x += ((-500 - x) * 0.15);
        image_index = 0;
    }
    
    if (timer_whole == -10)
    {
        phase = 2;
        timer_whole = 180;
        gamepad_set_vibration(0, 0, 0);
        x = 2000;
        y = 950;
        obj_finisher_boss.x = 2400;
        obj_finisher_boss.y = 700;
        size = 0.75;
        audio_play_sound(snd_boss_finisher_effect_2, 1, 0);
        audio_play_sound(snd_boss_finisher_effect_2, 1, 0);
        obj_finisher_boss.x_pos = 2400;
        obj_finisher_boss.y_pos = 700;
    }
}

if (phase == 2)
{
    shake_add = 0;
    
    if (timer_whole > 170)
    {
        x += ((1000 - x) * 0.3);
        y += ((1700 - y) * 0.3);
        size += 0.025;
    }
    
    if (timer_whole == 170)
    {
        x = 1000;
        y = 1700;
        size = 1;
    }
    
    sprite_index = spr_finisher_mick_2;
    image_index = 0;
    
    if (timer_whole <= 120)
    {
        if (down || action1 || action2 || timer_whole == 0)
        {
            if (timer_whole == 0)
            {
                obj_finisher_boss.x_shake = 20;
                obj_finisher_boss.y_shake = 20;
                timer_whole = 10000;
                audio_play_sound(snd_mick_stun_1, 1, 0);
            }
            
            phase = 3;
        }
        
        if (down)
        {
            instance_create_depth(x, y, depth, obj_finisher_mick_dive);
            audio_play_sound(snd_boss_finisher_dive_1, 1, 0);
            move = 3;
            x = 2400;
            y = -800;
        }
        
        if (action1)
        {
            move = 2;
            audio_play_sound(snd_boss_finisher_jump_1, 1, 0);
        }
        
        if (action2)
        {
            move = 1;
            audio_play_sound(snd_boss_finisher_spin_1, 1, 0);
        }
    }
}

if (phase == 3)
{
    moving--;
    
    if (move == 0)
    {
        image_index = 5;
        obj_finisher_boss.image_index = 1;
        size = 1;
    }
    
    if (move == 1 || move == 2)
    {
        if (move == 1)
            sprite_index = spr_finisher_mick_spin;
        
        if (move == 2)
            sprite_index = spr_finisher_mick_jump;
        
        if (moving <= 0)
        {
            x += 100;
            y -= 75;
            size -= 0.05;
        }
        
        if (image_xscale == 0.4)
        {
            sprite_index = spr_finisher_mick_3;
            
            if (move == 1)
            {
                image_index = 0;
                obj_finisher_boss.image_index = 0;
            }
            
            if (move == 2)
            {
                image_index = 1;
                obj_finisher_boss.image_index = 1;
            }
            
            phase = 4;
            size = 1;
            x = 2200;
            y = 1700;
            x_pos = 2200;
            y_pos = 1700;
            obj_finisher_boss.x = 1000;
            obj_finisher_boss.y = 400;
            obj_finisher_boss.x_pos = 1000;
            obj_finisher_boss.y_pos = 700;
            obj_finisher_boss.sprite_index = spr_finisher_boss_os_3;
        }
    }
    
    if (move == 3)
    {
        image_index = 4;
        y += 100;
        
        if (y == 1000)
            audio_play_sound(snd_boss_finisher_dive_2, 1, 0);
        
        if (y == 1400)
        {
            sprite_index = spr_finisher_mick_3;
            image_index = 2;
            obj_finisher_boss.image_index = 2;
            phase = 4;
            size = 1;
            x = 2200;
            y = 1800;
            x_pos = 2200;
            y_pos = 1800;
            obj_finisher_boss.x = -10000;
            obj_finisher_boss.y = -10000;
            obj_finisher_boss.x_pos = -10000;
            obj_finisher_boss.y_pos = -10000;
            obj_finisher_boss.sprite_index = spr_finisher_boss_os_3;
        }
    }
}

if (phase == 4)
{
    shake--;
    
    if (shake == 59)
    {
        if (move != 0)
            audio_play_sound(snd_boss_finisher_kill_1, 1, 0);
        else
            audio_play_sound(snd_boss_finisher_thump_1, 1, 0);
    }
    
    if (shake <= 59 && shake > -141 && move > 0)
        instance_create_depth(irandom_range(200, 3000), irandom_range(100, 1700), -55, obj_item_gem_finisher);
    
    if (shake == 59)
    {
        x_shake = 60;
        y_shake = 60;
        obj_finisher_boss.x_shake = 60;
        obj_finisher_boss.y_shake = 60;
        global.score += 5000;
        
        if (global.numbers && global.difficulty != 2)
            instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 10000;
        
        if (global.rumble)
            gamepad_set_vibration(0, 1, 1);
    }
    
    if (shake == 10)
        gamepad_set_vibration(0, 0, 0);
    
    if (move == 0 && image_index != 3)
    {
        sprite_index = spr_finisher_mick_3;
        image_index = 3;
        obj_finisher_boss.image_index = 2;
        size = 1;
        x = 2200;
        y = 1700;
        x_pos = 2200;
        y_pos = 1700;
        obj_finisher_boss.x = 1000;
        obj_finisher_boss.y = 400;
        obj_finisher_boss.x_pos = 1000;
        obj_finisher_boss.y_pos = 700;
        x_shake = 60;
        y_shake = 60;
        obj_finisher_boss.x_shake = 60;
        obj_finisher_boss.y_shake = 60;
        obj_finisher_boss.sprite_index = spr_finisher_boss_os_3;
    }
    
    x = x_pos + irandom_range(-x_shake, x_shake);
    y = y_pos + irandom_range(-y_shake, y_shake);
}

if (phase == 99)
{
    timer_slash--;
    
    if (timer_slash <= 0 && timer_slash > -5)
        x += ((1850 - x) * 0.5);
    else
        x = x_pos + irandom_range(-x_shake, x_shake);
    
    y = y_pos + irandom_range(-y_shake, y_shake);
    
    if (timer_slash == -5)
    {
        image_index = 7;
        obj_finisher_boss.image_index = 4;
        timer_whole = 10000;
        x_shake = 20;
        y_shake = 20;
        obj_finisher_boss.x_shake = 20;
        obj_finisher_boss.y_shake = 20;
        audio_play_sound(snd_mick_stun_1, 1, 0);
    }
}

if (global.rumble)
{
    if (timer_whole == 10000)
        gamepad_set_vibration(0, 1, 0.4);
    
    if (timer_whole == 9990)
        gamepad_set_vibration(0, 0.4, 1);
    
    if (timer_whole == 9980)
        gamepad_set_vibration(0, 0, 0);
}

if (timer_whole == 9940)
    phase = 4;

if (shake == -360)
{
    with (obj_mick)
    {
        astate = 8;
        x = -100000;
        y = -100000;
    }
    
    instance_destroy(obj_mick_ui_face);
    instance_destroy(obj_mick_ui_gems);
    instance_create_depth(camera_get_view_x(view_camera[0]) - 1000, camera_get_view_y(view_camera[0] - 1000), -2000, obj_transition_whitefade_1);
}
