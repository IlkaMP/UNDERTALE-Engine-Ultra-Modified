if (keyboard_check(126))
{
    if (device_mouse_x_to_gui(0) >= analog_posx && device_mouse_x_to_gui(0) <= (analog_posx + (59 * analog_scale)))
        analog_center_x = device_mouse_x_to_gui(0) - (21 * analog_scale);
    
    if (device_mouse_y_to_gui(0) >= analog_posy && device_mouse_y_to_gui(0) <= (analog_posy + (59 * analog_scale)))
        analog_center_y = device_mouse_y_to_gui(0) - (21 * analog_scale);
}
else
{
    analog_center_x = (analog_posx + ((59 * analog_scale) / 2)) - ((41 * analog_scale) / 2);
    analog_center_y = (analog_posy + ((59 * analog_scale) / 2)) - ((41 * analog_scale) / 2);
}

if (keyboard_check_pressed(92))
{
    edit += 1;
    
    if (edit == 1)
    {
        black_fade = 0.4;
        text_black_fade = 0.9;
    }
    else if (edit == 3)
    {
        virtual_key_delete(virtual_key_z);
        virtual_key_delete(virtual_key_x);
        virtual_key_delete(virtual_key_c);
		virtual_key_delete(virtual_key_r);
        virtual_key_delete(virtual_key_one);
        virtual_key_delete(virtual_key_two);
        virtual_key_delete(virtual_key_three);
        virtual_key_delete(virtual_key_four);
        virtual_key_delete(virtual_key_zp);
        virtual_key_delete(virtual_key_xp);
        virtual_key_delete(virtual_key_cp);
		virtual_key_delete(virtual_key_rp);
        virtual_key_delete(virtual_key_onep);
        virtual_key_delete(virtual_key_twop);
        virtual_key_delete(virtual_key_threep);
        virtual_key_delete(virtual_key_fourp);
        ini_open("touchconfig.ini");
        ini_write_real("CONFIG", "zx", zx);
        ini_write_real("CONFIG", "zy", zy);
        ini_write_real("CONFIG", "xx", xx);
        ini_write_real("CONFIG", "xy", xy);
        ini_write_real("CONFIG", "cx", cx);
        ini_write_real("CONFIG", "cy", cy);
		ini_write_real("CONFIG", "rx", rx);
        ini_write_real("CONFIG", "ry", ry);
        ini_write_real("CONFIG", "onex", onex);
        ini_write_real("CONFIG", "oney", oney);
        ini_write_real("CONFIG", "twox", twox);
        ini_write_real("CONFIG", "twoy", twoy);
        ini_write_real("CONFIG", "threex", threex);
        ini_write_real("CONFIG", "threey", threey);
        ini_write_real("CONFIG", "fourx", fourx);
        ini_write_real("CONFIG", "foury", foury);
        ini_write_real("CONFIG", "analog_posx", analog_posx);
        ini_write_real("CONFIG", "analog_posy", analog_posy);
        ini_write_real("CONFIG", "button_scale", button_scale);
        ini_write_real("CONFIG", "analog_scale", analog_scale);
        ini_write_real("CONFIG", "joystick_type", joystick_type);
        ini_write_real("CONFIG", "controls_opacity", controls_opacity);
        ini_close();
        black_fade = 0;
        text_black_fade = 0;
        edit = 0;
        scr_add_keys_buttons();
    }
}

if (edit == 0)
    exit;

virtual_key_delete(virtual_key_z);
virtual_key_delete(virtual_key_x);
virtual_key_delete(virtual_key_c);
virtual_key_delete(virtual_key_r);
virtual_key_delete(virtual_key_one);
virtual_key_delete(virtual_key_two);
virtual_key_delete(virtual_key_three);
virtual_key_delete(virtual_key_four);
virtual_key_delete(virtual_key_zp);
virtual_key_delete(virtual_key_xp);
virtual_key_delete(virtual_key_cp);
virtual_key_delete(virtual_key_rp);
virtual_key_delete(virtual_key_onep);
virtual_key_delete(virtual_key_twop);
virtual_key_delete(virtual_key_threep);
virtual_key_delete(virtual_key_fourp);
scr_add_keys_buttons();
if (keyboard_check(vk_multiply))
{
    rx = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    ry = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}
