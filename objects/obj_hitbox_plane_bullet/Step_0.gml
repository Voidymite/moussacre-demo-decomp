time--;

if (time == 0)
{
    instance_destroy();
    gamepad_set_vibration(0, 0, 0);
}
