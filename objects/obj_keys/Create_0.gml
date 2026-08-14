cu = 1;
cd = 1;
cl = 1;
cr = 1;
dm = 1;
rainbow = 0;
awa = 0;
leftcolor = c_white
rightcolor = c_white
upcolor = c_white
downcolor = c_white
f2enable = true
depth = -400;
colors = [c_white, c_yellow]
function default_pos(){
padx = 140
pady = 360
zx = 400
zy = 360 + 85/2
xx = 488
xy = 360 + 85/2
cx = 576
cy = 360 + 85/2
f2x = 576
f2y = 59.66666666666667
}
function scr_add_keys(){
zb = virtual_key_add(zx-sprite_get_width(spr_key)/2, zy - sprite_get_width(spr_key)/2, sprite_get_width(spr_key), sprite_get_width(spr_key), ord("Z"))
xb = virtual_key_add(xx-sprite_get_width(spr_key)/2, xy - sprite_get_width(spr_key)/2, sprite_get_width(spr_key), sprite_get_width(spr_key), ord("X"))
cb = virtual_key_add(cx-sprite_get_width(spr_key)/2, cy - sprite_get_width(spr_key)/2, sprite_get_width(spr_key), sprite_get_width(spr_key), ord("C"))
if f2enable = true{
f2b = virtual_key_add(f2x-sprite_get_width(spr_key)/2, f2y - sprite_get_width(spr_key)/2, sprite_get_width(spr_key), sprite_get_width(spr_key), vk_f2)
}
}

default_pos()
zb = virtual_key_add(0, 0, 0, 0, ord("Z"))
xb = virtual_key_add(0, 0, 0, 0, ord("X"))
cb = virtual_key_add(0, 0, 0, 0, ord("C"))
editenable = true
edit = false
changenum = 0
ini_open("keys.ini")
zx = ini_read_real("keys", "zx", zx)
zy = ini_read_real("keys", "zy", zy)
xx = ini_read_real("keys", "xx", xx)
xy = ini_read_real("keys", "xy", xy)
cx = ini_read_real("keys", "cx", cx)
cy = ini_read_real("keys", "cy", cy)
f2x = ini_read_real("keys", "f2x", f2x)
f2y = ini_read_real("keys", "f2y", f2y)
padx = ini_read_real("keys", "padx", padx)
pady = ini_read_real("keys", "pady", pady)
ini_close()
			
if f2enable = true{
    f2b = virtual_key_add(0, 0, 0, 0, vk_f2)
}
if editenable = true{
    editb = virtual_key_add(0, 0, 0, 0, ord("#"))
}

if (!variable_global_exists("key"))
    global.key = 1;
