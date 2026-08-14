// Current room are now only set into storage when calling Storage_SaveGame()

room_persistent=false;
if room = global.roomaftergameover and global.restarting = 1{
	global.restarting = 0
	ini_open("savevar.ini")
	ini_write_real("Var", "restarting", global.restarting)
	ini_close()
}
