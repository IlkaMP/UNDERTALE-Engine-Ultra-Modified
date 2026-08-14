if (_enabled == true){
draw_sprite_ext(spr_up_key, keyboard_check(vk_up), 640 - 185 * 1.333-160*2, 480 - 150 * 1.333-120*2, keyboard_check(vk_up) ? 0.666+0.1333 : 0.666, keyboard_check(vk_up) ? 0.666+0.1333 : 0.666, 0, c_white, up_alpha)
draw_sprite_ext(spr_down_key, keyboard_check(vk_down), 640 - 185 * 1.333-160*2, 480 - 125 * 1.333-120*2, keyboard_check(vk_down) ? 0.666+0.1333 : 0.666, keyboard_check(vk_down) ? 0.666+0.1333 : 0.666, 0, c_white, down_alpha)
draw_sprite_ext(spr_left_key, keyboard_check(vk_left), 640 - 210 * 1.333-160*2, 480 - 125 * 1.333-120*2, keyboard_check(vk_left) ? 0.666+0.1333 : 0.666, keyboard_check(vk_left) ? 0.666+0.1333 : 0.666, 0, c_white, left_alpha)
draw_sprite_ext(spr_right_key, keyboard_check(vk_right), 640 - 160 * 1.333-160*2, 480 - 125 * 1.333-120*2, keyboard_check(vk_right) ? 0.666+0.1333 : 0.666, keyboard_check(vk_right) ? 0.666+0.1333 : 0.666, 0, c_white, right_alpha)
draw_sprite_ext(spr_z_key, keyboard_check(ord("Z")) || keyboard_check(vk_enter), 640 - 210 * 1.333-160*2, 480 - 100 * 1.333-120*2, keyboard_check(ord("Z")) ? 0.666+0.1333 : 0.666, keyboard_check(ord("Z")) ? 0.666+0.1333 : 0.666, 0, c_white, z_alpha)
draw_sprite_ext(spr_x_key, keyboard_check(ord("X")) || keyboard_check(vk_shift), 640 - 185 * 1.333-160*2, 480 - 100 * 1.333-120*2, keyboard_check(ord("X")) ? 0.666+0.1333 : 0.666, keyboard_check(ord("X")) ? 0.666+0.1333 : 0.666, 0, c_white, x_alpha)
draw_sprite_ext(spr_c_key,keyboard_check(ord("C")) || keyboard_check(vk_control), 640 - 160 * 1.333-160*2, 480 - 100 * 1.333-120*2, keyboard_check(ord("C")) ? 0.666+0.1333 : 0.666, keyboard_check(ord("C")) ? 0.666+0.1333 : 0.666, 0, c_white, c_alpha)
}
