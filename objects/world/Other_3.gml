Anim_Uninit();
Dialog_Uninit();
Item_Uninit();
Storage_Uninit();
Encounter_Uninit();
Input_Uninit();
Demo_Uninit();
if global.restarting = 0{
	global.gameovered = 0
	ini_open("savevar.ini")
	ini_write_real("Var", "gameovered", global.gameovered)
	ini_close()
}
