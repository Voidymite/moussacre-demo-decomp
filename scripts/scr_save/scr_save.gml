function scr_save()
{
    ini_write_real("PumpkinEater", "h", global.rhour);
    ini_write_real("PumpkinEater", "m", global.rminute);
    ini_write_real("PumpkinEater", "s", global.rsecond);
    ini_write_real("PumpkinEater", "ds", global.rdsecond);
    ini_write_real("PumpkinEater", "cs", global.rcsecond);
    ini_write_real("PumpkinEater", "score", global.rscore);
    ini_write_real("PumpkinEater", "rank", global.rscore_average);
    ini_write_real("PumpkinEater", "dmg", global.rdamaged);
    ini_write_real("PumpkinEater", "hd2", global.rhour_d2);
    ini_write_real("PumpkinEater", "md2", global.rminute_d2);
    ini_write_real("PumpkinEater", "sd2", global.rsecond_d2);
    ini_write_real("PumpkinEater", "dsd2", global.rdsecond_d2);
    ini_write_real("PumpkinEater", "csd2", global.rcsecond_d2);
    ini_write_real("PumpkinEater", "scored2", global.rscore_d2);
    ini_write_real("PumpkinEater", "rankd2", global.rscore_average_d2);
    ini_write_real("PumpkinEater", "dmgd2", global.rdamaged_d2);
    ini_write_real("PumpkinEater", "hd3", global.rhour_d3);
    ini_write_real("PumpkinEater", "md3", global.rminute_d3);
    ini_write_real("PumpkinEater", "sd3", global.rsecond_d3);
    ini_write_real("PumpkinEater", "dsd3", global.rdsecond_d3);
    ini_write_real("PumpkinEater", "csd3", global.rcsecond_d3);
    ini_write_real("PumpkinEater", "scored3", global.rscore_d3);
    ini_write_real("PumpkinEater", "rankd3", global.rscore_average_d3);
    ini_write_real("PumpkinEater", "dmgd3", global.rdamaged_d3);
    ini_write_real("PumpkinEater", "l2h", global.l2_rhour);
    ini_write_real("PumpkinEater", "l2m", global.l2_rminute);
    ini_write_real("PumpkinEater", "l2s", global.l2_rsecond);
    ini_write_real("PumpkinEater", "l2ds", global.l2_rdsecond);
    ini_write_real("PumpkinEater", "l2cs", global.l2_rcsecond);
    ini_write_real("PumpkinEater", "l2score", global.l2_rscore);
    ini_write_real("PumpkinEater", "l2rank", global.l2_rscore_average);
    ini_write_real("PumpkinEater", "l2dmg", global.l2_rdamaged);
    ini_write_real("PumpkinEater", "l2hd2", global.l2_rhour_d2);
    ini_write_real("PumpkinEater", "l2md2", global.l2_rminute_d2);
    ini_write_real("PumpkinEater", "l2sd2", global.l2_rsecond_d2);
    ini_write_real("PumpkinEater", "l2dsd2", global.l2_rdsecond_d2);
    ini_write_real("PumpkinEater", "l2csd2", global.l2_rcsecond_d2);
    ini_write_real("PumpkinEater", "l2scored2", global.l2_rscore_d2);
    ini_write_real("PumpkinEater", "l2rankd2", global.l2_rscore_average_d2);
    ini_write_real("PumpkinEater", "l2dmgd2", global.l2_rdamaged_d2);
    ini_write_real("PumpkinEater", "l2hd3", global.l2_rhour_d3);
    ini_write_real("PumpkinEater", "l2md3", global.l2_rminute_d3);
    ini_write_real("PumpkinEater", "l2sd3", global.l2_rsecond_d3);
    ini_write_real("PumpkinEater", "l2dsd3", global.l2_rdsecond_d3);
    ini_write_real("PumpkinEater", "l2csd3", global.l2_rcsecond_d3);
    ini_write_real("PumpkinEater", "l2scored3", global.l2_rscore_d3);
    ini_write_real("PumpkinEater", "l2rankd3", global.l2_rscore_average_d3);
    ini_write_real("PumpkinEater", "l2dmgd3", global.l2_rdamaged_d3);
    ini_write_real("PumpkinEater", "l3h", global.l3_rhour);
    ini_write_real("PumpkinEater", "l3m", global.l3_rminute);
    ini_write_real("PumpkinEater", "l3s", global.l3_rsecond);
    ini_write_real("PumpkinEater", "l3ds", global.l3_rdsecond);
    ini_write_real("PumpkinEater", "l3cs", global.l3_rcsecond);
    ini_write_real("PumpkinEater", "l3score", global.l3_rscore);
    ini_write_real("PumpkinEater", "l3rank", global.l3_rscore_average);
    ini_write_real("PumpkinEater", "l3dmg", global.l3_rdamaged);
    ini_write_real("PumpkinEater", "l3hd2", global.l3_rhour_d2);
    ini_write_real("PumpkinEater", "l3md2", global.l3_rminute_d2);
    ini_write_real("PumpkinEater", "l3sd2", global.l3_rsecond_d2);
    ini_write_real("PumpkinEater", "l3dsd2", global.l3_rdsecond_d2);
    ini_write_real("PumpkinEater", "l3csd2", global.l3_rcsecond_d2);
    ini_write_real("PumpkinEater", "l3scored2", global.l3_rscore_d2);
    ini_write_real("PumpkinEater", "l3rankd2", global.l3_rscore_average_d2);
    ini_write_real("PumpkinEater", "l3dmgd2", global.l3_rdamaged_d2);
    ini_write_real("PumpkinEater", "l3hd3", global.l3_rhour_d3);
    ini_write_real("PumpkinEater", "l3md3", global.l3_rminute_d3);
    ini_write_real("PumpkinEater", "l3sd3", global.l3_rsecond_d3);
    ini_write_real("PumpkinEater", "l3dsd3", global.l3_rdsecond_d3);
    ini_write_real("PumpkinEater", "l3csd3", global.l3_rcsecond_d3);
    ini_write_real("PumpkinEater", "l3scored3", global.l3_rscore_d3);
    ini_write_real("PumpkinEater", "l3rankd3", global.l3_rscore_average_d3);
    ini_write_real("PumpkinEater", "l3dmgd3", global.l3_rdamaged_d3);
}

