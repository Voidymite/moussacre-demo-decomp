image_xscale = size;
image_yscale = size;

if (phase == 0)
{
    size -= 0.5;
    
    if (size == 0.5)
        phase = 1;
}

if (phase == 1)
{
    size += 0.125;
    
    if (size == 1)
        phase = 2;
}
