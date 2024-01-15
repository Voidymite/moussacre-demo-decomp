/// @description This is the manager object for Moussacre.
global.hp = 5
global.hp_max = 5
global.checkpoint = 0
global.level = 1
global.color = 0
global.score = 0
global.infakewall = 0
global.pigseen = 0
global.collapsed = 0
global.walt = 0
global.lock = 0
controller = 0
audio_set_master_gain(0, global.volume)
temp_data = ds_map_create()
time = 0
window_set_size(1600, 900)
map_string = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,:;'\"!?0123456789()%&+-*^"
font = font_add_sprite_ext(spr_mick_ui_text, map_string, 1, 5)
global.hour = 0
global.minute = 0
global.minute0 = 0
global.second = 0
global.second0 = 0
global.dsecond = 0
global.csecond = 0
frame = 0
depth = -10000
loop = 1
full = 1
bgm = 0
global.song = -1
global.song_playing = 0
audio_group_load(snd_mick_ui_wow_time)
