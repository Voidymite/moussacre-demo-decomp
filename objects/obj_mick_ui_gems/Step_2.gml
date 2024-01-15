x = (camera_get_view_x(view_camera[0]) + 3008)
y = (camera_get_view_y(view_camera[0]) + 192)
if (image_yscale > 1)
    image_yscale -= 0.1
if (image_yscale <= 0)
    image_yscale = 1
