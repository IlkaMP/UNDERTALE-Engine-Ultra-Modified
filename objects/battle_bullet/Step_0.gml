if variable_instance_exists(self, "hit_destroy"){
	if (place_meeting(x, y, battle_soul) and hit) {
	    Battle_CallSoulEventBulletCollision();
		if hit_destroy {
			instance_destroy()
		}
	}
}

if (place_meeting(x, y, battle_soul_yellow_bullet) && type == 4) {
    var obj = instance_place(x, y, battle_soul_yellow_bullet);
    instance_destroy(obj);
    instance_destroy();
}
