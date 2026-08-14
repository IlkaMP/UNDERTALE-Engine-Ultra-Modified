if (keyboard_check_pressed(vk_backspace))
{
    if (global.mbk == 0)
        global.mbk = 1;
    else if (global.mbk == 1)
        global.mbk = 0;
    
    ini_open("Android.ini");
    ini_write_real("mk", "enabled?", global.mbk);
    ini_close();
}

if (global.mbk == 1)
{
    cu = 1;
    cd = 1;
    cl = 1;
    cr = 1;
    cz = 1;
    cx = 1;
    cg = 1;
    _m = 0;
    dm = 1;
    
    for (i = 0; i < 4; i++)
    {
        _ak = 0;
        _ak2 = 0;
        
        if (device_mouse_check_button(i, mb_left))
        {
            if (device_mouse_x_to_gui(i) >= 560 && device_mouse_y_to_gui(i) >= 51)
            {
                cz = 0.5;
                _ak = 90;
            }
            else if (device_mouse_x_to_gui(i) >= 480 && device_mouse_x_to_gui(i) < 560)
            {
                cx = 0.5;
                _ak = 88;
            }
            else if (device_mouse_x_to_gui(i) >= 400 && device_mouse_x_to_gui(i) < 480)
            {
                cg = 0.5;
                _ak = 67;
            }
            else if (device_mouse_x_to_gui(i) >= 560 && device_mouse_y_to_gui(i) <= 50)
            {
                dm = 0.5;
                _ak = 113;
            }
            else if (!_m)
            {
                event_user(0);
            }
        }
        
        if (device_mouse_check_button_pressed(i, mb_left))
        {
            if (_ak != 0)
            {
                if (keyboard_check(_ak))
                {
                    keyboard_key_release(_ak);
                    keyboard_key_press(_ak);
                }
            }
            
            if (_ak2 != 0)
            {
                if (keyboard_check(_ak2))
                {
                    keyboard_key_release(_ak2);
                    keyboard_key_press(_ak2);
                }
            }
        }
    }
    
    if (dm == 0.5 && !keyboard_check(vk_f2))
        keyboard_key_press(vk_f2);
    
    if (cz == 0.5 && !keyboard_check(ord("Z")))
        keyboard_key_press(ord("Z"));
    
    if (cx == 0.5 && !keyboard_check(ord("X")))
        keyboard_key_press(ord("X"));
    
    if (cg == 0.5 && !keyboard_check(ord("C")))
        keyboard_key_press(ord("C"));
    
    if (cr == 0.5 && !keyboard_check(vk_right))
        keyboard_key_press(vk_right);
    
    if (cu == 0.5 && !keyboard_check(vk_up))
        keyboard_key_press(vk_up);
    
    if (cl == 0.5 && !keyboard_check(vk_left))
        keyboard_key_press(vk_left);
    
    if (cd == 0.5 && !keyboard_check(vk_down))
        keyboard_key_press(vk_down);
    
    if (dm == 1 && keyboard_check(vk_f2))
        keyboard_key_release(vk_f2);
    
    if (cz == 1 && keyboard_check(ord("Z")))
        keyboard_key_release(ord("Z"));
    
    if (cx == 1 && keyboard_check(ord("X")))
        keyboard_key_release(ord("X"));
    
    if (cg == 1 && keyboard_check(ord("C")))
        keyboard_key_release(ord("C"));
    
    if (cr == 1 && keyboard_check(vk_right))
        keyboard_key_release(vk_right);
    
    if (cu == 1 && keyboard_check(vk_up))
        keyboard_key_release(vk_up);
    
    if (cl == 1 && keyboard_check(vk_left))
        keyboard_key_release(vk_left);
    
    if (cd == 1 && keyboard_check(vk_down))
        keyboard_key_release(vk_down);
}
