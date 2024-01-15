scroll_x = 0
scroll_y = 0
time = 0
flash = 0
row = 0
tapped = 0
map_string = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,:;'\"!?0123456789()%&+-*^"
font = font_add_sprite_ext(spr_mick_ui_text, map_string, 1, 5)
global.minus_score = (((global.second * 50) + (global.minute * 3000)) + (global.hour * 180000))
move = 0
shake = 0
ini_open("PumpkinEater")
script_execute(scr_load)
ini_close()
instance_destroy(obj_mick)
