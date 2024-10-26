time = 0;
check = 0;

if (global.difficulty == 0)
{
    if (global.demo == 1)
    {
        if (global.level == 1)
        {
            if (check == 0)
            {
                if (global.hour < global.rhour)
                    check = 99;
                
                if (global.hour == global.rhour)
                    check = 1;
                
                if (global.hour > global.rhour)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.rminute)
                    check = 99;
                
                if (global.minute == global.rminute)
                    check = 2;
                
                if (global.minute > global.rminute)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.rsecond)
                    check = 99;
                
                if (global.second == global.rsecond)
                    check = 3;
                
                if (global.second > global.rsecond)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.rdsecond)
                    check = 99;
                
                if (global.dsecond == global.rdsecond)
                    check = 4;
                
                if (global.dsecond > global.rdsecond)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.rcsecond)
                    check = 99;
                
                if (global.csecond >= global.rcsecond)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.rhour = global.hour;
                global.rminute = global.minute;
                global.rsecond = global.second;
                global.rdsecond = global.dsecond;
                global.rcsecond = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
        
        if (global.level == 2)
        {
            if (check == 0)
            {
                if (global.hour < global.l2_rhour)
                    check = 99;
                
                if (global.hour == global.l2_rhour)
                    check = 1;
                
                if (global.hour > global.l2_rhour)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.l2_rminute)
                    check = 99;
                
                if (global.minute == global.l2_rminute)
                    check = 2;
                
                if (global.minute > global.l2_rminute)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.l2_rsecond)
                    check = 99;
                
                if (global.second == global.l2_rsecond)
                    check = 3;
                
                if (global.second > global.l2_rsecond)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.l2_rdsecond)
                    check = 99;
                
                if (global.dsecond == global.l2_rdsecond)
                    check = 4;
                
                if (global.dsecond > global.l2_rdsecond)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.l2_rcsecond)
                    check = 99;
                
                if (global.csecond >= global.l2_rcsecond)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.l2_rhour = global.hour;
                global.l2_rminute = global.minute;
                global.l2_rsecond = global.second;
                global.l2_rdsecond = global.dsecond;
                global.l2_rcsecond = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
        
        if (global.level == 3)
        {
            if (check == 0)
            {
                if (global.hour < global.l3_rhour)
                    check = 99;
                
                if (global.hour == global.l3_rhour)
                    check = 1;
                
                if (global.hour > global.l3_rhour)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.l3_rminute)
                    check = 99;
                
                if (global.minute == global.l3_rminute)
                    check = 2;
                
                if (global.minute > global.l3_rminute)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.l3_rsecond)
                    check = 99;
                
                if (global.second == global.l3_rsecond)
                    check = 3;
                
                if (global.second > global.l3_rsecond)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.l3_rdsecond)
                    check = 99;
                
                if (global.dsecond == global.l3_rdsecond)
                    check = 4;
                
                if (global.dsecond > global.l3_rdsecond)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.l3_rcsecond)
                    check = 99;
                
                if (global.csecond >= global.l3_rcsecond)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.l3_rhour = global.hour;
                global.l3_rminute = global.minute;
                global.l3_rsecond = global.second;
                global.l3_rdsecond = global.dsecond;
                global.l3_rcsecond = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
    }
    
    if (global.demo == 2)
    {
        if (global.level == 1)
        {
            if (check == 0)
            {
                if (global.hour < global.rhour_d2)
                    check = 99;
                
                if (global.hour == global.rhour_d2)
                    check = 1;
                
                if (global.hour > global.rhour_d2)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.rminute_d2)
                    check = 99;
                
                if (global.minute == global.rminute_d2)
                    check = 2;
                
                if (global.minute > global.rminute_d2)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.rsecond_d2)
                    check = 99;
                
                if (global.second == global.rsecond_d2)
                    check = 3;
                
                if (global.second > global.rsecond_d2)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.rdsecond_d2)
                    check = 99;
                
                if (global.dsecond == global.rdsecond_d2)
                    check = 4;
                
                if (global.dsecond > global.rdsecond_d2)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.rcsecond_d2)
                    check = 99;
                
                if (global.csecond >= global.rcsecond_d2)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.rhour_d2 = global.hour;
                global.rminute_d2 = global.minute;
                global.rsecond_d2 = global.second;
                global.rdsecond_d2 = global.dsecond;
                global.rcsecond_d2 = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
        
        if (global.level == 2)
        {
            if (check == 0)
            {
                if (global.hour < global.l2_rhour_d2)
                    check = 99;
                
                if (global.hour == global.l2_rhour_d2)
                    check = 1;
                
                if (global.hour > global.l2_rhour_d2)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.l2_rminute_d2)
                    check = 99;
                
                if (global.minute == global.l2_rminute_d2)
                    check = 2;
                
                if (global.minute > global.l2_rminute_d2)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.l2_rsecond_d2)
                    check = 99;
                
                if (global.second == global.l2_rsecond_d2)
                    check = 3;
                
                if (global.second > global.l2_rsecond_d2)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.l2_rdsecond_d2)
                    check = 99;
                
                if (global.dsecond == global.l2_rdsecond_d2)
                    check = 4;
                
                if (global.dsecond > global.l2_rdsecond_d2)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.l2_rcsecond_d2)
                    check = 99;
                
                if (global.csecond >= global.l2_rcsecond_d2)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.l2_rhour_d2 = global.hour;
                global.l2_rminute_d2 = global.minute;
                global.l2_rsecond_d2 = global.second;
                global.l2_rdsecond_d2 = global.dsecond;
                global.l2_rcsecond_d2 = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
        
        if (global.level == 3)
        {
            if (check == 0)
            {
                if (global.hour < global.l3_rhour_d2)
                    check = 99;
                
                if (global.hour == global.l3_rhour_d2)
                    check = 1;
                
                if (global.hour > global.l3_rhour_d2)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.l3_rminute_d2)
                    check = 99;
                
                if (global.minute == global.l3_rminute_d2)
                    check = 2;
                
                if (global.minute > global.l3_rminute_d2)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.l3_rsecond_d2)
                    check = 99;
                
                if (global.second == global.l3_rsecond_d2)
                    check = 3;
                
                if (global.second > global.l3_rsecond_d2)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.l3_rdsecond_d2)
                    check = 99;
                
                if (global.dsecond == global.l3_rdsecond_d2)
                    check = 4;
                
                if (global.dsecond > global.l3_rdsecond_d2)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.l3_rcsecond_d2)
                    check = 99;
                
                if (global.csecond >= global.l3_rcsecond_d2)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.l3_rhour_d2 = global.hour;
                global.l3_rminute_d2 = global.minute;
                global.l3_rsecond_d2 = global.second;
                global.l3_rdsecond_d2 = global.dsecond;
                global.l3_rcsecond_d2 = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
    }
    
    if (global.demo == 3)
    {
        if (global.level == 1)
        {
            if (check == 0)
            {
                if (global.hour < global.rhour_d3)
                    check = 99;
                
                if (global.hour == global.rhour_d3)
                    check = 1;
                
                if (global.hour > global.rhour_d3)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.rminute_d3)
                    check = 99;
                
                if (global.minute == global.rminute_d3)
                    check = 2;
                
                if (global.minute > global.rminute_d3)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.rsecond_d3)
                    check = 99;
                
                if (global.second == global.rsecond_d3)
                    check = 3;
                
                if (global.second > global.rsecond_d3)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.rdsecond_d3)
                    check = 99;
                
                if (global.dsecond == global.rdsecond_d3)
                    check = 4;
                
                if (global.dsecond > global.rdsecond_d3)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.rcsecond_d3)
                    check = 99;
                
                if (global.csecond >= global.rcsecond_d3)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.rhour_d3 = global.hour;
                global.rminute_d3 = global.minute;
                global.rsecond_d3 = global.second;
                global.rdsecond_d3 = global.dsecond;
                global.rcsecond_d3 = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
        
        if (global.level == 2)
        {
            if (check == 0)
            {
                if (global.hour < global.l2_rhour_d3)
                    check = 99;
                
                if (global.hour == global.l2_rhour_d3)
                    check = 1;
                
                if (global.hour > global.l2_rhour_d3)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.l2_rminute_d3)
                    check = 99;
                
                if (global.minute == global.l2_rminute_d3)
                    check = 2;
                
                if (global.minute > global.l2_rminute_d3)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.l2_rsecond_d3)
                    check = 99;
                
                if (global.second == global.l2_rsecond_d3)
                    check = 3;
                
                if (global.second > global.l2_rsecond_d3)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.l2_rdsecond_d3)
                    check = 99;
                
                if (global.dsecond == global.l2_rdsecond_d3)
                    check = 4;
                
                if (global.dsecond > global.l2_rdsecond_d3)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.l2_rcsecond_d3)
                    check = 99;
                
                if (global.csecond >= global.l2_rcsecond_d3)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.l2_rhour_d3 = global.hour;
                global.l2_rminute_d3 = global.minute;
                global.l2_rsecond_d3 = global.second;
                global.l2_rdsecond_d3 = global.dsecond;
                global.l2_rcsecond_d3 = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
        
        if (global.level == 3)
        {
            if (check == 0)
            {
                if (global.hour < global.l3_rhour_d3)
                    check = 99;
                
                if (global.hour == global.l3_rhour_d3)
                    check = 1;
                
                if (global.hour > global.l3_rhour_d3)
                    check = -1;
            }
            
            if (check == 1)
            {
                if (global.minute < global.l3_rminute_d3)
                    check = 99;
                
                if (global.minute == global.l3_rminute_d3)
                    check = 2;
                
                if (global.minute > global.l3_rminute_d3)
                    check = -1;
            }
            
            if (check == 2)
            {
                if (global.second < global.l3_rsecond_d3)
                    check = 99;
                
                if (global.second == global.l3_rsecond_d3)
                    check = 3;
                
                if (global.second > global.l3_rsecond_d3)
                    check = -1;
            }
            
            if (check == 3)
            {
                if (global.dsecond < global.l3_rdsecond_d3)
                    check = 99;
                
                if (global.dsecond == global.l3_rdsecond_d3)
                    check = 4;
                
                if (global.dsecond > global.l3_rdsecond_d3)
                    check = -1;
            }
            
            if (check == 4)
            {
                if (global.csecond < global.l3_rcsecond_d3)
                    check = 99;
                
                if (global.csecond >= global.l3_rcsecond_d3)
                    check = -1;
            }
            
            if (check == 99)
            {
                global.l3_rhour_d3 = global.hour;
                global.l3_rminute_d3 = global.minute;
                global.l3_rsecond_d3 = global.second;
                global.l3_rdsecond_d3 = global.dsecond;
                global.l3_rcsecond_d3 = global.csecond;
                instance_create_depth(800, 900, -10000, obj_best);
                audio_play_sound(snd_mick_ui_wow_time_best, 1, 0);
            }
        }
    }
}
