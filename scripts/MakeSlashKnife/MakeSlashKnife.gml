///@arg x
///@arg y
///@arg direction
///@arg wait
///@arg scale
///@desc Creates a slash.
function MakeSlashKnife(_x, _y, _dir, _wait, _scale){
	var inst=instance_create_depth(_x,_y,0,battle_bullet_slashwarn);
	inst.angle=_dir;
		inst.image_angle=_dir;
	inst.wait=_wait
	inst.slashwidth = _scale
	return inst
}