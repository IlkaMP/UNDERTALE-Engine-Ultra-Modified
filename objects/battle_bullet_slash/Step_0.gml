/// @description Override, don't delete
time++
if joutai==2{
x=600
y=600
}
if time=wait{
Camera_Shake(15,15,1,1,1,1);
audio_play_sound(ban,10,false)
image_alpha=0
}
if time = wait{
	slashobj = instance_create_depth(xstart, ystart, 0, obj_slash)
    slashobj.image_yscale = slashwidth
	slashobj.angle = image_angle
}
if time>wait{
slashobj.image_alpha-=0.03
slashobj.image_yscale += 0.008
if slashobj.image_alpha <= 0{
	instance_destroy()
	instance_destroy(slashobj)
}

}
