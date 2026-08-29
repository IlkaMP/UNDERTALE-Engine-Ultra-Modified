///@desc Soul Collision
if(can_hit) {
if !global.kr
	Battle_CallSoulEventHurt()
if (global.kr) {
if (dmg != 0)
	Player_HurtKr();
} else {
	Player_Hurt(dmg);
}
}
