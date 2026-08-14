event_inherited();

var items=Item_GetInventoryItems();
if !global.classic_ui_spr{
sprite_index=(items.GetCount()>0) ? spr_battle_button_item : spr_battle_button_item_empty;
} else{
	sprite_index=(items.GetCount()>0) ? spr_battle_button_item_classic : spr_battle_button_item_empty_classic;
}