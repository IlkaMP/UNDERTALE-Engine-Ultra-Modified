///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg type
///@arg pause
function MakeGun(){
	var X=argument[0];
	var Y=argument[1];
	var XSCALE=argument[2];
	var YSCALE=argument[3];
	var TYPE=argument[4];
	var PAUSE=argument[5];

g=instance_create_depth(X,Y,0,battle_bullet_gun_shot);
g.xsc=XSCALE;
g.ysc=YSCALE;
g.type=TYPE;
//g.angle=ANGLE;
g.show_pause=PAUSE
g.alarm[0]=PAUSE;

return g;
}