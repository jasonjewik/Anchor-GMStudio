//Controls
key_escape = keyboard_check_pressed(vk_escape);
key_enter = keyboard_check_pressed(vk_enter);
key_shift = keyboard_check_direct(vk_shift);
key_space = keyboard_check_direct(vk_space);
key_alt = keyboard_check_direct(vk_alt);

key_right = keyboard_check_direct(ord('D'));
key_left = keyboard_check_direct(ord('A'));
key_up = keyboard_check_direct(ord('W'));
key_down = keyboard_check_direct(ord('S'));
key_i = keyboard_check_pressed(ord('I'));

mouse_left = mouse_check_button_pressed(mb_left);
mouse_right = mouse_check_button(mb_right);
