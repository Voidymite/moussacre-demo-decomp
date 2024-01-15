function scr_load() //scr_load
{
    global.rhour = ini_read_real("PumpkinEater", "h", 9)
    global.rminute = ini_read_real("PumpkinEater", "m", 59)
    global.rsecond = ini_read_real("PumpkinEater", "s", 59)
    global.rdsecond = ini_read_real("PumpkinEater", "ds", 9)
    global.rcsecond = ini_read_real("PumpkinEater", "cs", 9)
    global.rscore = ini_read_real("PumpkinEater", "score", 0)
}

