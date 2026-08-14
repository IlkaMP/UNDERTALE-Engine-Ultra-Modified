/// @description Insert description here
// You can write your code in this editor
if _timer <= wait {
	switch dir {
		case DIR.DOWN:
			x1 = battle_board.x + offset - width / 2 + 2;
			y1 = battle_board.y + battle_board.down - 2;
			x2 = battle_board.x + offset + width / 2 - 2;
			y2 = y1 - height + 4;
			break;
		case DIR.RIGHT:
			x1 = battle_board.x + battle_board.right - 2;
			y1 = battle_board.y - offset + width / 2 - 2;
			x2 = x1 - height + 4;
			y2 = battle_board.y - offset - width / 2 + 2;
			break;
		case DIR.UP:
			x1 = battle_board.x - offset - width / 2 + 2;
			y1 = battle_board.y - battle_board.up + 2;
			x2 = battle_board.x - offset + width / 2 - 2;
			y2 = y1 + height - 4;
			break;
		case DIR.LEFT:
			x1 = battle_board.x - battle_board.left + 2;
			y1 = battle_board.y + offset + width / 2 - 2;
			x2 = x1 + height - 4;
			y2 = battle_board.y + offset - width / 2 + 2;
			break;
	}
	
	switch (_timer%4) {
		case 0:
		case 1:
			draw_set_color(c_red);
			break;
		case 2:
		case 3:
			draw_set_color(c_yellow);
			break;
	}
	
	draw_rectangle(x1, y1, x2, y2, true);
}
