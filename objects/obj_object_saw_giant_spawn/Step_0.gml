time--;

if (time == 0)
{
    time = 400;
    instance_create_depth(5680, -2800, 450, obj_object_saw_giant);
}
