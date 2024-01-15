if (!gamepad_is_connected(0))
{
    var left_hold = keyboard_check(ord("A"))
    var right_hold = keyboard_check(ord("D"))
    var up_hold = keyboard_check(ord("W"))
    var down_tap = keyboard_check_pressed(ord("S"))
    var down_hold = keyboard_check(ord("S"))
    var action1 = keyboard_check(ord("K"))
    var action1_tap = keyboard_check_pressed(ord("K"))
    var action1_release = keyboard_check_released(ord("K"))
    var action2 = keyboard_check_pressed(ord("L"))
    var action3 = keyboard_check_pressed(ord("º"))
    var action4 = keyboard_check_pressed(ord("Þ"))
    var action5 = keyboard_check(vk_lshift)
}
else
{
    gamepad_set_axis_deadzone(0, 0.24)
    left_hold = (gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.3)
    right_hold = (gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.3)
    up_hold = (gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.3)
    down_tap = (gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5)
    down_hold = (gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.3)
    action1 = gamepad_button_check(0, gp_face1)
    action1_tap = gamepad_button_check_pressed(0, gp_face1)
    action1_release = gamepad_button_check_released(0, gp_face1)
    action2 = gamepad_button_check_pressed(0, gp_face3)
    action3 = gamepad_button_check_pressed(0, gp_face4)
    action4 = gamepad_button_check_pressed(0, gp_face2)
    action5 = (gamepad_button_check(0, gp_shoulderrb) || gamepad_button_check(0, gp_shoulderlb))
}
if place_meeting((x + global.hspd), y, obj_wall)
{
    while (!(place_meeting((x + sign(global.hspd)), y, obj_wall)))
        x += sign(global.hspd)
    global.hspd = 0
}
if place_meeting(x, (y + vspd), obj_wall)
{
    while (!(place_meeting(x, (y + sign(vspd)), obj_wall)))
        y += sign(vspd)
    vspd = 0
}
if place_meeting((x + global.hspd), (y + vspd), obj_wall)
{
    while (!(place_meeting((x + sign(global.hspd)), (y + sign(vspd)), obj_wall)))
    {
        x += sign(global.hspd)
        y += sign(vspd)
    }
    global.hspd = 0
    vspd = 0
}
if (gamepad_axis_value(0, gp_axislv) <= 0.5)
    pound_used = 0
if (astate == 3)
    sprite_index = spr_test_groundpound_fall
if place_meeting(x, (y + 2), obj_wall)
{
    vstate = 0
    apex = 0
    stalled = 0
    djump = 0
    djump_time = 4
    if (action1_release || (!action1))
        jump_used = 0
    if (!gamepad_is_connected(0))
        pound_used = 0
    if (astate == 0 || astate == 3 || astate == 4)
    {
        sprite_index = spr_test_idle
        astate = 0
    }
}
else
    vstate = 1
