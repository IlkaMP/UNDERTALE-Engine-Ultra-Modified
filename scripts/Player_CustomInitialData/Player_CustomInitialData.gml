/// @desc Player initial script, don't forget to check objects "world" and enemy object to set other inits.
function Player_CustomInitialData(){
	//player name\/
	Player_SetName("PLAYER");
	//player lv\/
	Player_SetLv(1);
	//you can choose this method to set HP automatically by level or just set hp by yourself\/
    Player_SetHpMax(20 + (Player_GetLv() - 1) * 4) // Or use Player_GetLvHpMax(LV)
	//here you just sets your current hp value=\/
	Player_SetHp(Player_GetHpMax())
	//Player_SetHpMax(20);
	//Player_SetHp(20);
	//player stats\/
	Player_SetAtk(10);
	Player_SetDef(10);
	Player_SetSpd(2);
	Player_SetInv(40);
	Player_SetKr(0);
	//it will set whats weapon object will be used\/
	Player_SetBattleFightMenuObj(battle_menu_fight_knife);
	//items. check Item_Custom if you need to add yours\/
	var items=Item_GetInventoryItems();
	items.Add(ITEM_TOY_KNIFE);
	items.Add(ITEM_TOUGH_GLOVE);
	items.Add(ITEM_FADED_RIBBON);
	items.Add(ITEM_DICE);
	items.Add(ITEM_DICE);
	items.Add(ITEM_DICE);
	items.Add(ITEM_BANDAGE);
	items.Add(ITEM_PELMENI);
	/*
	//like that you can set items anywhere\/
	var i=Item_GetInventoryItems()
	if (Item_GetNumber()-1>=3){
		i.Set(0,ITEM_DICE)
	}
	*/
	//umm.. phones?\/
	var phones=Item_GetInventoryPhones();
	phones.Add(ITEM_PHONE_TML);
	//weapons by default\/
	Player_SetItemWeapon(ITEM_STICK);
	Player_SetItemArmor(ITEM_BANDAGE);
	//if enabled, makes all of the bones Papyrused\/
    global.papsbones = false
    //set false to disable blur\/
    global.blur = false
	//amount of blur\/
	global.blur_amount = 0;
	//shaking on souls slams and other...\/
	global.shaking = true
	//if enabled item system will be just like in undertale\/
	global.vanilla_items = false
    //classic ui from undertale or new?\/
    global.classic_ui = false
    global.classic_ui_spr = false
    //set this var to false/0 to disable kr\/
    global.kr = true
	//battle_board settings on start\/
	global.turn_animboard = true //it's will animate board at the start of every turn if true
	global.start_boardsize = [/*up*/65,/*down*/65,/*left*/283,/*right*/283] //board size when game started
	global.turn_boardsize = [/*up*/65,/*down*/65,/*left*/65,/*right*/65] //board size every turn if not set
	//check "world" object for other settings
}
