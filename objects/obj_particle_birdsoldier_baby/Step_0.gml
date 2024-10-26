x += (spd * -dir);
y -= spd;
spd++;
time--;

if (time == 0)
    instance_destroy();
