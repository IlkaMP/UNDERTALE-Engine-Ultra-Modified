start=0
t=0
Battle_SetBoardSize(65,65,65,65)
bx = battle_board.x; by = battle_board.y; bleft = battle_board.left; bright = battle_board.right; bup = battle_board.up; bdown = battle_board.down; bsx = battle_soul.x; bsy = battle_soul.y
RoundRect = Battle_CreateBoardRoundrect(bx, by, 200, 15, -400, 0, 0, 0)
dialogue = true
dialoguetext = "{font 0}{voice 0}So{sleep 10}.{sleep 10}.{sleep 10}.&Do you really&want to fight&with me?{pause}{clear}Anyway{sleep 4}.{sleep 4}.{sleep 4}.{sleep 4}.{pause}{clear}This turn will be laggy"
flag = false
endturntext = "* Wow, two attacks survived."
CC_Add(object_get_name(object_index))
