if (!gamepad_is_connected(0))
{
    if (x == 896)
    {
        if (global.left == 37 && global.right == 39)
            sprite_index = spr_background_tutorial_walk_kb
        else
            sprite_index = spr_background_tutorial_walk_rb
    }
    if (x == 2816)
    {
        if (global.action1 == 90)
            sprite_index = spr_background_tutorial_jump_kb
        else
            sprite_index = spr_background_tutorial_jump_rb
    }
    if (x == 3840)
    {
        if (global.action1 == 90)
            sprite_index = spr_background_tutorial_doublejump_1_kb
        else
            sprite_index = spr_background_tutorial_doublejump_1_rb
    }
    if (x == 6528)
    {
        if (global.left == 37 && global.right == 39 && global.action1 == 90)
            sprite_index = spr_background_tutorial_walljump_kb
        else
            sprite_index = spr_background_tutorial_walljump_rb
    }
    if (x == 10112)
    {
        if (global.action5 == 160)
            sprite_index = spr_background_tutorial_run_kb
        else
            sprite_index = spr_background_tutorial_run_rb
    }
    if (x == 27904)
    {
        if (global.action2 == 88)
            sprite_index = spr_background_tutorial_spin_kb
        else
            sprite_index = spr_background_tutorial_spin_rb
    }
    if (x == 30080)
    {
        if (global.down == 40)
            sprite_index = spr_background_tutorial_groundpound_kb
        else
            sprite_index = spr_background_tutorial_groundpound_rb
    }
    if (x == 33152)
    {
        if (global.action3 == 67)
            sprite_index = spr_background_tutorial_dash_kb
        else
            sprite_index = spr_background_tutorial_dash_rb
    }
    if (x == 19328)
    {
        if (global.down == 40)
            sprite_index = spr_background_tutorial_groundpound_kb
        else
            sprite_index = spr_background_tutorial_groundpound_rb
    }
    if (x == 22528)
    {
        if (global.action1 == 90)
            sprite_index = spr_background_tutorial_doublejump_2_kb
        else
            sprite_index = spr_background_tutorial_doublejump_2_rb
    }
}
else
{
    if (x == 896)
        sprite_index = spr_background_tutorial_walk_c
    if (x == 2816)
    {
        if (global.c_action1 == 32769)
            sprite_index = spr_background_tutorial_jump_c
        else
            sprite_index = spr_background_tutorial_jump_rb
    }
    if (x == 3840)
    {
        if (global.c_action1 == 32769)
            sprite_index = spr_background_tutorial_doublejump_1_c
        else
            sprite_index = spr_background_tutorial_doublejump_1_rb
    }
    if (x == 6528)
    {
        if (global.c_action1 == 32769)
            sprite_index = spr_background_tutorial_walljump_c
        else
            sprite_index = spr_background_tutorial_walljump_rb
    }
    if (x == 10112)
    {
        if (global.c_action5 == 32776)
            sprite_index = spr_background_tutorial_run_c
        else
            sprite_index = spr_background_tutorial_run_rb
    }
    if (x == 27904)
    {
        if (global.c_action2 == 32771)
            sprite_index = spr_background_tutorial_spin_c
        else
            sprite_index = spr_background_tutorial_spin_rb
    }
    if (x == 30080)
    {
        if (global.c_action1 == 32769)
            sprite_index = spr_background_tutorial_groundpound_c
        else
            sprite_index = spr_background_tutorial_groundpound_rb
    }
    if (x == 33152)
    {
        if (global.c_action3 == 32770)
            sprite_index = spr_background_tutorial_dash_c
        else
            sprite_index = spr_background_tutorial_dash_rb
    }
    if (x == 19328)
    {
        if (global.c_action1 == 32769)
            sprite_index = spr_background_tutorial_groundpound_c
        else
            sprite_index = spr_background_tutorial_groundpound_rb
    }
    if (x == 22528)
    {
        if (global.c_action1 == 32769)
            sprite_index = spr_background_tutorial_doublejump_2_c
        else
            sprite_index = spr_background_tutorial_doublejump_2_rb
    }
}
