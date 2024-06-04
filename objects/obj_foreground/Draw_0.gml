if (room != rm_city_4)
{
    draw_sprite_ext(spr_black, 0, -4000, -4000, (room_width + 8000), 4000, 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, -4000, room_height, (room_width + 8000), 4000, 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, -4000, -4000, 4000, (room_height + 8000), 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, room_width, -4000, 4000, (room_height + 8000), 0, c_black, 1)
}
else
{
    draw_sprite_ext(spr_black, 0, -4000, room_height, (room_width + 8000), 4000, 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, -4000, -4000, 4000, (room_height + 8000), 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, room_width, -4000, 4000, (room_height + 8000), 0, c_black, 1)
}
