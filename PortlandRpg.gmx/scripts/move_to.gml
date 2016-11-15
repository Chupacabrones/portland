/// move_to(target_x, target_y, move_percent)
var target_x = argument0;
var target_y = argument1;
var move_percent = argument2;

x += (target_x - x) * move_percent;
y += (target_y - y) * move_percent;
