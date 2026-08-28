// Inherit the parent event
event_inherited();

//music\/(Use BGM_Follow in step in turn if your attacks going by the music)
bgm = shop_theme
if bgm != noone{
BGM_Play(5, bgm);
}
//enemy sets\/
depth=DEPTH_BATTLE.ENEMY;
_enemy_slot=-1;
//enemy start position\/
xpos = 320
ypos = 120
x = xpos
y = ypos
Battle_SetEnemyCenterPos(_enemy_slot, xpos, ypos)
//delete if you don't want grid background\/
instance_create_depth(0, 0, 0, grid_background)
//delete if you don't want the light in the bottom\/
light = instance_create_depth(320, 480, 0, obj_tx);
light.image_blend = c_yellow
//hp bar when you pressed fight in menu\/
menu_fight_hp_bar = true
menu_fight_hp_bar_width = 101
//wait time when attacked, and damaged if now it current weapon:
knife_anim_time = 50
knife_damage_time = 45
toughglove_anim_time = 15
toughglove_damage_time = 95
heal_attack = false
act_attack = false
mercy_attack = false
//for survival fights when need to start attack right away
firstattack = false
xdialogue = xpos+90
ydialogue = 80
battle_turn_system = BATTLE_TURNS.CUSTOM;
