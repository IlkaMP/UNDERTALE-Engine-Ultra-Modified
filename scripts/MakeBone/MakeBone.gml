///@arg x,y,length,hspeed,vspeed,type,out,angle,rotate,auto_destroy,is_paps,duration,follow,follow_board,follow_target,follow_angle,point,point_at,follow_x,follow_y
function MakeBone(X=instance_exists(battle_board) ? battle_board.x : 320, Y=instance_exists(battle_board) ? battle_board.y : 320, LENGTH=20, HSPEED=0, VSPEED=0, TYPE=0, OUT=0, ANGLE=DIR.UP, ROT=0, DESTROY=0, PAPS=0, DURATION=0, OBJ=noone, FOLLOW_BOARD=false, FOLLOW_TARGET=noone, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone) {
    var bone = instance_create_depth(X, Y, 0, battle_bullet_bone);
    bone.length = LENGTH;
    bone.hspeed = HSPEED;
    bone.vspeed = VSPEED;
    bone.type = TYPE;
    bone.out = OUT;
    bone.rotate = ROT;
    bone.auto_destroy = DESTROY;
	bone.paps = PAPS;
    bone.angle = ANGLE;
    bone._angle = ANGLE;
    bone.duration = DURATION;
    bone.follow = OBJ;
    bone.follow_board = FOLLOW_BOARD;
    if (OBJ) {
		bone.follow_angle = battle_board.angle;
        var pos = RotateAround(battle_board.x, battle_board.y, X, Y, battle_board.x, battle_board.y, battle_board.angle);
        bone.x = pos[0];
        bone.y = pos[1];
    }
    bone.follow_target = FOLLOW_TARGET;
    if (OBJ && instance_exists(bone.follow_target)) {
        bone.follow_angle = bone.follow_target.angle;
        var pos = RotateAround(bone.follow_target.x, bone.follow_target.y, X, Y, bone.follow_target.x, bone.follow_target.y, bone.follow_target.angle);
        bone.x = pos[0];
        bone.y = pos[1];
    }
    if (FOLLOW_ANGLE!=noone) {
        bone.follow_angle = FOLLOW_ANGLE;
    }
    bone.point = POINT;
    bone.point_at = POINT_AT;
    if (FOLLOW_X!=noone&&FOLLOW_Y!=noone) {
        bone.follow_x = FOLLOW_X;
        bone.follow_y = FOLLOW_Y;
        if (OBJ) {
            var pos = RotateAround(bone.follow_x, bone.follow_y, X, Y, bone.follow_x, bone.follow_y, bone.follow_angle);
            bone.x = pos[0];
            bone.y = pos[1];
        }
    }
    return bone;
}
///@arg x,y,angle,hspeed,vspeed,rot,length,type,out,auto_destroy,is_paps,*duration,*use_cos,*amplitude,*speed,*offset,*follow,*follow_board,*follow_targer,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneSin(X=instance_exists(battle_board) ? battle_board.x : 320, Y=instance_exists(battle_board) ? battle_board.y : 320, ANGLE, HSPEED, VSPEED, ROT, LENGTH, TYPE, OUT, DESTROY, PAPS=0, DURATION=-1, USE_COS, AMPLITUDE=20, SPEED=0.1, OFFSET=0, OBJ=noone, FOLLOW_BOARD=false, FOLLOW_TARGET=noone, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone)
{
    var bone = instance_create_depth(X, Y, (-500 << 0), battle_bullet_bone);
    bone.angle = ANGLE;
    bone.virtual[2] = ANGLE;
    bone.hspeed = HSPEED;
    bone.vspeed = VSPEED;
    bone.rotate = ROT;
    bone.length = LENGTH;
    bone.type = TYPE;
    bone.out = OUT;
    bone.auto_destroy = DESTROY;
	bone.paps = PAPS;
    bone.duration = DURATION;
	if !USE_COS{
    bone.sine_growth = true;
	} else{
	bone.cos_growth = true
	}
    bone.base_length = LENGTH;
    bone.growth_amplitude = AMPLITUDE;
    bone.growth_speed = SPEED;
    bone.growth_time = 0;
    bone.growth_offset = OFFSET;
	bone.follow = OBJ;
    bone.follow_board = FOLLOW_BOARD;
	bone.point = POINT
	bone.point_at = POINT_AT
    if (OBJ) {
		bone.follow_angle = battle_board.angle;
        var pos = RotateAround(battle_board.x, battle_board.y, X, Y, battle_board.x, battle_board.y, battle_board.angle);
        bone.x = pos[0];
        bone.y = pos[1];
    }
    bone.follow_target = FOLLOW_TARGET;
    if (OBJ && instance_exists(bone.follow_target)) {
        bone.follow_angle = bone.follow_target.angle;
        var pos = RotateAround(bone.follow_target.x, bone.follow_target.y, X, Y, bone.follow_target.x, bone.follow_target.y, bone.follow_target.angle);
        bone.x = pos[0];
        bone.y = pos[1];
    }
    if (FOLLOW_ANGLE!=noone) {
        bone.follow_angle = FOLLOW_ANGLE;
    }
    bone.point = POINT;
    bone.point_at = POINT_AT;
    if (FOLLOW_X!=noone&&FOLLOW_Y!=noone) {
        bone.follow_x = FOLLOW_X;
        bone.follow_y = FOLLOW_Y;
        if (OBJ) {
            var pos = RotateAround(bone.follow_x, bone.follow_y, X, Y, bone.follow_x, bone.follow_y, bone.follow_angle);
            bone.x = pos[0];
            bone.y = pos[1];
        }
    }
    return bone;
}
///@arg x,length,hspeed,type,out,rotate,auto_destroy,is_paps,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneBottom(X = instance_exists(battle_board) ? battle_board.x : 320, LENGTH = 20, HSPEED = 0, COLOR=0, OUT=0, ROT=0, DESTROY=0, PAPS=0, DURATION=-1, FOLLOW=false, FOLLOW_BOARD=false, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone, FOLLOW_TARGET=noone) {
    var Y = (((battle_board.y + battle_board.down) - (LENGTH / 2)) - 5);
    if (POINT == 1) {
        Y = battle_board.y + battle_board.down;
    }
    var bone = MakeBone(X, Y, LENGTH, HSPEED, 0, COLOR, OUT, 90, ROT, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);
    return bone;
}
///@arg y,length,vspeed,type,out,rotate,auto_destroy,is_paps,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneLeft(Y = instance_exists(battle_board) ? battle_board.y : 320, LENGTH = 20, HSPEED = 0, COLOR=0, OUT=0, ROT=0, DESTROY=0, PAPS=0, DURATION=-1, FOLLOW=false, FOLLOW_BOARD=false, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone, FOLLOW_TARGET=noone) {
    var X = (((battle_board.x - battle_board.left) + (LENGTH / 2)) + 5);
    if (argument[12] == 1) {
        X = battle_board.x - battle_board.left;
    }
    var bone = MakeBone(X, Y, LENGTH, 0, VSPEED, COLOR, OUT, 0, ROT, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    return bone;
}
///@arg y,length,vspeed,type,out,rotate,auto_destroy,is_paps,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneRight(Y = instance_exists(battle_board) ? battle_board.y : 320, LENGTH = 20, HSPEED = 0, COLOR=0, OUT=0, ROT=0, DESTROY=0, PAPS=0, DURATION=-1, FOLLOW=false, FOLLOW_BOARD=false, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone, FOLLOW_TARGET=noone) {
    var X = (((battle_board.x + battle_board.right) - (LENGTH / 2)) - 5);
    if (argument[12] == 1) {
        X = battle_board.x + battle_board.right;
    }
    var bone = MakeBone(X, Y, LENGTH, 0, VSPEED, COLOR, OUT, 180, ROT, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    return bone;
}
///@arg x,length,hspeed,type,out,rotate,auto_destroy,is_paps,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneTop(X = instance_exists(battle_board) ? battle_board.x : 320, LENGTH = 20, HSPEED = 0, COLOR=0, OUT=0, ROT=0, DESTROY=0, PAPS=0, DURATION=-1, FOLLOW=false, FOLLOW_BOARD=false, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone, FOLLOW_TARGET=noone) {
    var Y = (((battle_board.y - battle_board.up) + (LENGTH / 2)) + 5);
    if (argument[12] == 1) {
        Y = battle_board.y - battle_board.up;
    }
    var bone = MakeBone(X, Y, LENGTH, HSPEED, 0, COLOR, OUT, 270, ROT, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD,FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    return bone;
}
///@arg x,y,vspeed,type,out,rotate,gap,auto_destroy,is_paps,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneTwoH(X=instance_exists(battle_board) ? battle_board.x : 320, Y=instance_exists(battle_board) ? battle_board.y : 320, VSPEED=0, TYPE=0, OUT=0, ROTATE=0,GAP=20, DESTROY=0, PAPS=0, DURATION=-1, FOLLOW=false, FOLLOW_BOARD=false, FOLLOW_TARGET=noone, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone) {
    var bones = [];

    var boneLeft = MakeBoneLeft(Y, (((X - battle_board.x) + battle_board.left) - GAP), VSPEED, TYPE, OUT, ROTATE, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);
    var boneRight = MakeBoneRight(Y, (((battle_board.x + battle_board.right) - GAP) - X), VSPEED, TYPE, OUT, ROTATE, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    bones[0] = boneLeft;
    bones[1] = boneRight;
    return bones;
}
///@arg x,y,hspeed,type,out,rotate,gap,auto_destroy,is_paps,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneTwoV(X=instance_exists(battle_board) ? battle_board.x : 320, Y=instance_exists(battle_board) ? battle_board.y : 320, HSPEED=0, TYPE=0, OUT=0, ROTATE=0,GAP=20, DESTROY=0, PAPS=0, DURATION=-1, FOLLOW=false, FOLLOW_BOARD=false, FOLLOW_TARGET=noone, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone) {
    var bones = [];

    var boneLeft = MakeBoneTop(X, (((Y - battle_board.y) + battle_board.up) - GAP), HSPEED, TYPE, OUT, ROTATE, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);
    var boneRight = MakeBoneBottom(X, (((battle_board.y + battle_board.down) - GAP) - Y), HSPEED, TYPE, OUT, ROTATE, DESTROY, PAPS, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    bones[0] = boneLeft;
    bones[1] = boneRight;
    return bones;
}
///@arg number,angle,type,x,y,size_x,size_y,length,out,is_paps,*roting,*rot,*extra_angle,*rotate,*duration,*rott
function MakeBoneCircle(Number, Size, Type, X, Y, H, V, L, Out, PAPS=0, Enable=1, Rot=0, Ex=0, II=0, DURATION=-1, ROTT=0) {
    var bone = instance_create_depth(X, Y, 0, bone_circle);
    bone.number = Number;
    bone.type = Type;
    bone.angle = Size;
    bone.out = Out;
    bone.roting = Enable;
    bone.extra_angle = Ex;
    bone.rot = Rot;
    bone.size_x = H;
    bone.size_y = V;
    bone.length = L;
    bone.rotate = II
    bone.duration = DURATION;
    bone.rott = ROTT;
	bone.paps = PAPS
    return bone;
}
/// @arg x,y,angle_x,angle_y,angle_z,rotate_x,rotate_y,rotate_z,scale_x,scale_y,scale_z,vspeed,hspeed,shape,type,out,*duration,*gap,is_paps
function MakeBone3D() {
    var _x = argument[0];
    var _y = argument[1];
    var angle_x = argument[2];
    var angle_y = argument[3];
    var angle_z = argument[4];
    var rotate_x = argument[5];
    var rotate_y = argument[6];
    var rotate_z = argument[7];
    var scale_x = argument[8];
    var scale_y = argument[9];
    var scale_z = argument[10];
    var VSPEED = argument[11];
    var HSPEED = argument[12];
    var shape = argument[13];
    var type = argument[14];
    var out = argument[15];
    var duration = argument_count > 16 ? argument[16] : -1;
    var GAP = argument_count > 17 ? argument[17] : 40;
	var PAPS = argument_count > 18 ? argument[18] : 0;
    var inst = instance_create_depth(_x, _y, 0, battle_bullet_bone_3d);
    inst.anglex = angle_x;
    inst.angley = angle_y;
    inst.anglez = angle_z;
    inst.angxs = rotate_x;
    inst.angys = rotate_y;
    inst.angzs = rotate_z;
    inst.scalex = scale_x;
    inst.scaley = scale_y;
    inst.scalez = scale_z;
    inst.vspeed = VSPEED;
    inst.hspeed = HSPEED;
    inst.shape = shape;
    inst.type = type;
    inst.out = out;
    inst.duration = duration;
    inst.gap = GAP;
	inst.paps = PAPS;
    return inst;
}
///@arg x,y,length,hspeed,vspeed,type,out,angle,rotate,auto_destroy,is_paps,*duration,*scale,*extra_angle,*follow,*follow_board,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneArrow(X=instance_exists(battle_board) ? battle_board.x : 320, Y=instance_exists(battle_board) ? battle_board.y : 320, LENGTH=20, HSPEED=0, VSPEED=0, COLOR=0, OUT=0, ANGLE=DIR.UP, ROT=0, DESTROY=0, PAPS=0, DURATION=0, SCALE=0.5, EXTRA_ANGLE=30, OBJ=0, FOLLOW_BOARD=false, FOLLOW_ANGLE=noone, POINT=0, POINT_AT=0, FOLLOW_X=noone, FOLLOW_Y=noone) {
    var bone = instance_create_depth(X, Y, 0, bone_arrow);
    bone.length = LENGTH;
    bone.hspeed = HSPEED;
    bone.vspeed = VSPEED;
    bone.type = COLOR;
    bone.out = OUT;
    bone.rotate = ROT;
    bone.auto_destroy = DESTROY;
	bone.paps = PAPS
    bone.angle = ANGLE;
    bone._angle = ANGLE;
    bone.duration = DURATION;
    bone.scale = SCALE;
    bone.extra_angle = EXTRA_ANGLE;
    bone.follow = OBJ;
    bone.follow_board = FOLLOW_BOARD;
    bone.follow_angle = FOLLOW_ANGLE;
    bone.point = POINT;
    bone.point_at = POINT_AT;
    bone.follow_x = FOLLOW_X;
    bone.follow_y = FOLLOW_Y;
    return bone;
}
//mybonescriptspack
function MakeBonesFly(Dir = DIR.UP, Length = 20, Type = 0, is_paps=0){
	if Dir == DIR.UP{
		var cnm = 0;
		var rand = battle_board.x - 100;
		
		repeat (20)
    {
        var bone = MakeBone(rand + (cnm * 25), battle_board.y - battle_board.up - 5, 20, 0, 0, Type, 0, 90, 0, 1);
        bone.length = Length;
        bone.vspeed = 4;
		bone.paps = is_paps
        cnm += 1;
    }
	return true;
	}
	if Dir == DIR.DOWN{
		var cnm = 0;
		var rand = battle_board.x - 100;
		
		repeat (20)
    {
        var bone = MakeBone(rand + (cnm * 25), battle_board.y + battle_board.down + 5, 20, 0, 0, Type, 0, 90, 0, 1);
        bone.length = Length;
        bone.vspeed = -4;
        cnm += 1;
    }
	return true;
	}
	if Dir == DIR.LEFT{
		var cnm = 0;
		var rand = battle_board.y - 100;
		
		repeat (20)
    {
        var bone = MakeBone(battle_board.x - battle_board.left - 5, rand + (cnm * 25), 20, 0, 0, Type, 0, 0, 0, 1);
        bone.length = Length;
        bone.hspeed = 4;
        cnm += 1;
    }
	return true;
	}
	if Dir == DIR.RIGHT{
		var cnm = 0;
		var rand = battle_board.y - 100;
		
		repeat (20)
    {
        var bone = MakeBone(battle_board.x + battle_board.right + 5, rand + (cnm * 25), 20, 0, 0, Type, 0, 0, 0, 1);
        bone.length = Length;
        bone.hspeed = -4;
        cnm += 1;
    }
	return true;
	}
}
function MakeBonesWaveUpDown(Strength, Y, Type, is_paps=0){
    var cnm = 0;
    
    repeat (15)
    {
        b[1] = MakeBone(320 + (cnm * 12), Y, 0, 0, 0, Type, 0, 90, 0, 0, is_paps, 90);
        Anim_Create(b[1], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[1], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        b[2] = MakeBone(320 - (cnm * 12), Y, 0, 0, 0, 0, 0, 90, 0, 0, is_paps, 90);
        Anim_Create(b[2], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[2], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        cnm += 1;
    }
}
function MakeBonesWaveLeftRight(Strength, X, Type, is_paps=0){
    var cnm = 0;
    
    repeat (15)
    {
        b[1] = MakeBone(X, 320 + (cnm * 12), 0, 0, 0, Type, 0, 0, 0, 0, is_paps, 90);
        Anim_Create(b[1], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[1], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        b[2] = MakeBone(X, 320 - (cnm * 12), 0, 0, 0, 0, 0, 0, 0, 0, is_paps, 90);
        Anim_Create(b[2], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[2], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        cnm += 1;
    }
}
function MakeBonesColumn(X, Y, Angle, Bones, Length, PlusX, LenPlus, Hspeed, Vspeed, Out, Type, is_paps=0) {
    var repeats = 0;
    repeat (Bones) {
        repeats += 1;
        var xplus = PlusX * repeats;
        var lenplus = LenPlus * repeats; 
        
        MakeBone(X + xplus, Y - lenplus / 2, Length + lenplus, Hspeed, Vspeed, Type, Out, Angle, 0, 0, is_paps, 0, 0, 0);
    }
}
function MakeBonesExplosion(X, Y, Bones, Length, Speed, Out, Type, is_paps=0) {
    repeat (Bones) {
        var angle = random(360);
        var hsp = lengthdir_x(Speed, angle);
        var vsp = lengthdir_y(Speed, angle);
        MakeBone(X, Y, Length, hsp, vsp, Type, Out, angle, 0, 0, is_paps, 0, 0, 0);
    }
}
function MakeBonesWaveNew(Distance, BoneType, Direction, TimeToEnd, WaveTimer, is_paps=0){
	var waveobj = instance_create_depth(0, 0, 0, bullet_bone_wavenew)
    waveobj.BoneType = BoneType;
    waveobj.WaveType = Direction;
    waveobj.DistanceB = Distance;
    waveobj.bone_timer = WaveTimer;
    waveobj.bone_timer2 = WaveTimer;
    waveobj.bone_timer3 = WaveTimer;
    waveobj.bone_timer4 = WaveTimer;
    waveobj.TimeToEnd = TimeToEnd;
	waveobj.paps = is_paps
	return waveobj
}
