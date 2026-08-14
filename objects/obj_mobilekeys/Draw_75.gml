if (global.mbk == 1)
{
    draw_set_alpha(0.5);
    draw_set_font(font_mars_needs_cunnilingus);
    draw_set_color(c_green);
    draw_roundrect(380, 420, 460, 440, 0);
    draw_set_alpha(0.8);
    draw_text(415, 420, "C");
    draw_set_alpha(0.5);
    draw_set_color(c_orange);
    draw_roundrect(460, 400, 540, 440, 0);
    draw_set_alpha(0.8);
    draw_text(465, 410, "Shift");
    draw_set_alpha(0.5);
    draw_set_color(c_aqua);
    draw_roundrect(540, 400, 620, 440, 0);
    draw_set_alpha(0.8);
    draw_text(545, 410, "Enter");
    draw_set_color(d);
    draw_roundrect(540, 0, 620, 40, 0);
    draw_set_alpha(0.8);
    draw_text(545, 10, "Reset");
    draw_set_alpha(1);
    draw_sprite_ext(control_joy, 0, 70, 300, 2, 2, 0, c_white, 0.41);
    awa += 1.45;
    d = make_color_hsv(awa % 223, 255, 200);
}
