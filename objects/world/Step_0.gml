Anim_Step();
BGM_Step();

if(_time>=60){
	var z=Storage_GetStaticGeneral();
	var time=z.Get(FLAG_STATIC_TIME,0);
	z.Set(FLAG_STATIC_TIME,time+1);
	_time=0;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skip>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skip=0;
	}else{
		_frame_skip+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}

if(keyboard_check_pressed(vk_f2)){
	game_restart();
}




if(keyboard_check_pressed(vk_f4)&&!keyboard_check(vk_alt)&&!keyboard_check(vk_control)&&!keyboard_check(vk_shift)){
	window_set_fullscreen(!window_get_fullscreen());
}
//gamepad
if global.gamepad_controls{
	var deadzone = 0.3;
	var gp0 = gamepad_is_connected(0);

	var keys = [vk_left, vk_right, vk_up, vk_down, vk_f2, vk_f4, ord("D"), ord("E"), ord("B"), ord("U"), ord("G"), ord("K")];

	for (var i = 0; i < array_length(keys); i++) {
	    var k = keys[i];
	    if (!ds_map_exists(gp_key_state, k)) ds_map_add(gp_key_state, k, false);
	}

	if (gp0) {
	    var x_axis = gamepad_axis_value(0, gp_axislh);
	    var y_axis = gamepad_axis_value(0, gp_axislv);

	    var left_pressed  = x_axis < -deadzone;
	    var right_pressed = x_axis > deadzone;

	    if (left_pressed && !gp_key_state[?vk_left]) {
	        keyboard_key_press(vk_left);
	        gp_key_state[?vk_left] = true;
	    } else if (!left_pressed && gp_key_state[?vk_left]) {
	        keyboard_key_release(vk_left);
	        gp_key_state[?vk_left] = false;
	    }

	    if (right_pressed && !gp_key_state[?vk_right]) {
	        keyboard_key_press(vk_right);
	        gp_key_state[?vk_right] = true;
	    } else if (!right_pressed && gp_key_state[?vk_right]) {
	        keyboard_key_release(vk_right);
	        gp_key_state[?vk_right] = false;
	    }

	    var up_pressed   = y_axis < -deadzone;
	    var down_pressed = y_axis > deadzone;

	    if (up_pressed && !gp_key_state[?vk_up]) {
	        keyboard_key_press(vk_up);
	        gp_key_state[?vk_up] = true;
	    } else if (!up_pressed && gp_key_state[?vk_up]) {
	        keyboard_key_release(vk_up);
	        gp_key_state[?vk_up] = false;
	    }

	    if (down_pressed && !gp_key_state[?vk_down]) {
	        keyboard_key_press(vk_down);
	        gp_key_state[?vk_down] = true;
	    } else if (!down_pressed && gp_key_state[?vk_down]) {
	        keyboard_key_release(vk_down);
	        gp_key_state[?vk_down] = false;
	    }

	    var f2_pressed = gamepad_button_check(0, gp_shoulderl) || gamepad_button_check(0, gp_shoulderlb) || gamepad_button_check(0, gp_start);
	    if (f2_pressed && !gp_key_state[?vk_f2]) {
	        keyboard_key_press(vk_f2);
	        gp_key_state[?vk_f2] = true;
	    } else if (!f2_pressed && gp_key_state[?vk_f2]) {
	        keyboard_key_release(vk_f2);
	        gp_key_state[?vk_f2] = false;
	    }

	    var f4_pressed = gamepad_button_check(0, gp_shoulderrb);
	    if (f4_pressed && !gp_key_state[?vk_f4]) {
	        keyboard_key_press(vk_f4);
	        gp_key_state[?vk_f4] = true;
	    } else if (!f4_pressed && gp_key_state[?vk_f4]) {
	        keyboard_key_release(vk_f4);
	        gp_key_state[?vk_f4] = false;
	    }
	    var debug_buttons = [ord("D"), ord("E"), ord("B"), ord("U"), ord("G"), ord("K")];
	    for (var i = 0; i < array_length(debug_buttons); i++) {
	        var db = debug_buttons[i];
	        var pressed = gamepad_button_check(0, gp_shoulderr);
	        if (pressed && !gp_key_state[?db]) {
	            keyboard_key_press(db);
	            gp_key_state[?db] = true;
	        } else if (!pressed && gp_key_state[?db]) {
	            keyboard_key_release(db);
	            gp_key_state[?db] = false;
	        }
	    }
	}
}
if fpschanger{
if (keyboard_check_pressed(vk_f3))
{
    if (game_get_speed(gamespeed_fps) == 60)
        game_set_speed(30, gamespeed_fps);
    else if (game_get_speed(gamespeed_fps) == 30)
        game_set_speed(15, gamespeed_fps);
    else if (game_get_speed(gamespeed_fps) == 15)
        game_set_speed(60, gamespeed_fps);
}
}
