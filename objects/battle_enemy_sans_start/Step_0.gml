if start{
if t == 50{
	b = BulBone(bx, by+bup, 20, 0, 0, DIR.UP, 0, 0, 0, 0, 0, true, true)
}
if t%30=0{
	MakeSlash(bsx, bsy, irandom_range(0, 360), 0, 25, true)
}
battle_board.angle -= 1
if t = 750{
	battle_board.angle = 0
	Battle_EndTurn()
}
}
