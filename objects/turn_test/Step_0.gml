if dialogue == true{
if flag = false{
	flag = true
    a = instance_create_depth(430, 80, 0, battle_dialog_enemy);
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

if start=1{
	
}
