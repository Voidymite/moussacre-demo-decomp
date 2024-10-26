if (image_xscale <= 0)
    instance_destroy();

x += hspd;
y += vspd;
vspd += 0.5;
image_xscale -= 0.1;
image_yscale -= 0.1;
