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
ypos = 240
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
head_sprite = spr_sans_head
sweat_sprite = spr_sans_sweat
flasheye_sprite = spr_sans_head2
body_sprite = spr_sans_body
legs_sprite = spr_sans_legs
slamv_sprite = spr_sans_body_slamv
slamh_sprite = spr_sans_body_slamh

head_image = 0
flasheye_image = 0
sweat_image = 0
body_image = 0
legs_image = 0

slambody_x = 0
slambody_y = 0
slamhead_x = 0
slamhead_y = 0
head_x = 0
head_y = 0
body_x = 0
body_y = 0
b = 0
eye_flash = false
mode = 1
xdialogue = xpos+90
ydialogue = ypos-100
