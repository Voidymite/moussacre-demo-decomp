if (global.demo < 2)
    x_min = 40
else
    x_min = 0
draw_sprite_ext(rank, 0, (x + 560 - x_min), y, 1, size, 0, c_white, 1)
draw_sprite(rank_meter_color, rank_meter_fill, (x + 560 - x_min), y)
if (global.damaged <= 2)
    draw_sprite(spr_mick_ui_rank_hits, global.damaged, (x + 560 - x_min), y)
else
    draw_sprite(spr_mick_ui_rank_hits, 3, (x + 560 - x_min), y)
if (global.demo >= 2)
    draw_sprite(spr_mick_ui_special, global.sp, (x + 420), (y + 150))
draw_sprite(spr_mick_ui_health, global.hp, (x + 300), (y + 50))
draw_self()
if (global.hp >= 3 && global.hp <= 8)
    sprite_index = spr_mick_ui_neutral
if (global.hp == 2)
    sprite_index = spr_mick_ui_hurt
if (global.hp == 1)
    sprite_index = spr_mick_ui_dying
if (global.hp <= 0)
    sprite_index = spr_mick_ui_dead
if (image_yscale > 1)
    image_yscale -= 0.1
if (image_yscale <= 0)
    image_yscale = 1
if (size > 1)
    size -= 0.1
if (size <= 0)
    size = 1
if obj_mick.draw_ready
    draw_sprite(spr_mick_ui_ready, 0, (x + 50), (y + 280))
