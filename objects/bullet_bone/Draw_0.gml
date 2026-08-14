siner++
angle+=rot
image_angle=180-angle
if colour==noone colour=c_white
image_yscale=length/sprite_get_height(spr_bullet_bone);
image_index=paps;
var temp_pos=[x,y];
x-=lengthdir_x(origin,image_angle-90);
y-=lengthdir_y(origin,image_angle-90);
image_blend=colour;
depth=top ? DEPTH_BATTLE.BULLET_OUTSIDE_HIGH : DEPTH_BATTLE.BULLET;

if !top surface_set_target(Battle_GetBoardSurface());
draw_self();
//draw_rectangle_color(0, 0, 640, 480, c_red, c_blue, c_green, c_yellow, false);
if place_meeting(x,y,battle_soul)
{
	if colour == c_aqua {
		if battle_soul.x != battle_soul.xprevious || battle_soul.y != battle_soul.yprevious
			Battle_CallSoulEventBulletCollision();
	} else if colour == c_orange {
		if battle_soul.x == battle_soul.xprevious && battle_soul.y == battle_soul.yprevious
			Battle_CallSoulEventBulletCollision();
	} else
		Battle_CallSoulEventBulletCollision();
}
if !top surface_reset_target();

x=temp_pos[0];
y=temp_pos[1];
