if start{
if t%15=0{
	var angle = irandom_range(0, 360)
	var dis = 300
	var speedb = 5
	var xb = lengthdir_x(-dis, angle)
	var yb = lengthdir_y(-dis, angle)
	xxb = irandom_range(bx-bleft, bx+bright)
	yyb = irandom_range(by-bup, by+bup)
	MakeWarnLine(xxb, yyb, angle, 100, 0)
	b = MakeBone(xxb+xb, yyb+yb, 10, 0, 0, 0, 0, angle, 0, 0)
	b.direction=angle
	b.speed=speedb
}
}
if t == 1500{
	Battle_EndTurn()
}