function scr_save_settings()
{
    ini_write_real("TheWayILikeIt", "r", global.rumble);
    ini_write_real("TheWayILikeIt", "v", global.volume);
    ini_write_real("TheWayILikeIt", "vs", global.volume2);
    ini_write_real("TheWayILikeIt", "vm", global.volume3);
    ini_write_real("TheWayILikeIt", "p", global.particles);
    ini_write_real("TheWayILikeIt", "res", global.resolution);
    ini_write_real("TheWayILikeIt", "fs", global.fullscreen);
    ini_write_real("TheWayILikeIt", "n", global.numbers);
    ini_write_real("TheWayILikeIt", "ku", global.up);
    ini_write_real("TheWayILikeIt", "kd", global.down);
    ini_write_real("TheWayILikeIt", "kl", global.left);
    ini_write_real("TheWayILikeIt", "kr", global.right);
    ini_write_real("TheWayILikeIt", "ka1", global.action1);
    ini_write_real("TheWayILikeIt", "ka2", global.action2);
    ini_write_real("TheWayILikeIt", "ka3", global.action3);
    ini_write_real("TheWayILikeIt", "ka4", global.action4);
    ini_write_real("TheWayILikeIt", "ka5", global.action5);
    ini_write_real("TheWayILikeIt", "ka6", global.action6);
    ini_write_real("TheWayILikeIt", "kgun", global.gun);
    ini_write_real("TheWayILikeIt", "khook", global.hook);
    ini_write_real("TheWayILikeIt", "kcannon", global.cannon);
    ini_write_real("TheWayILikeIt", "ca1", global.c_action1);
    ini_write_real("TheWayILikeIt", "ca2", global.c_action2);
    ini_write_real("TheWayILikeIt", "ca3", global.c_action3);
    ini_write_real("TheWayILikeIt", "ca4", global.c_action4);
    ini_write_real("TheWayILikeIt", "ca5", global.c_action5);
    ini_write_real("TheWayILikeIt", "ca6", global.c_action6);
    ini_write_real("TheWayILikeIt", "cgun", global.c_gun);
    ini_write_real("TheWayILikeIt", "chook", global.c_hook);
    ini_write_real("TheWayILikeIt", "ccannon", global.c_cannon);
    ini_write_real("TheWayILikeIt", "fix1", global.fix1);
}

