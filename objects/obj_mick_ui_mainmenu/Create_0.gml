time = 10
gamepad_set_vibration(0, 0, 0)
map_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
font = font_add_sprite_ext(spr_mick_ui_menu_large, map_string, 0, 0)
map_string_small = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,:;'\"!?0123456789()%&+-*^"
font_small = font_add_sprite_ext(spr_mick_ui_text, map_string_small, 1, 0)
instance_create_depth((x + 150), ((y + 1200) - 450), -1000, obj_mick_ui_pause_select)
instance_create_depth((x + 150), ((y + 1200) - 450), -1000, obj_mick_ui_pause_select_mick)
anim = 30
frame = 0
reset = 1
dir = -1
tilt = 0
tab = 0
row = 0
cooldown = 0
rumble = 0
tapped = 0
rot = 0
if (global.volume > 1 || global.volume < 0)
    global.volume = 0.67
if (global.rumble > 1 || global.rumble < 0)
    global.rumble = 1
if (global.volume == 1)
    volume = 15
if (global.volume == 0.93)
    volume = 14
if (global.volume == 0.87)
    volume = 13
if (global.volume == 0.8)
    volume = 12
if (global.volume == 0.73)
    volume = 11
if (global.volume == 0.67)
    volume = 10
if (global.volume == 0.6)
    volume = 9
if (global.volume == 0.53)
    volume = 8
if (global.volume == 0.46)
    volume = 7
if (global.volume == 0.4)
    volume = 6
if (global.volume == 0.33)
    volume = 5
if (global.volume == 0.26)
    volume = 4
if (global.volume == 0.2)
    volume = 3
if (global.volume == 0.13)
    volume = 2
if (global.volume == 0.06)
    volume = 1
if (global.volume == 0)
    volume = 0
scroll_x = 0
scroll_y = 0
ini_open("TheWayILikeIt")
script_execute(scr_save_settings)
ini_close()
