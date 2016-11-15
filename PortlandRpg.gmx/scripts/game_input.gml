/// game_input()

input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_action_pressed = keyboard_check_pressed(vk_enter);
input_action_released = keyboard_check_released(vk_enter);
input_menu_pressed = keyboard_check_pressed(vk_escape);
input_menu_released = keyboard_check_released(vk_escape);

//detect game controller and override above inputs when connected
var gp_id = 0;
var thresh = 0.5; // amount need to cause movement in a direction

if (gamepad_is_connected(gp_id)) {
    // A button?
    input_action_pressed = gamepad_button_check_pressed(gp_id, gp_face1);
    input_action_released = gamepad_button_check_released(gp_id, gp_face1);
    // B button?
    input_menu_pressed = gamepad_button_check_pressed(gp_id, gp_face2);
    input_menu_released = gamepad_button_check_released(gp_id, gp_face2);
    // check left horizontal and vertical axis
    input_right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    input_left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    input_down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
    input_up = gamepad_axis_value(gp_id, gp_axislv) < -thresh;
}

