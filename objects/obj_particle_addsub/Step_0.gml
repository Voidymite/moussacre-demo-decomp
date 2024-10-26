if (num >= 0)
    color = c_white;
else
    color = 255;

time--;

if (time == 0)
    instance_destroy();

x_pos += x_mov;
y_pos += y_mov;
x_mov *= 0.95;
y_mov *= 0.95;
