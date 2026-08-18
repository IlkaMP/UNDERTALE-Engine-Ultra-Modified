event_inherited();
length = 20;
type = 0;
out = 0;
rotate = 0;
point = 0;
paps = 0;
dmg = 1

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

sine_growth = false;
cos_growth = false
base_length = 20;
growth_amplitude = 0;
growth_speed = 0.1;
growth_time = 0;
growth_offset = 0;
