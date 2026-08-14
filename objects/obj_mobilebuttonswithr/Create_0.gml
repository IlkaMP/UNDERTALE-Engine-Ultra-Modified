settings_font = 0;
settings_num_x = 0;
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
rx = -99
ry = 30
fourx = 4;
foury = 340;
button_scale = 3;
analog_scale = 3.3;
analog_posx = -42;
analog_posy = 232.5;
analog_edit_selected = 0;
analog_center_x = (analog_posx + ((59 * analog_scale) / 2)) - ((41 * analog_scale) / 2);
analog_center_y = (analog_posy + ((59 * analog_scale) / 2)) - ((41 * analog_scale) / 2);
arrowkeys_area_size = 19.675;
arrowkeys_back_area_size = 45;
joystick_type = 0;
settingsx = 5;
settingsy = 5;
edit = 0;
black_fade = 0;
text_black_fade = 0;
controls_opacity = 0.5;
do0type = 0;
do1type = 0;
depth = -400

if (file_exists("touchconfig.ini"))
{
    ini_open("touchconfig.ini");
    zx = ini_read_real("CONFIG", "zx", zx);
    zy = ini_read_real("CONFIG", "zy", zy);
    xx = ini_read_real("CONFIG", "xx", xx);
    xy = ini_read_real("CONFIG", "xy", xy);
    cx = ini_read_real("CONFIG", "cx", cx);
    cy = ini_read_real("CONFIG", "cy", cy);
	rx = ini_read_real("CONFIG", "rx", rx);
    ry = ini_read_real("CONFIG", "ry", ry);
    onex = ini_read_real("CONFIG", "onex", onex);
    oney = ini_read_real("CONFIG", "oney", oney);
    twox = ini_read_real("CONFIG", "twox", twox);
    twoy = ini_read_real("CONFIG", "twoy", twoy);
    threex = ini_read_real("CONFIG", "threex", threex);
    threey = ini_read_real("CONFIG", "threey", threey);
    fourx = ini_read_real("CONFIG", "fourx", fourx);
    foury = ini_read_real("CONFIG", "foury", foury);
    analog_posx = ini_read_real("CONFIG", "analog_posx", analog_posx);
    analog_posy = ini_read_real("CONFIG", "analog_posy", analog_posy);
    button_scale = ini_read_real("CONFIG", "button_scale", button_scale);
    analog_scale = ini_read_real("CONFIG", "analog_scale", analog_scale);
    joystick_type = ini_read_real("CONFIG", "joystick_type", joystick_type);
    controls_opacity = ini_read_real("CONFIG", "controls_opacity", controls_opacity);
    ini_close();
}

display_set_gui_size(640, 480);
