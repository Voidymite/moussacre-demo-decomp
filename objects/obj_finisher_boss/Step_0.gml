if (x_shake > 0)
{
    x_shake -= 2;
    y_shake -= 2;
}

if (obj_finisher_mick.phase != 2)
{
    x = x_pos + irandom_range(-x_shake, x_shake);
    y = y_pos + irandom_range(-y_shake, y_shake);
}

if (obj_finisher_mick.phase == 2)
{
    sprite_index = spr_finisher_boss_os_2;
    image_index = 0;
}
