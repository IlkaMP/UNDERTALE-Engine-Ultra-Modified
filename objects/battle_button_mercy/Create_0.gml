event_inherited();

_button_slot=3;

if global.classic_ui_spr{
	sprite_index = spr_battle_button_mercy_classic
}
if global.buttons_centered{
	sprite_set_offset(sprite_index, 55, 21);
}
