function scr_save_settings() //scr_save_settings
{
    ini_write_real("TheWayILikeIt", "r", global.rumble)
    ini_write_real("TheWayILikeIt", "v", global.volume)
    ini_write_real("TheWayILikeIt", "p", global.particles)
}

