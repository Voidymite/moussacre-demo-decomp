if (phase == 0)
    image_alpha += 0.005;

if (phase == 1)
    image_alpha -= 0.1;

if ((image_alpha <= 0 && phase == 1) || global.hp <= 0)
    instance_destroy();

if (image_alpha >= 1.2 && phase == 0)
{
    global.color += instance_number(obj_item_gem_follow);
    global.score += (instance_number(obj_item_gem_follow) * 10);
    phase = 1;
    room_goto(rm_wow);
    x = 0;
    y = 0;
}
