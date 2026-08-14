/// @description Insert description here
// You can write your code in this editor
time+=1
if(time>=300&&!instance_exists(a)){image_alpha-=0.02}
if(time>=400&&image_alpha<=0){
	global.gameovered = 1
	global.restarting = 1
	ini_open("savevar.ini")
	ini_write_real("Var", "roomaftergameover", asset_get_index(room_get_name(global.roomaftergameover)))
	ini_write_real("Var", "gameovered", global.gameovered)
	ini_write_real("Var", "restarting", global.restarting)
	ini_close()
	game_restart()
	instance_exists(gameover)
	audio_stop_all()
}
