life -= 1
if (life == 0)
{
    instance_destroy()
    gamepad_set_vibration(0, 0, 0)
}
scr_screenshake(10);
