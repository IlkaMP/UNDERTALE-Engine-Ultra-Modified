if (!instance_exists(mainboard)) mainboard = Battle_CreateBoardRect(x, y, global.start_boardsize[0], global.start_boardsize[1], global.start_boardsize[2], global.start_boardsize[3]);
mainboard.x = x;
mainboard.y = y;
mainboard.angle = angle;
mainboard.left = left;
mainboard.right = right;
mainboard.up = up;
mainboard.down = down;
array_sort(global.boards_array, func_boardsort);