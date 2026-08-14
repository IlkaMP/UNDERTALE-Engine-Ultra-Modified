if (keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(ord("M")))
{
    if (global.key == false){
        global.key = true;
	}
    else if (global.key == true){
        global.key = false;
	}
    
    ini_open("key.ini");
    ini_write_string("Game", "Key", global.key);
    ini_close();
}

_mksystem = false;
_mkx = true;
_mkz = true;
_mkhide = true
_mkf2 = true
_mkrestart = true;
_mkup = true;
_mkdown = true;
_mkleft = true;
_mkright = true;

if (global.key == true)
{
    for (user = 0; user < 4; user += 1)
    {
        _mkpad_check = 0;
        _mkpad_pressed = 0;
        
        if (device_mouse_check_button(user, mb_left))
        {
            if (device_mouse_x_to_gui(user) >= 560 and device_mouse_y_to_gui(user) >= 38)
            {
                _mkz = 0;
                _mkpad_check = 90;
            }
            else if (device_mouse_x_to_gui(user) >= 480 && device_mouse_x_to_gui(user) <= 560)
            {
                _mkx = 0;
                _mkpad_check = 88;
            }
            else if (device_mouse_x_to_gui(user) >= 400 && device_mouse_x_to_gui(user) <= 480)
            {
                _mkrestart = 0;
                _mkpad_check = 67;
            }
            else if (_mksystem != true)
            {
                event_user(0);
            }
			if (device_mouse_x_to_gui(user) <= 76 and device_mouse_y_to_gui(user) <= 38)
            {
                _mkhide = false;
                _mkpad_check = vk_alt;
            }
        }
        
        if (device_mouse_check_button_pressed(user, mb_left))
        {
            keyboard_key_release((_mkpad_check != 0) ? (keyboard_check(_mkpad_check) ? _mkpad_check : vk_nokey) : vk_nokey);
            keyboard_key_press((_mkpad_check != 0) ? (keyboard_check(_mkpad_check) ? _mkpad_check : vk_nokey) : vk_nokey);
            keyboard_key_release((_mkpad_pressed != 0) ? (keyboard_check(_mkpad_pressed) ? _mkpad_pressed : vk_nokey) : vk_nokey);
            keyboard_key_press((_mkpad_pressed != 0) ? (keyboard_check(_mkpad_pressed) ? _mkpad_pressed : vk_nokey) : vk_nokey);
        }
    }
    
    event_user(1);
}
if keyboard_check_pressed(vk_alt){
    if (global.key == true){
        global.key = false;
	}
}