/// @desc Function for setting acts in menu in enemy, use only in user event 0(Init).
function Battle_SetAct(num, text, text_in){
	Battle_SetEnemyActionNumber(_enemy_slot, num)
	Battle_SetEnemyActionName(_enemy_slot, num-1, text)
	variable_instance_set(self, "acttext"+string(num), text_in)
}
