/// st_window_transition();

/// interpolate until open
if (!is_open) {
    image_yscale = lerp(image_yscale, target_yscale, open_speed);
    var progress = (image_yscale / target_yscale);
    y = lerp(start_y, target_y, progress);
    if (progress >= 1) {
        is_open = true;
        state_switch(scr_window_static);
    }
} else {
    image_yscale = lerp(image_yscale, target_yscale, open_speed);
    var progress = ((target_yscale + 1) / (image_yscale + 1));
    y = lerp(start_y, target_y, progress);
    //show_message("progress: " + string(progress));
    //show_message("y: " + string(y) + ", target: " + string(target_y));
    if (y <= target_y + 5 && y >= target_y - 5) {
        is_open = false;
        state_switch(scr_window_hidden);
    }
}
