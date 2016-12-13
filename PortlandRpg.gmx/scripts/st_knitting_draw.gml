/// st_knitting_needle_up()

if (state_time == 0) {
    randomize();
    _move_timeout = _needle_speed;
    _template_array = scr_knitting_get_template_points(choose(pth_knitting_hat, pth_knitting_sweater));
    _total_score = array_length_1d(_template_array);
    for (var i = 0; i < _total_score; i ++) {
        var point = _template_array[i];
        instance_create(point[0], point[1], obj_knitting_template);
    }
}

// move obj
if (_move_timeout == 0) {
    // draw yarn?
    if (input_down) {
        instance_create(x, y, obj_knitting_yarn);
    }

    // increment position
    _current_position ++;
    
    if (_current_position > _end_position) {
        state_switch(st_knitting_game_over);
    } else {
        // set the row, col
        _current_row = floor(_current_position div _cols);
        _current_col = (_current_position - (_current_row * _cols));
        // translate to x, y
        y = _current_row * _size;
        x = _current_col * _size;
        
        // reset timeout
        _move_timeout = _needle_speed;
    }
}

_move_timeout--;
