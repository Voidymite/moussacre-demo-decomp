if (room == rm_os_1 || room == rm_finisher)
{
    if (!recolor)
    {
        recolor = 1;
        color = choose(7, 8);
        
        if (color == 1)
            sprite_index = spr_item_gem_orange;
        
        if (color == 2)
            sprite_index = spr_item_gem_yellow;
        
        if (color == 3)
            sprite_index = spr_item_gem_green;
        
        if (color == 4)
            sprite_index = spr_item_gem_blue;
        
        if (color == 5)
            sprite_index = spr_item_gem_indigo;
        
        if (color == 6)
            sprite_index = spr_item_gem_violet;
        
        if (color == 7)
            sprite_index = spr_item_gem_black;
        
        if (color == 8)
            sprite_index = spr_item_gem_white;
    }
}

x += lengthdir_x(4 * time, dir);
y += lengthdir_y(4 * time, dir);

if (time > 0)
    time--;

if (time == 0 || obj_finisher_mick.phase == 4)
{
    instance_destroy();
    global.score += 10;
    global.color++;
    
    if (global.numbers && global.difficulty != 2)
        instance_create_depth(-100, -100, -10001, obj_particle_addsub).num = 10;
    
    with (obj_mick_ui_gems)
        image_yscale = 1.5;
    
    if (color == 0)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_red).image_index = 2;
        image_index = 2;
        audio_play_sound(snd_item_gem_1, 1, 0);
    }
    
    if (color == 1)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_orange);
        audio_play_sound(snd_item_gem_2, 1, 0);
    }
    
    if (color == 2)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_yellow);
        audio_play_sound(snd_item_gem_3, 1, 0);
    }
    
    if (color == 3)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_green);
        audio_play_sound(snd_item_gem_4, 1, 0);
    }
    
    if (color == 4)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_blue);
        audio_play_sound(snd_item_gem_5, 1, 0);
    }
    
    if (color == 5)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_indigo);
        audio_play_sound(snd_item_gem_6, 1, 0);
    }
    
    if (color == 6)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_violet);
        audio_play_sound(snd_item_gem_7, 1, 0);
    }
    
    if (color == 7)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_black);
        audio_play_sound(snd_item_gem_8, 1, 0);
    }
    
    if (color == 8)
    {
        instance_create_depth(x, y, -10, obj_particle_collect_white);
        audio_play_sound(snd_item_gem_9, 1, 0);
    }
}
