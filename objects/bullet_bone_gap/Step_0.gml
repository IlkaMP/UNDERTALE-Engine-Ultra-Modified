if !VERTICAL{
	if (is_array(bones)) {
	if instance_exists(bones[0]){
	bones[0].length = (((x - battle_board.x) + battle_board.left) - GAP_SIZE+GAP_POS)
    bones[1].length = (((battle_board.x + battle_board.right) - GAP_SIZE-GAP_POS) - x)
	}
	}
}else{
	if (is_array(bones)) {
	if instance_exists(bones[1]){
	bones[0].length = (((y - battle_board.y) + battle_board.up) - GAP_SIZE + GAP_POS)
    bones[1].length = (((battle_board.y + battle_board.down) - GAP_SIZE - GAP_POS) - y)
	}
	}
}
if !instance_exists(bones[0]){
	instance_destroy(self)
}
