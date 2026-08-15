/// @desc Player initial script, don't forget to check objects "world" and enemy object to set other inits
function Player_CustomInitialData(){
	//player name\/
	Player_SetName("PLAYER");
	//player lv\/
	Player_SetLv(1);
	// you can choose this method to set HP automatically by level or just set hp yourself\/
    Player_SetHpMax(20 + (Player_GetLv() - 1) * 4)
	Player_SetHp(Player_GetHpMax())
	//Player_SetHpMax(20);
	//Player_SetHp(20);
	//player stats\/
	Player_SetAtk(10);
	Player_SetDef(10);
	Player_SetSpd(2);
	Player_SetInv(40);
	Player_SetKr(0);
	Player_SetBattleFightMenuObj(battle_menu_fight_knife);
	
	var items=Item_GetInventoryItems();
	items.Add(ITEM_TOY_KNIFE);
	items.Add(ITEM_TOUGH_GLOVE);
	items.Add(ITEM_FADED_RIBBON);
	items.Add(ITEM_DICE);
	items.Add(ITEM_DICE);
	items.Add(ITEM_DICE);
	items.Add(ITEM_BANDAGE);
	items.Add(ITEM_PELMENI);
	var phones=Item_GetInventoryPhones();
	phones.Add(ITEM_PHONE_TML);
	
	Player_SetItemWeapon(ITEM_STICK);
	Player_SetItemArmor(ITEM_BANDAGE);
	//makes all of the bones Papyrused
    global.papsbones = false
    //set false to disable blur
    global.blur = true
	//shaking on souls slams and other...\/
	global.shaking = false
	//if true item system will be just like in undertale
	global.vanilla_items = false
    //classic ui from undertale or new?\/
    global.classic_ui = false
    global.classic_ui_spr = false
    //Set var to 0 to disable kr
    global.kr = true
}
