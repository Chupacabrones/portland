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

