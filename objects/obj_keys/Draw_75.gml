if (global.key == 1)
{
    draw_set_font(font_determination_mono);
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	//up
    draw_sprite_ext(spr_key, 0, padx, pady - 85/2 - 3, 1, 1, 0, c_white, 0.41);
	draw_text_transformed_color(padx, pady - 85/2 - 3, ">", 2, 2, 90, upcolor, upcolor, upcolor, upcolor, 0.5)
	//down
    draw_sprite_ext(spr_key, 0, padx, pady + 85/2, 1, 1, 0, c_white, 0.41);
	draw_text_transformed_color(padx, pady + 85/2 + 3, ">", 2, 2, -90, downcolor, downcolor, downcolor, downcolor, 0.5)
	//left
    draw_sprite_ext(spr_key, 0, padx - 85 - 3, pady + 85/2, 1, 1, 0, c_white, 0.41);
	draw_text_transformed_color(padx - 85 - 3, pady + 85/2, ">", 2, 2, -180, leftcolor, leftcolor, leftcolor, leftcolor, 0.5)
	//right
    draw_sprite_ext(spr_key, 0, padx + 85 + 3, pady + 85/2, 1, 1, 0, c_white, 0.41);
	draw_text_transformed_color(padx + 85 + 3, pady + 85/2, ">", 2, 2, 0, rightcolor, rightcolor, rightcolor, rightcolor, 0.5)
	//z
	var key = "Z"
	draw_sprite_ext(spr_key, 0, zx, zy, 1, 1, 0, c_white, 0.41);
	draw_text_transformed_color(zx, zy, key, 2, 2, 0, colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], 0.5)
	//x
	var key = "X"
	draw_sprite_ext(spr_key, 0, xx, xy, 1, 1, 0, c_white, 0.41);
	draw_text_transformed_color(xx, xy, key, 2, 2, 0, colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], 0.5)
	//c
	var key = "C"
	draw_sprite_ext(spr_key, 0, cx, cy, 1, 1, 0, c_white, 0.41);
	draw_text_transformed_color(cx, cy, key, 2, 2, 0, colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], colors[keyboard_check(ord(key))], 0.5)
	//editbutton
	if editenable == true{
	var key = ord("#")
	draw_sprite_ext(spr_key, 0, 140 - 85 - 3, 59.66666666666667, 1, 1, 0, c_white, 0.41);
    draw_text_transformed_color(140 - 85 - 3, 59.66666666666667, "Edit", 1.25, 1.25, 0, colors[keyboard_check(key)], colors[keyboard_check(key)], colors[keyboard_check(key)], colors[keyboard_check(key)], 0.5)
	}
	//f2
	if f2enable == true{
		var key = vk_f2
	    draw_sprite_ext(spr_key, 0, f2x, f2y, 1, 1, 0, c_white, 0.41);
	    draw_text_transformed_color(f2x, f2y, "F2", 2, 2, 0, colors[keyboard_check(key)], colors[keyboard_check(key)], colors[keyboard_check(key)], colors[keyboard_check(key)], 0.5)
	}
	if edit == true{
		draw_text_transformed_color(room_width/2, room_height / 1.5, "Reset to defaults", 1, 1, 0, c_white, c_white,c_white, c_white, 1)
	}
    awa += 1.45;
    d = make_color_hsv(awa % 223, 255, 200);
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}
