if dialogue == true{
if flag = false{
	flag = true
    a = Battle_SetDialogEnemy(battle_enemy.xdialogue,battle_enemy.ydialogue, 0, 0);
    a.text = dialoguetext
}
if !instance_exists(a){
	start=1
	battle_soul.moveable = 1
	Battle_SetTurnTime(-1)
}
} else{
	start=1
	battle_soul.moveable = 1
	Battle_SetTurnTime(-1)
}

if start{
if t == 50{
	MakeBoneExplode(bx, by, 0, 10, 20, 0, 1, 10, 1, 0.1)
	MakeBoneExplode(bx, by, 0, 20, 10, 1, 0, 30, 2, -0.1)
	MakeBoneExplode(bx, by, 0, 30, 20, 2, 1, 10, 1, 0.1)
	MakeBoneExplode(bx, by, 0, 40, 10, 0, 0, 30, 2, -0.1)
	MakeBoneExplode(bx, by, 0, 50, 20, 1, 1, 10, 1, 0.1)
	MakeBoneExplode(bx, by, 0, 60, 10, 0, 0, 30, 2, -0.1)
	MakeBoneExplode(bx, by, 0, 70, 20, 2, 1, 10, 1, 0.1)
	MakeBoneExplode(bx, by, 0, 80, 10, 1, 0, 30, 2, -0.1)
	MakeBoneExplode(bx, by, 0, 90, 20, 0, 1, 10, 1, 0.1)
}
if t == 300{
	Battle_EndTurn()
}
}
