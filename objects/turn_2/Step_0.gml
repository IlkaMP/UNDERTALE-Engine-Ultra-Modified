if dialogue == true{
if flag = false{
	flag = true
    a = Battle_SetDialogEnemy(battle_enemy.xdialogue,battle_enemy.ydialogue, 0, 0);
    a.text = dialoguetext
	battle_soul.moveable = 0
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
	MakeBonesWaveNew(65, 0, DIR.RIGHT, 100, 1)
}
if t == 250{
	Battle_EndTurn()
}
}
