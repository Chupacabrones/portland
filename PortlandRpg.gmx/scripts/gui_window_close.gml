/// gui_window_close(instance_id)
var _instance = argument0;

with (_instance) {
    target_y = start_y; //y + (sprite_height / 2);
    target_yscale = 0;
    start_y = y;
    state_switch(st_window_transition);
}
