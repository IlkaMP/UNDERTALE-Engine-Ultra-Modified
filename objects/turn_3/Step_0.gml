if dialogue == true and flag = false and dstart = true{
if flag = false{
	flag = true
    a = Battle_SetDialogEnemy(battle_enemy.xdialogue,battle_enemy.ydialogue, 0, 0);
    a.text = dialoguetext
}
}
if dstart = true{
	if !instance_exists(a){
		dend = true
	}
}

if dend = false{
	td += 1
	if td == 70{
		dstart = true
	}
}
if dend == true{
	t+=1
}
if start and dend{
	if onetime = false{
		onetime = true
		Battle_SetSoul(battle_soul_blue)
	}
	dstart = false
	if t == 50{
		var lengthb = 40
		b = Battle_MakeBone(bx, by+bdown, lengthb, 0, 0, 0, 0, DIR.UP, 0, 1, 0, true, true)
		b.point = true
		b1 = Battle_MakeBone(bx, by-bup, lengthb, 0, 0, 0, 0, DIR.DOWN, 0, 1, 0, true, true)
		b1.point = true
		plat = Battle_MakePlatform(bx, by, 20, DIR.RIGHT, 0, 0, true, 0)
		plat.rounded = true
	}
	if t = 60{
		SlamDown()
	}
	if t > 50 and t % 40 == 0{
		b2 = Battle_MakeBoneSharp(bx, by - 120, 0, 0, 0, 0, point_direction(bx, by - 120, bsx, bsy), 2, 0)
	}
	if t > 50{
		battle_board.angle += 2
	}
	if t = 350{
		battle_board.angle = 0
		Battle_EndTurn();
	}
}