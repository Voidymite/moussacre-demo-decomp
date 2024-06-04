gamepad_set_vibration(0, 0, 0)
global.hp = 5
global.hp_max = 5
global.sp = 5
global.sp_max = 5
global.checkpoint = 0
global.damaged = 0
global.demo = 1
global.level = 2
global.color = 3652
global.score = 13560
global.infakewall = 0
global.riding = 0
global.pigseen = 0
global.collapsed = 0
global.walt = 0
global.mommouse = 0
global.turtleseen = 0
global.dronesback = 0
global.sawdrone = 0
global.lock = 0
controller = 0
audio_set_master_gain(0, global.volume)
audio_group_set_gain(snd_item_gem_9, global.volume2, 0)
audio_group_set_gain(snd_mick_ui_wow_time, global.volume3, 0)
temp_data = ds_map_create()
time = 0
window_set_size(1600, 900)
map_string = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,:;'\"!?0123456789()%&+-*©"
font = font_add_sprite_ext(spr_mick_ui_text, map_string, true, 5)
global.hour = 0
global.minute = 1
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
if global.fullscreen
    window_set_fullscreen(true)
else
{
    if (global.resolution == 0)
        window_set_size(480, 270)
    if (global.resolution == 1)
        window_set_size(1024, 576)
    if (global.resolution == 2)
        window_set_size(1280, 720)
    if (global.resolution == 3)
        window_set_size(1600, 900)
    if (global.resolution == 4)
        window_set_size(1920, 1080)
    if (global.resolution == 5)
        window_set_size(2560, 1440)
    if (global.resolution == 6)
        window_set_size(3200, 1800)
    if (global.resolution == 7)
        window_set_size(3840, 2160)
}
randomize()
