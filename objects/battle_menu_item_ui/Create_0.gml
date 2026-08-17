depth=DEPTH_BATTLE.UI_HIGH;

slot = 0
inv = Item_GetInventoryItems()
now = Battle_GetMenuChoiceItem()
count = Item_GetNumber()-1
Battle_SetMenuChoiceItem(0)
items = []
for (var i = 0; i < (count+1); i++){
	array_push(items, inv.GetItemName(i))
}
function UpdTxt(){
	var inv1 = Item_GetInventoryItems();
	var count1 = Item_GetNumber()
	var text = "";
	var text2 = "";
	if (slot < count1) {
    battle._menu_choice_item = slot;
        
    while (slot >= battle._menu_choice_item_first + 4) {
        battle._menu_choice_item_first += 4;
    }
    while (slot < battle._menu_choice_item_first) {
        battle._menu_choice_item_first -= 4;
    }
	var proc = battle._menu_choice_item_first;
	repeat(2)
	{
	if (proc < count1) {
	    text += "* " + battle_menu_item_ui.items[proc]+"&";
	}
	    proc += 1;
	if (proc < count1) {
	    text2 += "* " + battle_menu_item_ui.items[proc]+"&";
	}
	    proc += 1;
	}
	}
	Battle_SetDialog(text, true);
	Battle_SetDialog(text2, true, true);
}
UpdTxt()
