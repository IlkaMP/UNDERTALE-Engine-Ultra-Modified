depth = -10000;

if (global.key == true)
{
    draw_sprite_ext(spr_mobile_pad, 0, 140, 360, 2, 2, 0, c_white, 0.5);
    draw_sprite_ext(spr_mobile_vk, 0, 596, 430, 1, 1, 0, c_white, 0.5);
    draw_sprite_ext(spr_mobile_vk, 0, 516, 430, 1, 1, 0, c_white, 0.5);
    draw_sprite_ext(spr_mobile_vk, 0, 435, 465, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_mobile_vk, 0, 0 + 76/2, 0 + 38/2, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_mobile_vk, 0, 596, 0 + 38/2, 1, 1, 0, c_white, 0.5);
    draw_set_color(c_ltgray);
    draw_set_font(font_determination_mono);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(1);
	draw_text_ext_transformed(596, 0 + 38/2, "F2", -1, -1, 2, 2, 0);
    draw_text_ext_transformed(435, 460, "C", -1, -1, 2, 2, 0);
    draw_text_ext_transformed(516, 430, "X", -1, -1, 2, 2, 0);
    draw_text_ext_transformed(596, 430, "Z", -1, -1, 2, 2, 0);
}

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
