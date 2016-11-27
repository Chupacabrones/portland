/// gui_window_open(x, y, width, height, depth)
var _x = argument0;
var _y = argument1;
var _width = argument2;
var _height = argument3;
var _depth = argument4;
var _id = instance_create(_x, _y, base_window);

with (_id) {
    target_y = _y
    target_yscale = _height;
    start_y = _y + (sprite_height / 2);

    y = start_y;
    image_yscale = 0;
    image_xscale = _width;
    depth = _depth;
    state_switch(st_window_transition); // begin opening
}

return _id;
