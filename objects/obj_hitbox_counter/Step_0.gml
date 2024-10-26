life--;

if (life == 0)
{
    instance_destroy();
    gamepad_set_vibration(0, 0, 0);
}

size += 0.5;
rot += 30;
