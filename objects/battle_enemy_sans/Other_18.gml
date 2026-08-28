///@desc Turn Preparation Start
if battle_turn_system = BATTLE_TURNS.CUSTOM{
if Battle_GetMenuChoiceButton() == 0{
	switch Battle_GetTurnNumber(){
		case 0:
			instance_create_depth(0,0,0,cutscene_start)
			break
		case 1:
		    instance_create_depth(0,0,0,turn_1)
			break
		case 2:
		    instance_create_depth(0,0,0,turn_2)
			break
		case 3:
		    instance_create_depth(0,0,0,turn_3)
			break
		case 4:
		    instance_create_depth(0,0,0,turn_4)
			break
	}
} else if (Battle_GetMenuChoiceButton() == 1){
    if !act_attack{
		Battle_SetNextState(0)
	} else{
		//instance_create_depth(0,0,0,turn_act);
	}
} else if (Battle_GetMenuChoiceButton() == 2){
	if !heal_attack{
		Battle_SetNextState(0)
	} else{
		//instance_create_depth(0,0,0,turn_heal);
	}
} else if (Battle_GetMenuChoiceButton() == 3){
	if !mercy_attack{
		Battle_SetNextState(0)
	} else{
		//instance_create_depth(0,0,0,turn_mercy);
	}
}
}
if battle_turn_system = BATTLE_TURNS.AUTO{
	if Battle_GetMenuChoiceButton() == 0{
	var turn = Battle_GetTurnNumber()
	if turn == 0{
		instance_create_depth(0, 0, 0, asset_get_index(object_get_name(object_index) + "_start"))
	} else{
		instance_create_depth(0, 0, 0, asset_get_index(object_get_name(object_index) + "_" + string(turn)))
	}
	}  else if (Battle_GetMenuChoiceButton() == 1){
    if !act_attack{
		Battle_SetNextState(0)
	} else{
		//instance_create_depth(0,0,0,turn_act);
	}
} else if (Battle_GetMenuChoiceButton() == 2){
	if !heal_attack{
		Battle_SetNextState(0)
	} else{
		//instance_create_depth(0,0,0,turn_heal);
	}
} else if (Battle_GetMenuChoiceButton() == 3){
	if !mercy_attack{
		Battle_SetNextState(0)
	} else{
		//instance_create_depth(0,0,0,turn_mercy);
	}
}
}