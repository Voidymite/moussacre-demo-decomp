depth = -1
image_alpha = 0
if (x == -4000 && y == -4000)
{
    image_xscale = room_width + 8000
    image_yscale = 3600
}
if (x == -4000 && y == (room_height + 4000))
{
    image_xscale = 4100
    image_yscale = (-((room_height + 8000)))
}
if (x == (room_width - 100) && y == -4000)
{
    image_xscale = 4100
    image_yscale = room_height + 8000
}
sizable = 0
if (x != -4000 && x != room_width && y != -4000 && y != 4000)
    sizable = 1
