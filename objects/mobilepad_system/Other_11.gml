keyboard_key_press((_mkz == false && !keyboard_check(ord("Z"))) ? ord("Z") : vk_nokey);
keyboard_key_press((_mkx == false && !keyboard_check(ord("X"))) ? ord("X") : vk_nokey);
keyboard_key_press((_mkrestart == false && !keyboard_check(ord("C"))) ? ord("C") : vk_nokey);
keyboard_key_press((_mkup == false && !keyboard_check(vk_up)) ? vk_up : vk_nokey);
keyboard_key_press((_mkdown == false && !keyboard_check(vk_down)) ? vk_down : vk_nokey);
keyboard_key_press((_mkleft == false && !keyboard_check(vk_left)) ? vk_left : vk_nokey);
keyboard_key_press((_mkright == false && !keyboard_check(vk_right)) ? vk_right : vk_nokey);
keyboard_key_press((_mkf2 == false && !keyboard_check(vk_f2)) ? vk_f2 : vk_nokey);

keyboard_key_release((_mkz == true && keyboard_check(ord("Z"))) ? ord("Z") : vk_nokey);
keyboard_key_release((_mkf2 == true && keyboard_check(vk_f2)) ? vk_f2 : vk_nokey);
keyboard_key_release((_mkx == true && keyboard_check(ord("X"))) ? ord("X") : vk_nokey);
keyboard_key_release((_mkrestart == true && keyboard_check(ord("C"))) ? ord("C") : vk_nokey);
keyboard_key_release((_mkup == true && keyboard_check(vk_up)) ? vk_up : vk_nokey);
keyboard_key_release((_mkdown == true && keyboard_check(vk_down)) ? vk_down : vk_nokey);
keyboard_key_release((_mkleft == true && keyboard_check(vk_left)) ? vk_left : vk_nokey);
keyboard_key_release((_mkright == true && keyboard_check(vk_right)) ? vk_right : vk_nokey);
