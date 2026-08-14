var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();

if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		image_index=1;
		if(MENU==BATTLE_MENU.BUTTON){
			if !global.buttons_centered{
				battle_soul.x=x+16;
				battle_soul.y=y+22;
			} else{
				battle_soul.x=x-39;
				battle_soul.y=y+1;
			}
		}
	}else{
		image_index=0;
	}
}else{
	image_index=0;
	
}
if(!global.classic_ui){
alpha += ((image_index - alpha) * 0.2);
alpha = abs(alpha);}