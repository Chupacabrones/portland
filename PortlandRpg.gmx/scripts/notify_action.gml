/// notify_action (x, y, text)

var notify_x, notify_y, notify_text, notify_obj;

notify_x = argument0;
notify_y = argument1;
notify_text = argument2;
notify_obj = obj_notify_action;

// draw obj at x,y
with (instance_create(notify_x, notify_y, notify_obj)) {
    // set text
    _text = notify_text;
}


