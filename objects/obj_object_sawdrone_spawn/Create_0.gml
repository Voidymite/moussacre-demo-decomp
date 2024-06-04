time = 1
phase = 0
start = 180
spawn = 1
if (global.sawdrone == 1)
{
    obj_object_generator.image_index = 1
    instance_destroy(obj_trigger_dronekill)
    instance_destroy()
}
