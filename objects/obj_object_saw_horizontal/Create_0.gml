spd = 20;
dir = 1;
depth = layer_get_depth(layer_get_id("Tiles")) + 1;

if (place_meeting(x, y, obj_object_saw_goleft) && place_meeting(x, y, obj_object_saw_goright))
    spd = 0;

can_parry = 0;
