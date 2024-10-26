if (image_index > 4)
    instance_destroy();

image_angle += (rotate_dir / 4);
image_alpha -= 0.01;

if (image_alpha == 0)
    instance_destroy();

y += 2;
