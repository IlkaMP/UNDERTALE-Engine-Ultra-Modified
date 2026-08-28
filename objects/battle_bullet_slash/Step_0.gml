// Inherit the parent event
event_inherited();
t++
if (image_alpha <= 0){
    instance_destroy();
}
if t = pause + 1{
	audio_play_sound(ban, 0, 0, 0.5);
	hit = true
	Anim_Create(self, "image_yscale", 0, 0, 0, 16, 10);
}
if t = pause + 21{
	Anim_Create(self, "image_alpha", 0, 0, 1, -1, 10);
	Anim_Create(self, "image_yscale", 0, 0, 16, -16, 10);
}
