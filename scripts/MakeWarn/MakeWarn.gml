///@Desc Creates a warn about attack.
function MakeWarn(x, y, w, h, angle, w_time = 30, out=true){
	audio_play_sound(snd_bonewarn,50,false)
	var inst = instance_create_depth(x,y,0,battle_warn)
	inst.w = w
	inst.h = h
	inst.image_angle = angle
	inst.out = out
	inst.w_time = w_time
	inst.warntype = 0
	
	return inst
}
function MakeWarnLine(x, y, angle, w_time = 30, out = true){
	audio_play_sound(snd_bonewarn,50,false)
	var inst = instance_create_depth(x,y,0,battle_warn)
	inst.image_angle = angle
	inst.out = out
	inst.w_time = w_time
	inst.warntype = 1
	
	return inst
}
function MakeWarnRound(x, y, rad, w_time = 30, out = true){
	audio_play_sound(snd_bonewarn,50,false)
	var inst = instance_create_depth(x,y,0,battle_warn)
	inst.rad = rad
	inst.out = out
	inst.w_time = w_time
	inst.warntype = 2
	
	return inst
}