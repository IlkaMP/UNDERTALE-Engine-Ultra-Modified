if editenable == true{
	if keyboard_check_pressed(ord("#")){
		edit = !edit
		if edit == false{
			scr_add_keys()
			ini_open("keys.ini")
			ini_write_real("keys", "zx", zx)
			ini_write_real("keys", "zy", zy)
			ini_write_real("keys", "xx", xx)
			ini_write_real("keys", "xy", xy)
			ini_write_real("keys", "cx", cx)
			ini_write_real("keys", "cy", cy)
			ini_write_real("keys", "f2x", f2x)
			ini_write_real("keys", "f2y", f2y)
			ini_write_real("keys", "padx", padx)
			ini_write_real("keys", "pady", pady)
			ini_close()
		}
	}
	if edit == true{
		cu = 1;
        cd = 1;
        cl = 1;
        cr = 1;
		virtual_key_delete(zb)
		virtual_key_delete(xb)
		virtual_key_delete(cb)
		if f2enable == true{
		virtual_key_delete(f2b)
		}
		if changenum == 0 and mouse_x > padx - 130 and mouse_x < padx + 130 and mouse_y > pady - 90 and mouse_y < pady + 90{
			padx = mouse_x
			pady = mouse_y
		}
		if mouse_x > zx - sprite_get_width(spr_key)/2 and mouse_x < zx + sprite_get_width(spr_key)/2 and mouse_y > zy - sprite_get_height(spr_key)/2 and mouse_y < zy + sprite_get_height(spr_key)/2{
			zx = mouse_x
			zy = mouse_y
		}
		if mouse_x > xx - sprite_get_width(spr_key)/2 and mouse_x < xx + sprite_get_width(spr_key)/2 and mouse_y > xy - sprite_get_height(spr_key)/2 and mouse_y < xy + sprite_get_height(spr_key)/2{
			xx = mouse_x
			xy = mouse_y
		}
		if mouse_x > cx - sprite_get_width(spr_key)/2 and mouse_x < cx + sprite_get_width(spr_key)/2 and mouse_y > cy - sprite_get_height(spr_key)/2 and mouse_y < cy + sprite_get_height(spr_key)/2{
			cx = mouse_x
			cy = mouse_y
		}
		if mouse_x > f2x - sprite_get_width(spr_key)/2 and mouse_x < f2x + sprite_get_width(spr_key)/2 and mouse_y > f2y - sprite_get_height(spr_key)/2 and mouse_y < f2y + sprite_get_height(spr_key)/2{
			f2x = mouse_x
			f2y = mouse_y
		}
		if mouse_x > room_width/2 - 140 and mouse_x < room_width/2 + 140 and mouse_y > room_height / 1.5 - 10 and mouse_y < room_height / 1.5 + 10{
			default_pos()
		}
	}
}
if edit == false{
if (keyboard_check_pressed(vk_backspace))
{
    if (global.key == 0)
        global.key = 1;
    else if (global.key == 1)
        global.key = 0;
}

    cu = 1;
    cd = 1;
    cl = 1;
    cr = 1;
    _m = 0;
    dm = 1;
    
    for (i = 0; i < 4; i++)
    {
        _ak = 0;
        _ak2 = 0;
        
        if (device_mouse_check_button(i, mb_left))
        {
            if (device_mouse_x_to_gui(i) <= room_width/2)
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

    
    if (dm == 0.5 && !keyboard_check(vk_f2))
        keyboard_key_press(vk_f2);
    if (cr == 0.5 && !keyboard_check(vk_right)){
	    rightcolor = c_yellow
        keyboard_key_press(vk_right);
	}
    
    if (cu == 0.5 && !keyboard_check(vk_up)){
	    upcolor = c_yellow
        keyboard_key_press(vk_up);
	}
    
    if (cl == 0.5 && !keyboard_check(vk_left)){
	    leftcolor = c_yellow
        keyboard_key_press(vk_left);
	}
    
    if (cd == 0.5 && !keyboard_check(vk_down)){
	    downcolor = c_yellow
        keyboard_key_press(vk_down);
	}
    
    if (dm == 1 && keyboard_check(vk_f2))
        keyboard_key_release(vk_f2);
		
    if (cr == 1 && keyboard_check(vk_right)){
	    rightcolor = c_white
        keyboard_key_release(vk_right);
	}
    
    if (cu == 1 && keyboard_check(vk_up)){
	    upcolor = c_white
        keyboard_key_release(vk_up);
	}
    
    if (cl == 1 && keyboard_check(vk_left)){
	    leftcolor = c_white
        keyboard_key_release(vk_left);
	}
    
    if (cd == 1 && keyboard_check(vk_down)){
		downcolor = c_white
        keyboard_key_release(vk_down);
	}
}
}
