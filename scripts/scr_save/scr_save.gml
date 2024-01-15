function scr_save() //scr_save
{
    ini_write_real("PumpkinEater", "h", global.rhour)
    ini_write_real("PumpkinEater", "m", global.rminute)
    ini_write_real("PumpkinEater", "s", global.rsecond)
    ini_write_real("PumpkinEater", "ds", global.rdsecond)
    ini_write_real("PumpkinEater", "cs", global.rcsecond)
    ini_write_real("PumpkinEater", "score", global.rscore)
}

