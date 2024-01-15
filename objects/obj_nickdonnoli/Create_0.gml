global.volume = 0.67
global.rumble = 1
sprite_prefetch(spr_nickdonnoli)
sprite_prefetch(spr_particle_explosion_1)
sprite_prefetch(spr_background_mainmenu)
sprite_prefetch(spr_mick_ui_mainmenu)
skip = 0
time = 420
grow = 0.007
image_speed = 0
window_set_size(1600, 900)
image_xscale = 2.343
image_yscale = 2.343
ini_open("PumpkinEater")
script_execute(scr_load)
ini_close()
ini_open("TheWayILikeIt")
script_execute(scr_load_settings)
ini_close()
