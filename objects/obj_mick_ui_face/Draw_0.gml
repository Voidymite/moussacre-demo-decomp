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
draw_set_alpha(1)
