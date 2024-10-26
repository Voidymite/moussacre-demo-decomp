time--;

if (time > 0)
{
    x += ((pos - x) * 0.15);
}
else
{
    x = pos + irandom_range(-x_shake, x_shake);
    y = 1650 + irandom_range(-y_shake, y_shake);
    
    if (x_shake > 0)
    {
        x_shake--;
        y_shake--;
    }
}

if (time == 0)
{
    x_shake = 50;
    y_shake = 50;
    image_index = 1;
}

scroll_x += 8;
scroll_y += 4.5;

if (scroll_x == 3200)
    scroll_x -= 3200;

if (scroll_y == 1800)
    scroll_y -= 1800;
