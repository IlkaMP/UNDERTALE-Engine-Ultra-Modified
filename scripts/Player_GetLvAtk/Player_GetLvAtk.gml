///@arg lv
///@desc Special function to get atk by level.
function Player_GetLvAtk(LV) {
	var result=-1;

	result=10+(LV-1)*2;

	return result;
}
