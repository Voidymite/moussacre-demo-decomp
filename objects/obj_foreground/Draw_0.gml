if (room != rm_city_4)
{
    draw_sprite_ext(spr_black, 0, -1000, -1000, (room_width + 2000), 1000, 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, -1000, room_height, (room_width + 2000), 1000, 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, -1000, -1000, 1000, (room_height + 2000), 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, room_width, -1000, 1000, (room_height + 2000), 0, c_black, 1)
}
else
{
    draw_sprite_ext(spr_black, 0, -1000, room_height, (room_width + 2000), 1000, 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, -1000, -1000, 1000, (room_height + 2000), 0, c_black, 1)
    draw_sprite_ext(spr_black, 0, room_width, -1000, 1000, (room_height + 2000), 0, c_black, 1)
}
