image_xscale = width / 4;
if !rounded
	sprite_index = (sticky ? spr_battle_platform_green: spr_battle_platform_purple);
else
	sprite_index = (sticky ? spr_battle_platform_green_rounded: spr_battle_platform_purple_rounded);
event_inherited();
