start=0
t=0
Battle_SetBoardSize(65,65,65,65)
bx = battle_board.x; by = battle_board.y; bleft = battle_board.left; bright = battle_board.right; bup = battle_board.up; bdown = battle_board.down; bsx = battle_soul.x; bsy = battle_soul.y
dialogue = false
dialoguetext = "{font 0}{voice 0}Well{sleep 10}.{sleep 10}.{sleep 10}.{pause}{clear}{speed 5}Let's just start."
flag = false
endturntext = "* Nevermind, three attacks&  survived."
CC_Add(object_get_name(object_index))