if (keyboard_check(125))
{
    zx = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    zy = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}

if (keyboard_check(222))
{
    onex = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    oney = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}

if (keyboard_check(219))
{
    twox = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    twoy = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}

if (keyboard_check(220))
{
    threex = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    threey = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}

if (keyboard_check(vk_add))
{
    fourx = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    foury = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}

if (keyboard_check(124))
{
    xx = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    xy = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}

if (keyboard_check(94))
{
    cx = device_mouse_x_to_gui(0) - (19.5 * button_scale / 1.5);
    cy = device_mouse_y_to_gui(0) - (18 * button_scale / 1.5);
}

if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 75 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 93 && mouse_check_button_pressed(mb_left))
{
    if (button_scale > 1)
        button_scale -= 0.1;
}

if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 75 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 93 && mouse_check_button_pressed(mb_left))
{
    if (button_scale < 4)
        button_scale += 0.1;
}

if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 121 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 139 && mouse_check_button_pressed(mb_left))
{
    if (analog_scale > 1)
        analog_scale -= 0.1;
}

if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 121 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 139 && mouse_check_button_pressed(mb_left))
{
    if (analog_scale < 4)
        analog_scale += 0.1;
}

if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 130 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 160 && mouse_check_button_pressed(mb_left))
{
    if (joystick_type == 1)
        joystick_type -= 1;
}

if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 130 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 160 && mouse_check_button_pressed(mb_left))
{
    if (joystick_type == 0)
        joystick_type += 1;
}

if (device_mouse_x_to_gui(0) >= 459.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 469.5 && device_mouse_y_to_gui(0) <= 231 && mouse_check_button_pressed(mb_left))
{
    if (controls_opacity > 0)
        controls_opacity -= 0.05;
}

if (device_mouse_x_to_gui(0) >= 531.5 && device_mouse_y_to_gui(0) >= 167 && device_mouse_x_to_gui(0) <= 541.5 && device_mouse_y_to_gui(0) <= 231 && mouse_check_button_pressed(mb_left))
{
    if (controls_opacity < 1)
        controls_opacity += 0.05;
}

if (device_mouse_x_to_gui(0) >= 241 && device_mouse_y_to_gui(0) >= 412.25 && device_mouse_x_to_gui(0) <= 399 && device_mouse_y_to_gui(0) <= 436.25 && mouse_check_button_pressed(mb_left))
{
    zx = 567;
    zy = 115;
    xx = 683;
    xy = 115;
    cx = 627;
    cy = 30;
    onex = 635;
    oney = 228;
    twox = 635;
    twoy = 340;
    threex = -99;
    threey = 340;
    fourx = 4;
    foury = 340;
    button_scale = 3;
    analog_scale = 3.3;
    analog_posx = -42;
    analog_posy = 232.5;
    joystick_type = 0;
    controls_opacity = 0.5;
	rx = -99
    ry = 30
}

if (joystick_type == 1 && do1type == 0)
{
    do1type = 1;
    do0type = 0;
    onex = -49;
    oney = 228;
    twox = -49;
    twoy = 340;
    threex = 580;
    threey = 340;
    fourx = 690;
    foury = 340;
    zx = -2;
    xx = -118;
    cx = -62;
    zy = 115;
    xy = 115;
    cy = 30;
	rx = 690
	ry = 30
}

if (joystick_type == 0 && do0type == 0)
{
    do0type = 1;
    do1type = 0;
    onex = 635;
    oney = 228;
    twox = 635;
    twoy = 340;
    threex = -99;
    threey = 340;
    fourx = 4;
    foury = 340;
    zx = 567;
    zy = 115;
    xx = 683;
    xy = 115;
    cx = 627;
    cy = 30;
	rx = -99
    ry = 30
}
