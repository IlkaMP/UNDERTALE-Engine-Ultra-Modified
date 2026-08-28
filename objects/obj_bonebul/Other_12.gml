///@description Bone Draw
draw_self()
var bonespr = paps ? spr_bonebul_paps : spr_bonebul_sans
draw_sprite_ext(bonespr, 0, x+lengthdir_x(length, angle), y+lengthdir_y(length, angle), 1, image_yscale, angle, image_blend, image_alpha)
draw_sprite_ext(bonespr, 0, x+lengthdir_x(0, angle), y+lengthdir_y(0, angle), 1, image_yscale, angle-180, image_blend, image_alpha)
