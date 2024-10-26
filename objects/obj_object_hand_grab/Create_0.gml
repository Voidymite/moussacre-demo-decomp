time = 60;
grab = 0;
main = 0;

if (x == 31520 && room == rm_forest_3)
{
    sprite_index = spr_object_hand_still_main;
    main = 1;
}

if (room == rm_forest_5)
{
    if (x == 672 || x == 5216 || x == 16960)
    {
        sprite_index = spr_object_hand_still_main;
        main = 1;
    }
}

if (room == rm_forest_7)
{
    if (x == 15296 || x == 10048)
    {
        sprite_index = spr_object_hand_still_main;
        main = 1;
    }
}

if (room == rm_forest_10)
{
    if (y == 37600 || y == 35040)
    {
        sprite_index = spr_object_hand_still_main;
        main = 1;
    }
}
