function scr_load_settings() //scr_load_settings
{
    global.rumble = ini_read_real("TheWayILikeIt", "r", 9)
    global.volume = ini_read_real("TheWayILikeIt", "v", 0.67)
    global.particles = ini_read_real("TheWayILikeIt", "p", 1)
}

