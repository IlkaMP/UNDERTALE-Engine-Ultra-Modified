event_inherited();

_button_slot=2;

if global.classic_ui_spr{
	sprite_index = spr_battle_button_item_classic
}
if global.buttons_centered{
	sprite_set_offset(sprite_index, 55, 21);
	if !global.classic_ui_spr{
	sprite_set_offset(spr_battle_button_item_empty, 55, 21);
	} else{
	sprite_set_offset(spr_battle_button_item_empty_classic, 55, 21);
	}
}
