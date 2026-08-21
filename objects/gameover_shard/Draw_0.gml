if !gameover.outline{
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
} else{
	draw_sprite_outline(sprite_index, image_index, x, y, image_xscale, image_yscale, gameover.outline_size, image_angle, gameover.outline_color, image_blend, image_alpha);
}