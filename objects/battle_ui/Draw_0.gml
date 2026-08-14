surface_set_target(sur);
draw_set_alpha(alpha)
if(global.kr){var color;
if (Player_GetKr() > 0){
    color = make_color_rgb(255,0,255);
}
else{
  color = c_white;
}
draw_set_font(font_mars_needs_cunnilingus);
draw_set_halign(0);
draw_set_valign(0);
draw_text_ext_transformed_color(x,y,Player_GetName()+"   LV "+string(Player_GetLv()),-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);
draw_sprite_ext(spr_battle_ui_hp,0,x+214,y+4,1,1,0,c_white,alpha);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,20,0,make_color_rgb(192,0,0),alpha);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,20,0,make_color_rgb(255,255,0),alpha);
draw_sprite_ext(spr_pixel,0,x + 245+Player_GetHp()*1.25,y-1,Player_GetKr()*1.25,20,0,color,alpha)
if Battle_GetMenu() = BATTLE_MENU.ITEM{
if showheals and Player_GetHp() != Player_GetHpMax(){
	var i=Item_GetInventoryItems()
    if variable_instance_exists(world, string(i.Get(Battle_GetMenuChoiceItem())) + "Heals"){
		var healcolor = merge_color(c_green, c_white, 0.5 + (dsin(current_time / 4) / 2));
        var heal_amount = variable_instance_get(world, string(i.Get(Battle_GetMenuChoiceItem())) + "Heals");
        var max_heal_possible = min(heal_amount, Player_GetHpMax() - Player_GetHp());
        var heal_pixels = max_heal_possible * 1.25;
        var current_hp_pixels = Player_GetHp() * 1.25;
        draw_sprite_ext(spr_pixel, 0, x + 245 + current_hp_pixels, y - 1, heal_pixels, 20, 0, healcolor, alpha);
		draw_set_font(fnt_PIxelMario)
		draw_set_color(65280)
		draw_set_halign(0);
		draw_set_valign(1);
		draw_text(540, 410 + (dsin(current_time / 6) * 2), " + " + string(max_heal_possible));
		draw_set_color(c_white)
		draw_set_font(font_mars_needs_cunnilingus);
		draw_set_halign(0);
		draw_set_valign(0);
    }
}
}
draw_text_ext_transformed_color(x+245+Player_GetHpMax()*1.25+14,y,"    "+string((Player_GetHp() + Player_GetKr()))+" / "+string(Player_GetHpMax()),-1,-1,1,1,0,color,color,color,color,alpha);
draw_sprite_ext(spr_battle_ui_kr,0,x+245+Player_GetHpMax()*1.25+10,y+4,1,1,0,color,alpha);}
else{draw_set_font(font_mars_needs_cunnilingus);
draw_set_halign(0);
draw_set_valign(0);
draw_set_color(c_white);
draw_text(x,y,Player_GetName()+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),alpha);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),alpha);
if Battle_GetMenu() = BATTLE_MENU.ITEM{
if showheals and Player_GetHp() != Player_GetHpMax(){
	var i=Item_GetInventoryItems()
    if variable_instance_exists(world, string(i.Get(Battle_GetMenuChoiceItem())) + "Heals"){
		var healcolor = merge_color(c_green, c_white, 0.5 + (dsin(current_time / 4) / 2));
        var heal_amount = variable_instance_get(world, string(i.Get(Battle_GetMenuChoiceItem())) + "Heals");
        var max_heal_possible = min(heal_amount, Player_GetHpMax() - Player_GetHp());
        var heal_pixels = max_heal_possible * 1.25;
        var current_hp_pixels = Player_GetHp() * 1.25;
        draw_sprite_ext(spr_pixel, 0, x + 245 + current_hp_pixels, y - 1, heal_pixels, 21, 0, healcolor, alpha);
		draw_set_font(fnt_PIxelMario)
		draw_set_color(65280)
		draw_set_halign(0);
		draw_set_valign(1);
		draw_text(540, 410 + (dsin(current_time / 6) * 2), " + " + string(max_heal_possible));
		draw_set_color(c_white)
		draw_set_font(font_mars_needs_cunnilingus);
		draw_set_halign(0);
		draw_set_valign(0);
    }
}
}
draw_text(x+245+Player_GetHpMax()*1.25+14,y,string(Player_GetHp())+" / "+string(Player_GetHpMax()));}
draw_set_alpha(1)
surface_reset_target();

if (outline)
    draw_surface_outline(sur, 0, 0, c_black, 2);
else
    draw_surface(sur, 0, 0);
