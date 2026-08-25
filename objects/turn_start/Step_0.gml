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
if t = 1{
	Fader_Fade(0, 1, 50, 0, c_red)
}
if t == 50{
	MakeGun(bsx, bsy, 1, 1, 0, 10)
	Fader_Fade(1, 0, 10, 0, c_red)
	MakeSlash(bx, by, DIR.UP-45, 0)
	paps = MakeBone(bx, by, 65, 0, 0, BONE_TYPE.ORANGE, 0, 0, 10, 0, 1, 0, noone, noone, noone, noone, 1)
	MakeGB(0, 0, bx - 200, by, 0, DIR.RIGHT, 2, 2, 0)
}
if t == 250{
	Battle_EndTurn()
}
}
