function MakeBeam(x, y, angle, pause=25, out=1){
	var beam = instance_create_depth(x, y, 0, battle_bullet_beam);
	beam.out = out;
	beam.angle = angle
	beam.pause = pause
	if pause != 0{
		MakeWarnLine(x, y, angle, pause, out)
	}
	return beam;
}