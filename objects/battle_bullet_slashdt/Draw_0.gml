
if (type == 0)
    image_blend = make_color_rgb(255, 25, 212);

if (type == 1)
    image_blend = make_color_rgb(20, 196, 255);
	
if (type == 2)
    image_blend = make_color_rgb(248,148,29);
	
if (type == 3)
    image_blend = make_color_rgb(255,0,0);

if (line == 1)
{
    draw_sprite_ext(spr_slash_warn, (type == 0) ? 1 : 4, lengthdir_x(0, image_angle) + x, lengthdir_y(0, image_angle) + y, scale, 0.5, image_angle, color_warn, alpha);
    draw_sprite_ext(spr_slash_warn, (type == 0) ? 2 : 5, lengthdir_x(0, image_angle) + x, lengthdir_y(0, image_angle) + y, scale, 0.5, image_angle, color_warn, alpha);
    draw_sprite_ext(spr_slash_warn, (type == 0) ? 0 : 3, x, y, 0.5, 0.5, image_angle, color_warn, 1);
}

color_warn = image_blend

draw_self();

if (line == 0 && image_alpha == 0)
    instance_destroy();