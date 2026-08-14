draw_sprite_ext(spr_logo,0,320,240,2,2,0,c_white,1);
if lol_enginevoice{
draw_set_font(font_determination_mono)
draw_set_halign(fa_center)
draw_set_color(c_red)
if t = 100{
	audio_play_sound(snd_uteng2, 0, 0)
}
if t = 200{
	audio_play_sound(snd_uteng3, 0, 0)
}
if t > 100{
draw_text_transformed(320, 300, "Ultra", 2, 2, 0)
}
if t > 200{
draw_text_transformed(320, 325, "Modified", 2, 2, 0)
}
}
if(_hint){
	draw_set_font(font_crypt_of_tomorrow);
	draw_set_halign(fa_middle);
	draw_set_color(c_gray);
	draw_text_ext_transformed(320,360,"[PRESS Z OR ENTER]",9,-1,2,2,0);
	draw_set_halign(fa_left);
}
if lol_enginevoice{
draw_set_color(c_white)
draw_set_halign(fa_left)
}