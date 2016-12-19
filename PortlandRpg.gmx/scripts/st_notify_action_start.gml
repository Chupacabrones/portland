/// st_notify_action_start()

if (state_time == 0) {
    // init something?    
}

if (state_time > _display_timeout) {
    state_switch(st_notify_action_end);
}
