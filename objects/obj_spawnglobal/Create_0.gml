if (!instance_exists(obj_global))
{
    instance_create_depth(0, 0, 0, obj_global);
    randomize();
    instance_destroy();
}
