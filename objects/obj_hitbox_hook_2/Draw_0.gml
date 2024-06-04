draw_self()
draw_sprite_ext(spr_mick_hook_rope, 0, obj_mick.x, (obj_mick.y + 40), ((point_distance(x, y, obj_mick.x, (obj_mick.y - 40))) / 4), 1, point_direction((-x), (-y), (-obj_mick.x), ((-obj_mick.y) - 40)), c_white, image_alpha)
