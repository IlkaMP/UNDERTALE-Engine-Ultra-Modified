// Inherit the parent event
event_inherited();
distance-=spd
if mode == 1 && !is_c && distance <= c_dis {
	is_c = true
	Anim_Create(id,"dir",2,1,dir,180,25)
	direction += 180
}
if follow_soul {
	x = battle_soul.x+lengthdir_x(distance,dir+180)
	y = battle_soul.y+lengthdir_y(distance,dir+180)
}
else {
	x = cx+lengthdir_x(distance,dir+180)
	y = cy+lengthdir_y(distance,dir+180)
}
if instance_exists(battle_soul_green)&&battle_soul_green.shield_amount==1 {
	if assist {
		if mode == 0 && instance_nearest(battle_soul.x,battle_soul.y,battle_bullet_arrow) == id {
			image_index = 1
		}
		else {
			image_index = 0
		}
	}
}
if can_prevent && instance_exists(battle_soul_green) {
	var des = true
	for(var i=0;i<array_length(target_shield);i++) {
		if battle_soul.dir[target_shield[i]]%360 == (direction+180)%360 && point_distance(x,y,battle_soul.x,battle_soul.y) <= 32+(sprite_width-sprite_xoffset){
			if i == array_length(target_shield)-1 && des {
				audio_play_sound(snd_ding, 0, 0)
				battle_soul.s_hit[target_shield[i]] = 4
				instance_destroy()
			}
		}
		else {
			des = false
		}
	}
}