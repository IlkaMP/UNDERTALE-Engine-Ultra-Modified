///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg type
///@arg pause
///@desc Makes gun shot.
function MakeGun(X, Y, XSCALE, YSCALE, TYPE, PAUSE){
var g=instance_create_depth(X,Y,0,battle_bullet_gun_shot);
g.xsc=XSCALE;
g.ysc=YSCALE;
g.type=TYPE;
//g.angle=ANGLE;
g.pause=PAUSE
g.show_pause=PAUSE
Anim_Create(g,"show_pause",ANIM_TWEEN.QUAD,ANIM_EASE.IN_OUT,PAUSE,-PAUSE,PAUSE)
return g;
}
