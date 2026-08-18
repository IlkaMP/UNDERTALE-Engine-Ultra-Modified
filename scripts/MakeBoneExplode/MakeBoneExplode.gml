function MakeBoneExplode(X,Y,ANGLE,PAUSE,LENGTH = 20,TYPE = 0,OUT = 0, is_paps=0, BONESCOUNT = 5,ROTATING = 1,GRAVITY = 0.1) 
{
	var bp = instance_create_depth(X,Y,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH*2,Warning);
	bp.x = X;
	bp.y = Y;
	bp.image_angle = ANGLE;
	bp.PAUSEM = PAUSE;
	bp.lengthbones = LENGTH;
	bp.bonecount = BONESCOUNT;
	bp.rotating = ROTATING;
	bp.gravityneed = GRAVITY;
	bp.paps = is_paps
	bp.type = TYPE
	bp.out = OUT
	return bp;
}
