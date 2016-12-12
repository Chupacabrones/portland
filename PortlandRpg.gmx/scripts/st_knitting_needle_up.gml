/// st_knitting_needle_up()

if (state_time == 0) {
    _move_timeout = _needle_speed;
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