function scr_load()
{
    global.rhour = ini_read_real("PumpkinEater", "h", 9);
    global.rminute = ini_read_real("PumpkinEater", "m", 59);
    global.rsecond = ini_read_real("PumpkinEater", "s", 59);
    global.rdsecond = ini_read_real("PumpkinEater", "ds", 9);
    global.rcsecond = ini_read_real("PumpkinEater", "cs", 9);
    global.rscore = ini_read_real("PumpkinEater", "score", 0);
    global.rscore_average = ini_read_real("PumpkinEater", "rank", 0);
    global.rdamaged = ini_read_real("PumpkinEater", "dmg", 100);
    global.rhour_d2 = ini_read_real("PumpkinEater", "hd2", 9);
    global.rminute_d2 = ini_read_real("PumpkinEater", "md2", 59);
    global.rsecond_d2 = ini_read_real("PumpkinEater", "sd2", 59);
    global.rdsecond_d2 = ini_read_real("PumpkinEater", "dsd2", 9);
    global.rcsecond_d2 = ini_read_real("PumpkinEater", "csd2", 9);
    global.rscore_d2 = ini_read_real("PumpkinEater", "scored2", 0);
    global.rscore_average_d2 = ini_read_real("PumpkinEater", "rankd2", 0);
    global.rdamaged_d2 = ini_read_real("PumpkinEater", "dmgd2", 100);
    global.rhour_d3 = ini_read_real("PumpkinEater", "hd3", 9);
    global.rminute_d3 = ini_read_real("PumpkinEater", "md3", 59);
    global.rsecond_d3 = ini_read_real("PumpkinEater", "sd3", 59);
    global.rdsecond_d3 = ini_read_real("PumpkinEater", "dsd3", 9);
    global.rcsecond_d3 = ini_read_real("PumpkinEater", "csd3", 9);
    global.rscore_d3 = ini_read_real("PumpkinEater", "scored3", 0);
    global.rscore_average_d3 = ini_read_real("PumpkinEater", "rankd3", 0);
    global.rdamaged_d3 = ini_read_real("PumpkinEater", "dmgd3", 100);
    global.l2_rhour = ini_read_real("PumpkinEater", "l2h", 9);
    global.l2_rminute = ini_read_real("PumpkinEater", "l2m", 59);
    global.l2_rsecond = ini_read_real("PumpkinEater", "l2s", 59);
    global.l2_rdsecond = ini_read_real("PumpkinEater", "l2ds", 9);
    global.l2_rcsecond = ini_read_real("PumpkinEater", "l2cs", 9);
    global.l2_rscore = ini_read_real("PumpkinEater", "l2score", 0);
    global.l2_rscore_average = ini_read_real("PumpkinEater", "l2rank", 0);
    global.l2_rdamaged = ini_read_real("PumpkinEater", "l2dmg", 100);
    global.l2_rhour_d2 = ini_read_real("PumpkinEater", "l2hd2", 9);
    global.l2_rminute_d2 = ini_read_real("PumpkinEater", "l2md2", 59);
    global.l2_rsecond_d2 = ini_read_real("PumpkinEater", "l2sd2", 59);
    global.l2_rdsecond_d2 = ini_read_real("PumpkinEater", "l2dsd2", 9);
    global.l2_rcsecond_d2 = ini_read_real("PumpkinEater", "l2csd2", 9);
    global.l2_rscore_d2 = ini_read_real("PumpkinEater", "l2scored2", 0);
    global.l2_rscore_average_d2 = ini_read_real("PumpkinEater", "l2rankd2", 0);
    global.l2_rdamaged_d2 = ini_read_real("PumpkinEater", "l2dmgd2", 100);
    global.l2_rhour_d3 = ini_read_real("PumpkinEater", "l2hd3", 9);
    global.l2_rminute_d3 = ini_read_real("PumpkinEater", "l2md3", 59);
    global.l2_rsecond_d3 = ini_read_real("PumpkinEater", "l2sd3", 59);
    global.l2_rdsecond_d3 = ini_read_real("PumpkinEater", "l2dsd3", 9);
    global.l2_rcsecond_d3 = ini_read_real("PumpkinEater", "l2csd3", 9);
    global.l2_rscore_d3 = ini_read_real("PumpkinEater", "l2scored3", 0);
    global.l2_rscore_average_d3 = ini_read_real("PumpkinEater", "l2rankd3", 0);
    global.l2_rdamaged_d3 = ini_read_real("PumpkinEater", "l2dmgd3", 100);
    global.l3_rhour = ini_read_real("PumpkinEater", "l3h", 9);
    global.l3_rminute = ini_read_real("PumpkinEater", "l3m", 59);
    global.l3_rsecond = ini_read_real("PumpkinEater", "l3s", 59);
    global.l3_rdsecond = ini_read_real("PumpkinEater", "l3ds", 9);
    global.l3_rcsecond = ini_read_real("PumpkinEater", "l3cs", 9);
    global.l3_rscore = ini_read_real("PumpkinEater", "l3score", 0);
    global.l3_rscore_average = ini_read_real("PumpkinEater", "l3rank", 0);
    global.l3_rdamaged = ini_read_real("PumpkinEater", "l3dmg", 100);
    global.l3_rhour_d2 = ini_read_real("PumpkinEater", "l3hd2", 9);
    global.l3_rminute_d2 = ini_read_real("PumpkinEater", "l3md2", 59);
    global.l3_rsecond_d2 = ini_read_real("PumpkinEater", "l3sd2", 59);
    global.l3_rdsecond_d2 = ini_read_real("PumpkinEater", "l3dsd2", 9);
    global.l3_rcsecond_d2 = ini_read_real("PumpkinEater", "l3csd2", 9);
    global.l3_rscore_d2 = ini_read_real("PumpkinEater", "l3scored2", 0);
    global.l3_rscore_average_d2 = ini_read_real("PumpkinEater", "l3rankd2", 0);
    global.l3_rdamaged_d2 = ini_read_real("PumpkinEater", "l3dmgd2", 100);
    global.l3_rhour_d3 = ini_read_real("PumpkinEater", "l3hd3", 9);
    global.l3_rminute_d3 = ini_read_real("PumpkinEater", "l3md3", 59);
    global.l3_rsecond_d3 = ini_read_real("PumpkinEater", "l3sd3", 59);
    global.l3_rdsecond_d3 = ini_read_real("PumpkinEater", "l3dsd3", 9);
    global.l3_rcsecond_d3 = ini_read_real("PumpkinEater", "l3csd3", 9);
    global.l3_rscore_d3 = ini_read_real("PumpkinEater", "l3scored3", 0);
    global.l3_rscore_average_d3 = ini_read_real("PumpkinEater", "l3rankd3", 0);
    global.l3_rdamaged_d3 = ini_read_real("PumpkinEater", "l3dmgd3", 100);
}

