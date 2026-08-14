function CustomItem_Pelmeni() : ItemTypeSimple("Pelmeni","* Pelmeni - Heals 5 HP&* Food 10/10.") constructor{
	_price_buy = -1;
	_price_sell = 1;
	_shop_description = "Pelmeni";
	function OnUse(inventory,index){
		Dialog_Add("* You ate pelmens."+Item_GetTextHeal(5));
		Dialog_Start();

		Player_Heal(5);
		audio_play_sound(snd_item_heal,0,false);

		inventory.Remove(index);
	}
}