///@arg lv
///@desc Special function to get def by level.
function Player_GetLvDef(LV) {
	var result=-1;

	result=10+ceil((LV-4)/4);

	return result;
}
