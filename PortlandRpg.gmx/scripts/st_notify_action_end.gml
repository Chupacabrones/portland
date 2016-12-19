/// st_notify_action_end()

if (state_time == 0) {
    // init fade?
}


if (state_time > _fade_time) {
    instance_destroy(); // kill yourself!
}
