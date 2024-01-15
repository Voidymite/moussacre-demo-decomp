draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x), (y - scroll_y))
draw_sprite(spr_mick_ui_pause_4, 0, ((x + scroll_x) - 3200), (y - scroll_y))
draw_sprite(spr_mick_ui_pause_4, 0, ((x + scroll_x) - 3200), ((y - scroll_y) + 1800))
draw_sprite(spr_mick_ui_pause_4, 0, (x + scroll_x), ((y - scroll_y) + 1800))
draw_set_halign(fa_center)
draw_set_font(font)
draw_set_color(c_white)
if (time >= 120)
{
    if (time == 120)
        audio_play_sound(snd_mick_ui_wow_time, 1, false)
    draw_text(1075, 1000, (((((((((("TIME: " + string(global.hour)) + ":") + string(global.minute0)) + string(global.minute)) + ":") + string(global.second0)) + string(global.second)) + ".") + string(global.dsecond)) + string(global.csecond)))
}
if (time == 150)
    instance_create_depth(0, 0, 0, obj_checkrecord)
if (time >= 180)
{
    if (time == 180)
        audio_play_sound(snd_mick_ui_wow_score, 1, false)
    draw_text(2275, (1000 + shake), ("SCORE: " + string(global.score)))
}
if (time >= 210 && time < 270)
{
    draw_set_color(c_red)
    draw_text((1075 + move), 1100, (-global.minus_score))
    move += 20
}
if (time == 270)
{
    if (time == 270)
        audio_play_sound(snd_mick_ui_wow_score_decrease, 1, false)
    shake = 10
}
if (time >= 270 && time < 275)
    shake -= 2
if (time == 270)
    global.score -= global.minus_score
if (time >= 330)
{
    if (flash >= 0)
        draw_text(1675, 600, "DEMO END")
    if (row == 0)
        draw_set_color(c_yellow)
    else
        draw_set_color(c_white)
    draw_text(1675, 1400, "PLAY AGAIN")
    if (row == 1)
        draw_set_color(c_yellow)
    else
        draw_set_color(c_white)
    draw_text(1675, 1600, "QUIT")
}
