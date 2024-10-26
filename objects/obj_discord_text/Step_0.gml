y += float;

if (phase == 0)
{
    image_alpha += 0.05;
    
    if (image_alpha >= 5)
        phase = 1;
}
else
{
    image_alpha -= 0.05;
    
    if (image_alpha <= 0)
        instance_destroy();
}
