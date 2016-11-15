///st_player_moving()
var xaxis = (input_right - input_left);
var yaxis = (input_down - input_up);

// get direction
dir = point_direction(0, 0, xaxis, yaxis);

len = 0;
if (xaxis != 0 || yaxis != 0) {
    len = player_speed;
}

vx = lengthdir_x(len, dir);
vy = lengthdir_y(len, dir);

// move 
move(base_collision);
