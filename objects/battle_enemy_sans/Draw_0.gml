var lw = sprite_get_width(legs_sprite)
var lh = sprite_get_height(legs_sprite)*2
var offset = 2
draw_sprite_pos(legs_sprite,legs_image,xpos-lw+body_x+slambody_x+offset,ypos-lh+body_y+slambody_y,xpos+lw+body_x+slambody_x+offset,ypos-lh+body_y+slambody_y,xpos+lw+offset,ypos,xpos-lw+offset,ypos,1)
draw_sprite_ext(body_sprite,body_image,xpos+body_x-2+slambody_x,ypos+body_y-48+slambody_y,2,2,0,c_white,1)
if eye_flash {
	draw_sprite_ext(flasheye_sprite,flasheye_image,xpos+head_x+slamhead_x,ypos+head_y+-86+slamhead_y,2,2,0,c_white,1)
	flasheye_image+=0.25
}
else {
	draw_sprite_ext(head_sprite,head_image,xpos+head_x+slamhead_x,ypos+head_y+-86+slamhead_y,2,2,0,c_white,1)
}
draw_sprite_ext(sweat_sprite,sweat_image,xpos+head_x+slamhead_x,ypos+head_y+-86+slamhead_y,2,2,0,c_white,1)
