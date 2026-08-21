_time = 0;
_frame_skip = 0;
_frame_skipped = 0;
global.blur_amount = 0;
global.classic_ui = 0;
global.classic_ui_spr = 0;
global.Panel = battle_menu_fight_knife;
global.kr = 1;
global.surface_gui = surface_create(640, 480);
global.controlstype = 0
global.clearbonewalls = []
global.deaths = 0
//if true, will show you debug info in battle\/
debug = false
//if true, you'll can control with gamepad\/
global.gamepad_controls = false
//if true, game will have gamepad vibration, but it's laggy thing
global.gamepad_vibration = false
//if true, centers origin of buttons\/
global.buttons_centered = true
//will blue/orange attack react on keyboard or soul moves?\/
global.attack_keyboard_mode = true
firstroom = room_logo
global.roomaftergameover = room_logo
//if true, when you press f3 changes fps\/
fpschanger = false

ini_open("savevar.ini")
gotoroom = ini_read_real("Var", "roomaftergameover", asset_get_index(room_get_name(global.roomaftergameover)))
global.deaths = ini_read_real("Var", "deaths", 0)
global.gameovered = ini_read_real("Var", "gameovered", 0)
global.restarting = ini_read_real("Var", "restarting", 0)
ini_close()

if os_type == os_android and global.controlstype = 0{
	instance_create_depth(0, 0, -400, obj_mobilecontrols_withRbutton)
}
if os_type == os_android and global.controlstype = 1{
    instance_create_depth(0, 0, -400, obj_mobilebuttonswithr)
}
if os_type == os_android and global.controlstype = 2{
    instance_create_depth(0, 0, -400, mobilepad_init)
	instance_create_depth(0, 0, -400, mobilepad_system)
}
if os_type == os_android and global.controlstype = 3{
    instance_create_depth(0, 0, -400, obj_keys)
}
//gamepad
if global.gamepad_controls{
	gp_key_state = ds_map_create();
	gp_keys_state = array_create(4, false); // LEFT, RIGHT, UP, DOWN

	var deadzone = 0.3;
	var x_axis = gamepad_axis_value(0, gp_axislh);
	var y_axis = gamepad_axis_value(0, gp_axislv);
	if (x_axis < -deadzone) {
	    keyboard_key_press(vk_left);
	    gp_keys_state[0] = true;
	} else if (x_axis > deadzone) {
	    keyboard_key_press(vk_right);
	    gp_keys_state[1] = true;
	}
	if (y_axis < -deadzone) {
	    keyboard_key_press(vk_up);
	    gp_keys_state[2] = true;
	} else if (y_axis > deadzone) {
	    keyboard_key_press(vk_down);
	    gp_keys_state[3] = true;
	}
}