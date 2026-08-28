if(follow){
    _angle += rotate;
    angle = _angle + follow_angle+90;}
else
	angle += rotate;
image_angle = angle;
switch(type)
{
    case 0:
        image_blend = c_white;
        break;
    case 1:
        image_blend = make_color_rgb(20,196,255);
        break;
    case 2:
        image_blend = make_color_rgb(248,148,29);
        break;
    case 3:
        image_blend = make_color_rgb(0, 255, 0);
        break;
    case 4:
        image_blend = c_yellow;
        break;
}
image_xscale = length
var temp_pos=[x,y];
x-=lengthdir_x(origin*length-sidesize,angle);
y-=lengthdir_y(origin*length-sidesize,angle);
if(out = 0){
	depth = DEPTH_BATTLE.BULLET;
	if instance_exists(battle_board){
	surface_set_target(Battle_GetBoardSurface());{
		event_user(2)
	}surface_reset_target();
	}
}
else{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
	event_user(2)
}
if (place_meeting(x, y, battle_soul)) {
    Battle_CallSoulEventBulletCollision();
}
if (place_meeting(x, y, battle_soul_yellow_bullet) && type == 4) {
    var obj = instance_place(x, y, battle_soul_yellow_bullet);
    instance_destroy(obj);
    instance_destroy();
}
if variable_instance_exists(self, "hit_destroy"){
if hit_destroy and hit{
if(place_meeting(x,y,battle_soul)){
		Battle_CallSoulEventBulletCollision();
		instance_destroy()
		hit = false
}
}
}
x=temp_pos[0];
y=temp_pos[1];
