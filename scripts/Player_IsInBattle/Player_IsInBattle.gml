///@desc Checks in battle player or not, if yes will return true.
function Player_IsInBattle() {
	return instance_exists(battle);
}
