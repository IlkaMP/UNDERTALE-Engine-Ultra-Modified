if active == true{
if (!surface_exists(surface)) {
    surface = surface_create(640, 480);
}

surface_set_target(surface);
draw_surface(application_surface, 0, 0);
surface_reset_target();

draw_set_color(c_black);
draw_rectangle(0, 0, 640, 480, false);
draw_set_color(c_white);

var _shift_r_x = sin(glitch_timer * 0.7) * fd;
var _shift_r_y = cos(glitch_timer * 0.5) * fd;

var _shift_g_x = sin(glitch_timer * 0.9) * -fd;
var _shift_g_y = cos(glitch_timer * 0.4) * fd;

var _shift_b_x = cos(glitch_timer * 0.6) * fd;
var _shift_b_y = sin(glitch_timer * 0.8) * -fd;

gpu_set_blendmode(bm_add);
draw_surface_ext(surface, _shift_r_x, _shift_r_y, 1, 1, 0, c_red, 1);
draw_surface_ext(surface, _shift_g_x, _shift_g_y, 1, 1, 0, c_lime, 1);
draw_surface_ext(surface, _shift_b_x, _shift_b_y, 1, 1, 0, c_blue, 1);
gpu_set_blendmode(bm_normal);
}