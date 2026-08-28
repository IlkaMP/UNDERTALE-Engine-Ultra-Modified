switch (type) {
    case 0:
	    if !global.kr
			Battle_CallSoulEventHurt()
		if (global.kr) {
		if (dmg != 0)
		    Player_HurtKr();
		} else {
			Player_Hurt(dmg);
		}
        break;
    case 1:
        if (global.attack_keyboard_mode ? (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)) : global.moving) {
		if !global.kr
			Battle_CallSoulEventHurt()
		if (global.kr) {
		if (dmg != 0)
		    Player_HurtKr();
		} else {
			Player_Hurt(dmg);
		}
        }
        break;
    case 2:
        if (global.attack_keyboard_mode ? !(keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)) : !global.moving) {
		if !global.kr
			Battle_CallSoulEventHurt()
		if (global.kr) {
		if (dmg != 0)
		    Player_HurtKr();
		} else {
			Player_Hurt(dmg);
		}
        }
        break;
    case 3:
        Player_Heal(1);
        break;
    case 4:
		if !global.kr
			Battle_CallSoulEventHurt()
		if (global.kr) {
		if (dmg != 0)
		    Player_HurtKr();
		} else {
			Player_Hurt(dmg);
		}
        break;
}

if (disposable) {
    instance_destroy();
}