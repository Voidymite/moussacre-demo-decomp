if (room != rm_city_4)
{
    draw_sprite_ext(spr_black, 0, -4000, -4000, room_width + 8000, 4000, 0, c_black, 1);
    draw_sprite_ext(spr_black, 0, -4000, room_height, room_width + 8000, 4000, 0, c_black, 1);
    draw_sprite_ext(spr_black, 0, -4000, -4000, 4000, room_height + 8000, 0, c_black, 1);
    draw_sprite_ext(spr_black, 0, room_width, -4000, 4000, room_height + 8000, 0, c_black, 1);
}
else
{
    draw_sprite_ext(spr_black, 0, -4000, room_height, room_width + 8000, 4000, 0, c_black, 1);
    draw_sprite_ext(spr_black, 0, -4000, -4000, 4000, room_height + 8000, 0, c_black, 1);
    draw_sprite_ext(spr_black, 0, room_width, -4000, 4000, room_height + 8000, 0, c_black, 1);
}

if (room == rm_finisher)
{
    flicker_time--;
    
    if (flicker_time == 0)
        flicker_time = 10;
    
    if (flicker_time <= 5)
        flicker = 1;
    else
        flicker = 0;
    
    depth = -99999;
    
    if (obj_finisher_mick.phase == 1 && obj_finisher_mick.timer_whole >= 0 && obj_finisher_mick.timer_slash <= 120)
    {
        if (!gamepad_is_connected(0))
        {
            if (global.action2 == 88)
                draw_sprite(spr_finisher_slash_kb, flicker, p1x, 1300);
            else
                draw_sprite(spr_finisher_slash_rb, flicker, p1x, 1300);
        }
        else if (global.c_action2 == 32771)
        {
            draw_sprite(spr_finisher_slash_c, flicker, p1x, 1300);
        }
        else
        {
            draw_sprite(spr_finisher_slash_rb, flicker, p1x, 1300);
        }
    }
    
    if (obj_finisher_mick.phase == 2 && obj_finisher_mick.timer_whole <= 120)
    {
        if (!gamepad_is_connected(0))
        {
            if (global.action1 == 90)
                draw_sprite(spr_finisher_jump_kb, flicker, p1x, p1y);
            else
                draw_sprite(spr_finisher_jump_rb, flicker, p1x, p1y);
            
            if (global.action2 == 88)
                draw_sprite(spr_finisher_spin_kb, flicker, p2x, p2y);
            else
                draw_sprite(spr_finisher_spin_rb, flicker, p2x, p2y);
            
            if (global.down == 40)
                draw_sprite(spr_finisher_dive_kb, flicker, p3x, p3y);
            else
                draw_sprite(spr_finisher_dive_rb, flicker, p3x, p3y);
        }
        else
        {
            if (global.c_action1 == 32769)
                draw_sprite(spr_finisher_jump_c, flicker, p1x, p1y);
            else
                draw_sprite(spr_finisher_jump_rb, flicker, p1x, p1y);
            
            if (global.c_action2 == 32771)
                draw_sprite(spr_finisher_spin_c, flicker, p2x, p2y);
            else
                draw_sprite(spr_finisher_spin_rb, flicker, p2x, p2y);
            
            draw_sprite(spr_finisher_dive_c, flicker, p3x, p3y);
        }
    }
}
