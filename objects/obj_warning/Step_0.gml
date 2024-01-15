if (!gamepad_is_connected(0))
    var action1 = (keyboard_check_pressed(ord("L")) || keyboard_check_pressed(ord("Z")))
else
    action1 = gamepad_button_check_pressed(0, gp_face1)
if (time == 270)
    instance_create_depth(-1000, -1000, -2000, obj_transition_blackfade)
with (obj_transition_blackfade)
    image_alpha = 1.5
if display
    image_alpha += 0.01
if (image_alpha > 1 && display)
    display = 0
if (image_alpha > 1 && (!display))
    time -= 1
if (time < 0)
    image_alpha -= 0.01
if (image_alpha <= -0.25)
{
    instance_destroy(obj_transition_blackfade)
    instance_create_depth(0, 0, -1000, obj_transition)
    room_goto(rm_mainmenu)
}
if (action1 && time < 270)
{
    display = 0
    image_alpha -= 0.1
    skip = 1
}
if skip
    image_alpha -= 0.1
