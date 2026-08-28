function MakeSlash(x, y, angle, type=0, pause=25, out=1){
	var beam = instance_create_depth(x, y, 0, battle_bullet_slash);
	beam.out = out;
	beam.angle = angle
	beam.pause = pause
	beam.type = type
	if pause != 0{
		MakeWarnLine(x, y, angle, pause, out)
	}
	return beam;
}