draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(1675, 600, "If you're having trouble, switch to Casual difficulty.");
draw_text(1675, 750, "You get 5 more max health and 2 more jumps,");
draw_text(1675, 900, "but time, score, and rank don't save.");

if (row == 0)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

draw_text(1675, 1200, "SWITCH");

if (row == 1)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

draw_text(1675, 1400, "STAY");

if (row == 2)
    draw_set_color(c_yellow);
else
    draw_set_color(c_white);

draw_text(1675, 1600, "STOP ASKING");
