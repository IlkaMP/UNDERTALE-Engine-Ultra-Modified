if (place_meeting(x, y, battle_soul)) {
    Battle_CallSoulEventBulletCollision();
}

if (place_meeting(x, y, battle_soul_yellow_bullet) && type == 4) {
    var obj = instance_place(x, y, battle_soul_yellow_bullet);
    instance_destroy(obj);
    instance_destroy();
}
if variable_instance_exists(self, "hit_destroy"){
if hit_destroy and hit{
if(place_meeting(x,y,battle_soul)){
		Battle_CallSoulEventBulletCollision();
		instance_destroy()
		hit = false
}
}
}
