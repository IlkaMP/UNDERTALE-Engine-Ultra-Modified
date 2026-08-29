///@desc Soul Collision
if global.kr{
	if dmg != 0{
	Player_HurtKr()
	}
} else{
	Battle_CallSoulEventHurt()
	Player_Hurt(dmg)
}