if vstate
{
    y += vspd
    vspd += 1
    if (vspd >= 24)
        vspd = 24
    if (down_tap && (!pound_used))
    {
        astate = 3
        vspd = 24
        pound_used = 1
    }
    if (vspd < 0)
    {
        if (astate == 0)
            sprite_index = spr_test_jump_up
    }
    if (vspd >= 0)
    {
        apex = 1
        if (astate == 0)
            sprite_index = spr_test_jump_down
    }
    if ((!action1) && (!apex))
    {
        vspd = 0
        apex = 1
    }
    if (astate == 4)
        sprite_index = spr_test_doublejump
    if (djump_time > 0)
        djump_time -= 1
    if (wjump_time > 0)
        wjump_time -= 1
    if (wkick_time > 0)
        wkick_time -= 1
    if (action1_tap && astate != 1 && (!djump) && djump_time == 0)
    {
        if (place_meeting((x + 2), y, obj_wall) && dir == -1)
        {
            apex = 0
            stalled = 0
            astate = 4
            djump = 1
            y -= 2
            vstate = 1
            vspd = -18
        }
        if (place_meeting((x - 2), y, obj_wall) && dir == 1)
        {
            apex = 0
            stalled = 0
            astate = 4
            djump = 1
            y -= 2
            vstate = 1
            vspd = -18
        }
        if ((!(place_meeting((x - 2), y, obj_wall))) && (!(place_meeting((x + 2), y, obj_wall))))
        {
            apex = 0
            stalled = 0
            astate = 4
            djump = 1
            y -= 2
            vstate = 1
            vspd = -18
        }
    }
    if (place_meeting((x + 2), y, obj_wall) && (!(place_meeting((x + 2), y, obj_wall_nowalljump))) && dir == 1 && action1_tap && astate != 1 && wjump_time == 0)
    {
        apex = 0
        stalled = 0
        y -= 2
        wjump_time = 8
        wkick_time = 1
        vstate = 1
        vspd = -18
        astate = 0
        dir = -1
        djump = 0
        djump_time = 4
        if running
            global.hspd = -24
    }
    if (place_meeting((x - 2), y, obj_wall) && (!(place_meeting((x - 2), y, obj_wall_nowalljump))) && dir == -1 && action1_tap && astate != 1 && wjump_time == 0)
    {
        apex = 0
        stalled = 0
        y -= 2
        wjump_time = 8
        wkick_time = 1
        vstate = 1
        vspd = -18
        astate = 0
        dir = 1
        djump = 0
        djump_time = 4
        if running
            global.hspd = 24
    }
}
else
{
    vspd = 0
    if (action1 && astate != 1)
    {
        if (!jump_used)
        {
            y -= 2
            vstate = 1
            vspd = -24
            jump_used = 1
        }
        if ((!djump) && djump_time == 0)
        {
            astate = 4
            djump = 1
            y -= 2
            vstate = 1
            vspd = -24
        }
    }
}
if action5
{
    running = 1
    if (dash_time >= 8)
    {
    }
}
else
    running = 0
if (dash_time < 8 && (!running))
{
    if (global.hspd >= 8)
        global.hspd -= 1
    if (global.hspd <= -8)
        global.hspd += 1
}
else if (dash_time >= 8 || running)
{
    if (astate == 2)
        sprite_index = spr_test_dash
    if (global.hspd >= 24)
        global.hspd = 24
    if (global.hspd <= -24)
        global.hspd = -24
}
if (left_hold || right_hold)
    hstate = 1
else
    hstate = 0
x += global.hspd
if ((!left_hold) && (!right_hold))
{
    if (global.hspd < 0)
        global.hspd += 1
    if (global.hspd > 0)
        global.hspd -= 1
}
if (left_hold && dash_time < 8)
{
    dir = -1
    if (wkick_time == 0)
    {
        if (!running)
            global.hspd = -8
        else if (global.hspd > -24)
            global.hspd -= 1
        else
            global.hspd = -24
    }
}
if (right_hold && dash_time < 8)
{
    dir = 1
    if (wkick_time == 0)
    {
        if (!running)
            global.hspd = 8
        else if (global.hspd < 24)
            global.hspd += 1
        else
            global.hspd = 24
    }
}
if (left_hold && right_hold)
    dir = 1
if (action2 && astate != 1)
{
    astate = 1
    spin_time = 12
    dashed = 0
}
if (astate == 1)
    sprite_index = spr_test_spin
if (spin_time > 0)
{
    spin_time -= 1
    if (!stalled)
        vspd = 1
    if (spin_time == 1)
    {
        stalled = 1
        astate = 0
    }
}
if (action4 && astate != 1 && astate != 2 && (!dashed))
{
    dash_time = 20
    astate = 2
    dashed = 1
    global.hspd = (20 * dir)
}
if (dash_time > 0)
{
    dash_time -= 1
    if (!running)
    {
    }
    if (dash_time == 1)
    {
        dashed = 0
        astate = 0
    }
}
if (dash_time <= 0)
    dashed = 0
if keyboard_check_pressed(vk_pageup)
    room_restart()
