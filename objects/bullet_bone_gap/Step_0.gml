if !VERTICAL{
	if (is_array(bones)) {
	if instance_exists(bones[0]){
	bones[0].length = (((X - battle_board.x) + battle_board.left) - GAP_SIZE+GAP_POS)
    bones[1].length = (((battle_board.x + battle_board.right) - GAP_SIZE-GAP_POS) - X)
	}
	}
}else{
	if (is_array(bones)) {
	if instance_exists(bones[0]){
	bones[0].length = (((Y - battle_board.y) + battle_board.up) - GAP_SIZE + GAP_POS)
    bones[1].length = (((battle_board.y + battle_board.down) - GAP_SIZE - GAP_POS) - Y)
	}
	}
}
if !instance_exists(bones[0]){
	instance_destroy(self)
}