function scr_load_settings()
{
    global.rumble = ini_read_real("TheWayILikeIt", "r", 9);
    global.volume = ini_read_real("TheWayILikeIt", "v", 0.67);
    global.volume2 = ini_read_real("TheWayILikeIt", "vs", 0.67);
    global.volume3 = ini_read_real("TheWayILikeIt", "vm", 0.67);
    global.particles = ini_read_real("TheWayILikeIt", "p", 1);
    global.resolution = ini_read_real("TheWayILikeIt", "res", 3);
    global.fullscreen = ini_read_real("TheWayILikeIt", "fs", 1);
    global.numbers = ini_read_real("TheWayILikeIt", "n", 1);
    global.left = ini_read_real("TheWayILikeIt", "kl", 37);
    global.right = ini_read_real("TheWayILikeIt", "kr", 39);
    global.up = ini_read_real("TheWayILikeIt", "ku", 38);
    global.down = ini_read_real("TheWayILikeIt", "kd", 40);
    global.action1 = ini_read_real("TheWayILikeIt", "ka1", 90);
    global.action2 = ini_read_real("TheWayILikeIt", "ka2", 88);
    global.action3 = ini_read_real("TheWayILikeIt", "ka3", 67);
    global.action4 = ini_read_real("TheWayILikeIt", "ka4", 86);
    global.action5 = ini_read_real("TheWayILikeIt", "ka5", 160);
    global.action6 = ini_read_real("TheWayILikeIt", "ka6", 32);
    global.gun = ini_read_real("TheWayILikeIt", "kgun", 90);
    global.hook = ini_read_real("TheWayILikeIt", "khook", 88);
    global.cannon = ini_read_real("TheWayILikeIt", "kcannon", 67);
    global.c_action1 = ini_read_real("TheWayILikeIt", "ca1", 32769);
    global.c_action2 = ini_read_real("TheWayILikeIt", "ca2", 32771);
    global.c_action3 = ini_read_real("TheWayILikeIt", "ca3", 32770);
    global.c_action4 = ini_read_real("TheWayILikeIt", "ca4", 32772);
    global.c_action5 = ini_read_real("TheWayILikeIt", "ca5", 32776);
    global.c_action6 = ini_read_real("TheWayILikeIt", "ca6", 32775);
    global.c_gun = ini_read_real("TheWayILikeIt", "cgun", 32771);
    global.c_hook = ini_read_real("TheWayILikeIt", "chook", 32772);
    global.c_cannon = ini_read_real("TheWayILikeIt", "ccannon", 32770);
    global.fix1 = ini_read_real("TheWayILikeIt", "fix1", 1);
}
