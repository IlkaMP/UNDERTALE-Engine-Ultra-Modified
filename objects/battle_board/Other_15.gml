/// @description Newcreate
mainboard = Battle_CreateBoardRect(x, y, global.start_boardsize[0], global.start_boardsize[1], global.start_boardsize[2], global.start_boardsize[3]);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, global.turn_boardsize[0]);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN, global.turn_boardsize[1]);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, global.turn_boardsize[2]);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, global.turn_boardsize[3]);