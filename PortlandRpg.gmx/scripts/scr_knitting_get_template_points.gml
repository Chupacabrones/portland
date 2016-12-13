/// scr_knitting_get_template_points(path_template)
// params
var template = argument0;
var point_list; // = ds_list_create();

// properties
var p_size = path_get_number(template);
var p_inc = 1 / (p_size - 1);

// add template objects
for (var i = 0; i < p_size; i++) {
    var p_pos = (i * p_inc);
    var p = -1;
    p[0] = path_get_x(template, p_pos);
    p[1] = path_get_y(template, p_pos);
    //ds_list_add(point_list, p);
    point_list[i] = p;
}

return point_list;
