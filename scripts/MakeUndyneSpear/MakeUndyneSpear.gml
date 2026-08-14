function MakeUndyneSpear(DEPTH, ANGLE, SPEED, DISTANCE, TYPE){
    var spear = instance_create_depth(-9999, -9999, DEPTH, battle_bullet_arrow)
	spear._direction = ANGLE
	spear.angle = ANGLE
	spear.follow = true
	spear.type = TYPE
	spear._speed = SPEED
	spear._distance = DISTANCE
	return spear
}
