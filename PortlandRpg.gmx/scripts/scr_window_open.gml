/// scr_window_open
target_y = y
target_yscale = image_yscale;
start_y = y + (sprite_height / 2);

y = start_y;
image_yscale = 0;

state_switch(scr_window_opening);
