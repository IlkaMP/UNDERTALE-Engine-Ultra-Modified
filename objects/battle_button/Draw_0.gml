draw_self()
if(!global.classic_ui){
if !outline{
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white, alpha)
} else{
	draw_sprite_outline(sprite_index, image_index, x, y, image_xscale, image_yscale, 2, image_angle, 0, image_blend, image_alpha);
}
}
