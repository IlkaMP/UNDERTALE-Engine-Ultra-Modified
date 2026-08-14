function CustomItem_ToughGlove() : ItemTypeSimple("Tough Glove","* Tough Glove - Weapon AT 5&* A worn pink leather glove.&* For five-fingered folk.") constructor{
	price =1145;
	_shop_description = "TuffGlove"
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curWeapon=Player_GetItemWeapon();
		inventory.Set(index,curWeapon);
		Player_SetItemWeapon(ITEM_TOUGH_GLOVE);
		Player_SetBattleFightMenuObj(battle_menu_fight_toughglove);

		Player_SetAtkItem(5);

		audio_play_sound(snd_item_equip,0,false);
	}
}
