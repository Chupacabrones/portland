///move(collision_obj)
var collision_obj = argument0;


// check where we can move
repeat(abs(vx)) {
    if(!place_meeting(x + sign(vx), y, collision_obj)) {
        x += sign(vx);
    } else {
        break;
    }
}

repeat(abs(vy)) {
    if(!place_meeting(x, y + sign(vy), collision_obj)) {
        y += sign(vy);
    } else {
        break;
    }
}

//show_debug_message('vx = '+string(vx)+' vy = '+string(vy));


if vx < 0
    && sprite_index != spr_left {
    sprite_index = spr_left;
} else if vx > 0
    && sprite_index != spr_right {
    sprite_index = spr_right;
} else if vy < 0
    && sprite_index != spr_up {
    sprite_index = spr_up;
} else if vy > 0
    && sprite_index != spr_down {
    sprite_index = spr_down;
} 

if vx == 0 && vy == 0 {
    if image_speed != 0.0 {
        image_speed = 0.0;
    }
} else if image_speed != 0.2{
    image_speed = 0.2;
}



