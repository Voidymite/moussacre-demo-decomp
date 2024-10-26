size = 0;
image_xscale = size;
image_yscale = size;
phase = 0;
shake_time = 0;
time = 30;

if (global.level != 3)
{
    if (global.score_average < 1)
    {
        sprite_index = spr_mick_ui_rank_f;
        rank = 1;
    }
    
    if (global.score_average >= 1 && global.score_average < 45)
    {
        sprite_index = spr_mick_ui_rank_d;
        rank = 2;
    }
    
    if (global.score_average >= 45 && global.score_average < 90)
    {
        sprite_index = spr_mick_ui_rank_c;
        rank = 3;
    }
    
    if (global.score_average >= 90 && global.score_average < 135)
    {
        sprite_index = spr_mick_ui_rank_b;
        rank = 4;
    }
    
    if (global.score_average >= 135 && global.score_average < 180)
    {
        sprite_index = spr_mick_ui_rank_a;
        rank = 5;
    }
    
    if (global.score_average >= 180 && global.damaged >= 3)
    {
        sprite_index = spr_mick_ui_rank_a;
        rank = 5;
    }
    
    if (global.score_average >= 180 && global.damaged < 3)
    {
        sprite_index = spr_mick_ui_rank_x;
        rank = 6;
    }
}
else
{
    if (global.score_average < 1)
    {
        sprite_index = spr_mick_ui_rank_f;
        rank = 1;
    }
    
    if (global.score_average >= 1 && global.score_average < 90)
    {
        sprite_index = spr_mick_ui_rank_d;
        rank = 2;
    }
    
    if (global.score_average >= 90 && global.score_average < 180)
    {
        sprite_index = spr_mick_ui_rank_c;
        rank = 3;
    }
    
    if (global.score_average >= 180 && global.score_average < 270)
    {
        sprite_index = spr_mick_ui_rank_b;
        rank = 4;
    }
    
    if (global.score_average >= 270 && global.score_average < 360)
    {
        sprite_index = spr_mick_ui_rank_a;
        rank = 5;
    }
    
    if (global.score_average >= 360 && global.damaged > 0)
    {
        sprite_index = spr_mick_ui_rank_a;
        rank = 5;
    }
    
    if (global.score_average >= 360 && global.damaged == 0)
    {
        sprite_index = spr_mick_ui_rank_x;
        rank = 6;
    }
}

if (global.difficulty == 0)
{
    if (global.demo == 1)
    {
        if (global.level == 1)
        {
            if (global.score_average > global.rscore_average)
                global.rscore_average = global.score_average;
            
            if (global.rscore_average >= 180)
            {
                if (global.damaged < 3)
                    global.rdamaged = global.damaged;
            }
        }
        
        if (global.level == 2)
        {
            if (global.score_average > global.l2_rscore_average)
                global.l2_rscore_average = global.score_average;
            
            if (global.l2_rscore_average >= 180)
            {
                if (global.damaged < 3)
                    global.l2_rdamaged = global.damaged;
            }
        }
        
        if (global.level == 3)
        {
            if (global.score_average > global.l3_rscore_average)
                global.l3_rscore_average = global.score_average;
            
            if (global.l3_rscore_average >= 180)
            {
                if (global.damaged < 1)
                    global.l3_rdamaged = global.damaged;
            }
        }
    }
    
    if (global.demo == 2)
    {
        if (global.level == 1)
        {
            if (global.score_average > global.rscore_average_d2)
                global.rscore_average_d2 = global.score_average;
            
            if (global.rscore_average_d2 >= 180)
            {
                if (global.damaged < 3)
                    global.rdamaged_d2 = global.damaged;
            }
        }
        
        if (global.level == 2)
        {
            if (global.score_average > global.l2_rscore_average_d2)
                global.l2_rscore_average_d2 = global.score_average;
            
            if (global.l2_rscore_average_d2 >= 180)
            {
                if (global.damaged < 3)
                    global.l2_rdamaged_d2 = global.damaged;
            }
        }
        
        if (global.level == 3)
        {
            if (global.score_average > global.l3_rscore_average_d2)
                global.l3_rscore_average_d2 = global.score_average;
            
            if (global.l3_rscore_average_d2 >= 180)
            {
                if (global.damaged < 1)
                    global.l3_rdamaged_d2 = global.damaged;
            }
        }
    }
    
    if (global.demo == 3)
    {
        if (global.level == 1)
        {
            if (global.score_average > global.rscore_average_d3)
                global.rscore_average_d3 = global.score_average;
            
            if (global.rscore_average_d3 >= 180)
            {
                if (global.damaged < 3)
                    global.rdamaged_d3 = global.damaged;
            }
        }
        
        if (global.level == 2)
        {
            if (global.score_average > global.l2_rscore_average_d3)
                global.l2_rscore_average_d3 = global.score_average;
            
            if (global.l2_rscore_average_d3 >= 180)
            {
                if (global.damaged < 3)
                    global.l2_rdamaged_d3 = global.damaged;
            }
        }
        
        if (global.level == 3)
        {
            if (global.score_average > global.l3_rscore_average_d3)
                global.l3_rscore_average_d3 = global.score_average;
            
            if (global.l3_rscore_average_d3 >= 180)
            {
                if (global.damaged < 1)
                    global.l3_rdamaged_d3 = global.damaged;
            }
        }
    }
    
    ini_open("PumpkinEater");
    scr_save();
    ini_close();
}
