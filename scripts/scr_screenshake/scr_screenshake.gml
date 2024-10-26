function scr_screenshake()
{
    with (obj_camera)
    {
        if (shake_time == 0)
            shake_time = 10;
    }
}

function scr_screenshake_giant()
{
    with (obj_camera)
        shake_time = 40;
}

function scr_screenshake_light()
{
    with (obj_camera)
    {
        if (shake_time == 0)
            shake_time = 2;
    }
}
