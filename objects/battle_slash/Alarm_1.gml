line = 0;
Anim_Create(id, "image_yscale", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 0, +1000, 25);
Anim_Create(id, "image_xscale", 1, 1, 13, -4, 20);
Anim_Create(id, "image_alpha", 1, 1, 1, -1, 20);
audio_stop_sound(ban);
audio_play_sound(ban, 0, 0);
Camera_Shake(6, 6, 2, 2, 1, 1)
if instance_exists(obj_rgb){
	if color == 3{
		obj_rgb.fd = 16
	}
}