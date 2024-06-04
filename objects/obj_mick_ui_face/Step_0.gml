pre_score = global.score - global.second * 50 + global.minute * 3000 + global.hour * 180000
if (pre_score < 0)
    temp_score = 0
else
    temp_score = pre_score
avg_score = temp_score / (global.second + global.minute * 60 + global.hour * 3600)
if (global.second >= 30 ? true : (global.minute >= 1 ? true : global.hour >= 1))
{
    if (avg_score < 1)
    {
        rank = spr_mick_ui_rank_f_small
        rank_meter_color = spr_mick_ui_rank_meter_gray
        rank_meter_fill = round(avg_score / 1 * 10)
    }
    if (avg_score >= 1 && avg_score < 45)
    {
        rank = spr_mick_ui_rank_d_small
        rank_meter_color = spr_mick_ui_rank_meter_brown
        rank_meter_fill = round((avg_score - 1) / 45 * 10)
    }
    if (avg_score >= 45 && avg_score < 90)
    {
        rank = spr_mick_ui_rank_c_small
        rank_meter_color = spr_mick_ui_rank_meter_green
        rank_meter_fill = round((avg_score - 45) / 45 * 10)
    }
    if (avg_score >= 90 && avg_score < 135)
    {
        rank = spr_mick_ui_rank_b_small
        rank_meter_color = spr_mick_ui_rank_meter_blue
        rank_meter_fill = round((avg_score - 90) / 45 * 10)
    }
    if (avg_score >= 135 && avg_score < 180)
    {
        rank = spr_mick_ui_rank_a_small
        rank_meter_color = spr_mick_ui_rank_meter_red
        rank_meter_fill = round((avg_score - 135) / 45 * 10)
    }
    if (avg_score >= 180 && global.damaged >= 3)
    {
        rank = spr_mick_ui_rank_a_small
        rank_meter_color = spr_mick_ui_rank_meter_red
        rank_meter_fill = round((avg_score - 180) / 45 * 10)
        if (rank_meter_fill >= 10)
            rank_meter_fill = 10
    }
    if (avg_score >= 180 && global.damaged < 3)
    {
        rank = spr_mick_ui_rank_x_small
        rank_meter_color = spr_mick_ui_rank_meter_rainbow
        rank_meter_fill = round((avg_score - 180) / 45 * 10)
        if (rank_meter_fill >= 10)
            rank_meter_fill = 10
    }
}
else
{
    rank = spr_mick_ui_rank_unknown_small
    rank_meter_color = spr_mick_ui_rank_meter_gray
    rank_meter_fill = 0
}
