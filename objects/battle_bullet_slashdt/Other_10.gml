if (type == 0) && image_alpha >= 0.4{
	if (place_meeting(x, y, battle_soul)) {
		Player_HurtKr();
	}
}

if (type == 1) && image_alpha >= 0.4{
	if (global.attack_keyboard_mode ? (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)) : global.moving) {
		if (place_meeting(x, y, battle_soul)) {
			Player_HurtKr();
		}
	}
}
if (type == 2) && image_alpha >= 0.4{
	if (global.attack_keyboard_mode ? !(keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)) : !global.moving) {
		if (place_meeting(x, y, battle_soul)) {
			Player_HurtKr();
		}
	}
}
if (type == 3) && image_alpha >= 0.4{
	if (place_meeting(x, y, battle_soul)) {
		Battle_CallSoulEventHurt()
		Player_Hurt(5)
	}
}