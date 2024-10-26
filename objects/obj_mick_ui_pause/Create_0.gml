time = 10;
gamepad_set_vibration(0, 0, 0);
audio_play_sound(snd_mick_ui_pause, 1, 0);
audio_play_sound(snd_song_wheremymindroamsfree, 1, 1);
map_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
font = font_add_sprite_ext(spr_mick_ui_menu_large, map_string, true, 0);
instance_create_depth(x + 700, (y + 900) - 450, -2000, obj_mick_ui_pause_select);
instance_create_depth(x + 700, (y + 900) - 450, -2000, obj_mick_ui_pause_select_mick);
tab = 0;
row = 0;
cooldown = 0;
rumble = 0;
tapped = 0;
rot = 0;

if (global.volume == 1)
    volume = 15;

if (global.volume == 0.93)
    volume = 14;

if (global.volume == 0.87)
    volume = 13;

if (global.volume == 0.8)
    volume = 12;

if (global.volume == 0.73)
    volume = 11;

if (global.volume == 0.67)
    volume = 10;

if (global.volume == 0.6)
    volume = 9;

if (global.volume == 0.53)
    volume = 8;

if (global.volume == 0.46)
    volume = 7;

if (global.volume == 0.4)
    volume = 6;

if (global.volume == 0.33)
    volume = 5;

if (global.volume == 0.26)
    volume = 4;

if (global.volume == 0.2)
    volume = 3;

if (global.volume == 0.13)
    volume = 2;

if (global.volume == 0.06)
    volume = 1;

if (global.volume == 0)
    volume = 0;

if (global.volume2 == 1)
    volume2 = 15;

if (global.volume2 == 0.93)
    volume2 = 14;

if (global.volume2 == 0.87)
    volume2 = 13;

if (global.volume2 == 0.8)
    volume2 = 12;

if (global.volume2 == 0.73)
    volume2 = 11;

if (global.volume2 == 0.67)
    volume2 = 10;

if (global.volume2 == 0.6)
    volume2 = 9;

if (global.volume2 == 0.53)
    volume2 = 8;

if (global.volume2 == 0.46)
    volume2 = 7;

if (global.volume2 == 0.4)
    volume2 = 6;

if (global.volume2 == 0.33)
    volume2 = 5;

if (global.volume2 == 0.26)
    volume2 = 4;

if (global.volume2 == 0.2)
    volume2 = 3;

if (global.volume2 == 0.13)
    volume2 = 2;

if (global.volume2 == 0.06)
    volume2 = 1;

if (global.volume2 == 0)
    volume2 = 0;

if (global.volume3 == 1)
    volume3 = 15;

if (global.volume3 == 0.93)
    volume3 = 14;

if (global.volume3 == 0.87)
    volume3 = 13;

if (global.volume3 == 0.8)
    volume3 = 12;

if (global.volume3 == 0.73)
    volume3 = 11;

if (global.volume3 == 0.67)
    volume3 = 10;

if (global.volume3 == 0.6)
    volume3 = 9;

if (global.volume3 == 0.53)
    volume3 = 8;

if (global.volume3 == 0.46)
    volume3 = 7;

if (global.volume3 == 0.4)
    volume3 = 6;

if (global.volume3 == 0.33)
    volume3 = 5;

if (global.volume3 == 0.26)
    volume3 = 4;

if (global.volume3 == 0.2)
    volume3 = 3;

if (global.volume3 == 0.13)
    volume3 = 2;

if (global.volume3 == 0.06)
    volume3 = 1;

if (global.volume3 == 0)
    volume3 = 0;

scroll_x = 0;
scroll_y = 0;
