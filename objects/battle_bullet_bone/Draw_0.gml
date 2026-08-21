image_xscale = (length + 10) / 14;
if paps == 0{
if (point = 1) {
    sprite_index = spr_bone_1;
} else{
    sprite_index = spr_bone;
}
}

if paps = 1{
if (point = 1) {
    sprite_index = spr_bone_paps_1;
} else{
    sprite_index = spr_bone_paps;
}
}

if global.papsbones{
if (point = 1) {
    sprite_index = spr_bone_paps_1;
} else{
    sprite_index = spr_bone_paps;
}
}
event_inherited();
