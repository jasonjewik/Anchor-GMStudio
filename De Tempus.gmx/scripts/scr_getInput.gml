//Controls
key_escape = keyboard_check_pressed(vk_escape);
key_enter = keyboard_check_pressed(vk_enter);
key_shift = keyboard_check_direct(vk_shift);
key_space = keyboard_check_direct(vk_space);
key_tab = keyboard_check_pressed(vk_tab);

key_right = keyboard_check_direct(ord('D'));
key_left = keyboard_check_direct(ord('A'));
key_up = keyboard_check_direct(ord('W'));
key_down = keyboard_check_direct(ord('S'));
key_int = keyboard_check_pressed(ord('E'));
key_slow = keyboard_check_pressed(ord('Q'));
key_ab1 = keyboard_check_pressed(ord('V'));
key_ab2 = keyboard_check_pressed(ord('C'));

mouse_left = mouse_check_button_pressed(mb_left);
mouse_right = mouse_check_button(mb_right);
mouse_middle = mouse_check_button_pressed(mb_middle);
