if (image_xscale <= 0)
    instance_destroy();

x += hspd;
y += vspd;
vspd++;
image_xscale -= 0.1;
image_yscale -= 0.1;
