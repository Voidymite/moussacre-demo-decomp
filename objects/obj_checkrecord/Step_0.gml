time++;

if (global.difficulty == 0)
{
    if (time == 150)
    {
        if (global.demo == 1)
        {
            if (global.level == 1)
            {
                if (global.score > global.rscore)
                {
                    global.rscore = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
            
            if (global.level == 2)
            {
                if (global.score > global.l2_rscore)
                {
                    global.l2_rscore = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
            
            if (global.level == 3)
            {
                if (global.score > global.l3_rscore)
                {
                    global.l3_rscore = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
        }
        
        if (global.demo == 2)
        {
            if (global.level == 1)
            {
                if (global.score > global.rscore_d2)
                {
                    global.rscore_d2 = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
            
            if (global.level == 2)
            {
                if (global.score > global.l2_rscore_d2)
                {
                    global.l2_rscore_d2 = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
            
            if (global.level == 3)
            {
                if (global.score > global.l3_rscore_d2)
                {
                    global.l3_rscore_d2 = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
        }
        
        if (global.demo == 3)
        {
            if (global.level == 1)
            {
                if (global.score > global.rscore_d3)
                {
                    global.rscore_d3 = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
            
            if (global.level == 2)
            {
                if (global.score > global.l2_rscore_d3)
                {
                    global.l2_rscore_d3 = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
            
            if (global.level == 3)
            {
                if (global.score > global.l3_rscore_d3)
                {
                    global.l3_rscore_d3 = global.score;
                    other_record = 1;
                    audio_play_sound(snd_mick_ui_wow_score_best, 1, 0);
                }
                else
                {
                    other_record = 0;
                }
            }
        }
        
        if (other_record)
            instance_create_depth(2150, 900, -10000, obj_best);
    }
}
