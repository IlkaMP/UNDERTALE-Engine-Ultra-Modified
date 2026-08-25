t++
if(place_meeting(x,y,battle_soul)){
	Battle_CallSoulEventBulletCollision();
}
image_angle=angle
image_yscale=ysc
image_xscale=xsc
//show_pause--
if(show_pause<=0) {
show_pause=0
}
if t = pause{
	image_index=1
	audio_play_sound(snd_gun_shot,0,false)
	can_hit=true
	Anim_Create(self,"image_xscale",0,0,image_xscale,-image_xscale,10)
	Anim_Create(self,"image_yscale",0,0,image_yscale,-image_yscale,10)
	alarm[1]=10
}
if t = (pause+taftershot){
	instance_destroy(self)
}