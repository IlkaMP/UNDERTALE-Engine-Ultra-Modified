///@arg x,y,length,hspeed,vspeed,type,out,angle,rotate,auto_destroy,duration,follow,follow_board,follow_target,follow_angle,point,point_at,follow_x,follow_y
function MakeBone() {
    var OBJ = 0;
    var DURATION = -1;
    var X = argument[0];
    var Y = argument[1];
    var LENGTH = argument[2];
    var HSPEED = argument[3];
    var VSPEED = argument[4];
    var COLOR = argument[5];
    var OUT = argument[6];
    var ANGLE = argument[7];
    var ROT = argument[8];
    var DESTROY = argument[9];

    if (argument_count >= 11) DURATION = argument[10];

    if (argument_count >= 12) OBJ = argument[11];

    var bone = instance_create_depth(X, Y, 0, battle_bullet_bone);
    bone.length = LENGTH;
    bone.hspeed = HSPEED;
    bone.vspeed = VSPEED;
    bone.type = COLOR;
    bone.out = OUT;
    bone.rotate = ROT;
    bone.auto_destroy = DESTROY;
    bone.angle = ANGLE;
    bone._angle = ANGLE;
    bone.duration = DURATION;
    bone.follow = OBJ;
    if (argument_count >= 13) {
        bone.follow_board = argument[12];
        if (OBJ) {
			bone.follow_angle = battle_board.angle;
            var pos = RotateAround(battle_board.x, battle_board.y, X, Y, battle_board.x, battle_board.y, battle_board.angle);
            bone.x = pos[0];
            bone.y = pos[1];
        }
    }
    if (argument_count >= 14) {
        bone.follow_target = argument[13];
        if (OBJ && instance_exists(bone.follow_target)) {
            bone.follow_angle = bone.follow_target.angle;
            var pos = RotateAround(bone.follow_target.x, bone.follow_target.y, X, Y, bone.follow_target.x, bone.follow_target.y, bone.follow_target.angle);
            bone.x = pos[0];
            bone.y = pos[1];
        }
    }
    if (argument_count >= 15&&argument[14]!=noone) {
        bone.follow_angle = argument[14];
    }

    if (argument_count >= 16) bone.point = argument[15];

    if (argument_count >= 17) bone.point_at = argument[16];

    if (argument_count >= 19&&argument[17]!=noone&&argument[18]!=noone) {
        bone.follow_x = argument[17];
        bone.follow_y = argument[18];
        if (OBJ) {
            var pos = RotateAround(bone.follow_x, bone.follow_y, X, Y, bone.follow_x, bone.follow_y, bone.follow_angle);
            bone.x = pos[0];
            bone.y = pos[1];
        }
    }	
    return bone;
}
///@arg x,length,hspeed,type,out,rotate,auto_destroy,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneBottom() {
    var X = argument[0];
    var LENGTH = argument[1];
    var HSPEED = argument[2];
    var COLOR = argument[3];
    var OUT = argument[4];
    var ROT = argument[5];
    var DESTROY = argument[6];
    var DURATION = -1;
    var FOLLOW = false;
    var FOLLOW_BOARD = false;
    var FOLLOW_ANGLE = noone;
    var POINT = 0;
    var POINT_AT = 0;
    var FOLLOW_X = noone;
    var FOLLOW_Y = noone;
    var FOLLOW_TARGET = noone;

    if (argument_count >= 8) DURATION = argument[7];
    if (argument_count >= 9) FOLLOW = argument[8];
    if (argument_count >= 10) FOLLOW_BOARD = argument[9];
    if (argument_count >= 11) FOLLOW_TARGET = argument[10];
    if (argument_count >= 12) FOLLOW_ANGLE = argument[11];
    if (argument_count >= 13) POINT = argument[12];
    if (argument_count >= 14) POINT_AT = argument[13];
    if (argument_count >= 16) {
        FOLLOW_X = argument[14];
        FOLLOW_Y = argument[15];
    }
    var Y = (((battle_board.y + battle_board.down) - (LENGTH / 2)) - 5);
    if (argument[12] == 1) {
        Y = battle_board.y + battle_board.down;
    }
    var bone = MakeBone(X, Y, LENGTH, HSPEED, 0, COLOR, OUT, 90, ROT, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);
    return bone;
}
///@arg y,length,vspeed,type,out,rotate,auto_destroy,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneLeft() {
    var Y = argument[0];
    var LENGTH = argument[1];
    var VSPEED = argument[2];
    var COLOR = argument[3];
    var OUT = argument[4];
    var ROT = argument[5];
    var DESTROY = argument[6];
    var DURATION = -1;
    var FOLLOW = false;
    var FOLLOW_BOARD = false;
    var FOLLOW_ANGLE = noone;
    var POINT = 0;
    var POINT_AT = 0;
    var FOLLOW_X = noone;
    var FOLLOW_Y = noone;
    var FOLLOW_TARGET = noone;
    if (argument_count >= 8) DURATION = argument[7];
    if (argument_count >= 9) FOLLOW = argument[8];
    if (argument_count >= 10) FOLLOW_BOARD = argument[9];
    if (argument_count >= 11) FOLLOW_TARGET = argument[10];
    if (argument_count >= 12) FOLLOW_ANGLE = argument[11];
    if (argument_count >= 13) POINT = argument[12];
    if (argument_count >= 14) POINT_AT = argument[13];
    if (argument_count >= 16) {
        FOLLOW_X = argument[14];
        FOLLOW_Y = argument[15];
    }
    var X = (((battle_board.x - battle_board.left) + (LENGTH / 2)) + 5);
    if (argument[12] == 1) {
        X = battle_board.x - battle_board.left;
    }
    var bone = MakeBone(X, Y, LENGTH, 0, VSPEED, COLOR, OUT, 0, ROT, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    return bone;
}
///@arg y,length,vspeed,type,out,rotate,auto_destroy,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneRight() {
    var Y = argument[0];
    var LENGTH = argument[1];
    var VSPEED = argument[2];
    var COLOR = argument[3];
    var OUT = argument[4];
    var ROT = argument[5];
    var DESTROY = argument[6];
    var DURATION = -1;
    var FOLLOW = false;
    var FOLLOW_BOARD = false;
    var FOLLOW_ANGLE = noone;
    var POINT = 0;
    var POINT_AT = 0;
    var FOLLOW_X = noone;
    var FOLLOW_Y = noone;
    var FOLLOW_TARGET = noone;
    if (argument_count >= 8) DURATION = argument[7];
    if (argument_count >= 9) FOLLOW = argument[8];
    if (argument_count >= 10) FOLLOW_BOARD = argument[9];
    if (argument_count >= 11) FOLLOW_TARGET = argument[10];
    if (argument_count >= 12) FOLLOW_ANGLE = argument[11];
    if (argument_count >= 13) POINT = argument[12];
    if (argument_count >= 14) POINT_AT = argument[13];
    if (argument_count >= 16) {
        FOLLOW_X = argument[14];
        FOLLOW_Y = argument[15];
    }
    var X = (((battle_board.x + battle_board.right) - (LENGTH / 2)) - 5);
    if (argument[12] == 1) {
        X = battle_board.x + battle_board.right;
    }
    var bone = MakeBone(X, Y, LENGTH, 0, VSPEED, COLOR, OUT, 180, ROT, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    return bone;
}
///@arg x,length,hspeed,type,out,rotate,auto_destroy,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneTop() {
    var X = argument[0];
    var LENGTH = argument[1];
    var HSPEED = argument[2];
    var COLOR = argument[3];
    var OUT = argument[4];
    var ROT = argument[5];
    var DESTROY = argument[6];
    var DURATION = -1;
    var FOLLOW = false;
    var FOLLOW_BOARD = false;
    var FOLLOW_ANGLE = noone;
    var POINT = 0;
    var POINT_AT = 0;
    var FOLLOW_X = noone;
    var FOLLOW_Y = noone;
    var FOLLOW_TARGET = noone;
    if (argument_count >= 8) DURATION = argument[7];
    if (argument_count >= 9) FOLLOW = argument[8];
    if (argument_count >= 10) FOLLOW_BOARD = argument[9];
    if (argument_count >= 11) FOLLOW_TARGET = argument[10];
    if (argument_count >= 12) FOLLOW_ANGLE = argument[11];
    if (argument_count >= 13) POINT = argument[12];
    if (argument_count >= 14) POINT_AT = argument[13];
    if (argument_count >= 16) {
        FOLLOW_X = argument[14];
        FOLLOW_Y = argument[15];
    }
    var Y = (((battle_board.y - battle_board.up) + (LENGTH / 2)) + 5);
    if (argument[12] == 1) {
        Y = battle_board.y - battle_board.up;
    }
    var bone = MakeBone(X, Y, LENGTH, HSPEED, 0, COLOR, OUT, 270, ROT, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD,FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    return bone;
}
///@arg x,y,vspeed,type,out,rotate,gap,auto_destroy,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneTwoH() {
    var X = argument[0];
    var Y = argument[1];
    var VSPEED = argument[2];
    var TYPE = argument[3];
    var OUT = argument[4];
    var ROTATE = argument[5];
    var GAP = argument[6];
    var DESTROY = argument[7];
    var DURATION = -1;
    var FOLLOW = false;
    var FOLLOW_BOARD = false;
    var FOLLOW_ANGLE = noone;
    var POINT = 0;
    var POINT_AT = 0;
    var FOLLOW_X = noone;
    var FOLLOW_Y = noone;
    var FOLLOW_TARGET = noone;
    var bones = [];

    if (argument_count >= 9) DURATION = argument[8];
    if (argument_count >= 10) FOLLOW = argument[9];
    if (argument_count >= 11) FOLLOW_BOARD = argument[10];
    if (argument_count >= 12) FOLLOW_TARGET = argument[11];
    if (argument_count >= 13) FOLLOW_ANGLE = argument[12];
    if (argument_count >= 14) POINT = argument[13];
    if (argument_count >= 15) POINT_AT = argument[14];
    if (argument_count >= 17) {
        FOLLOW_X = argument[15];
        FOLLOW_Y = argument[16];
    }

    var boneLeft = MakeBoneLeft(Y, (((X - battle_board.x) + battle_board.left) - GAP), VSPEED, TYPE, OUT, ROTATE, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);
    var boneRight = MakeBoneRight(Y, (((battle_board.x + battle_board.right) - GAP) - X), VSPEED, TYPE, OUT, ROTATE, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    bones[0] = boneLeft;
    bones[1] = boneRight;
    return bones;
}
///@arg x,y,hspeed,type,out,rotate,gap,auto_destroy,*duration,*follow,*follow_board,*follow_target,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneTwoV() {
    var X = argument[0];
    var Y = argument[1];
    var HSPEED = argument[2];
    var TYPE = argument[3];
    var OUT = argument[4];
    var ROTATE = argument[5];
    var GAP = argument[6];
    var DESTROY = argument[7];
    var DURATION = -1;
    var FOLLOW = false;
    var FOLLOW_BOARD = false;
    var FOLLOW_ANGLE = noone;
    var POINT = 0;
    var POINT_AT = 0;
    var FOLLOW_X = noone;
    var FOLLOW_Y = noone;
    var FOLLOW_TARGET = noone;
    var bones = [];

    if (argument_count >= 9) DURATION = argument[8];
    if (argument_count >= 10) FOLLOW = argument[9];
    if (argument_count >= 11) FOLLOW_BOARD = argument[10];
    if (argument_count >= 12) FOLLOW_TARGET = argument[11];
    if (argument_count >= 13) FOLLOW_ANGLE = argument[12];
    if (argument_count >= 14) POINT = argument[13];
    if (argument_count >= 15) POINT_AT = argument[14];
    if (argument_count >= 17) {
        FOLLOW_X = argument[15];
        FOLLOW_Y = argument[16];
    }

    var boneLeft = MakeBoneTop(X, (((Y - battle_board.y) + battle_board.up) - GAP), HSPEED, TYPE, OUT, ROTATE, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);
    var boneRight = MakeBoneBottom(X, (((battle_board.y + battle_board.down) - GAP) - Y), HSPEED, TYPE, OUT, ROTATE, DESTROY, DURATION, FOLLOW, FOLLOW_BOARD, FOLLOW_TARGET, FOLLOW_ANGLE, POINT, POINT_AT, FOLLOW_X, FOLLOW_Y);

    bones[0] = boneLeft;
    bones[1] = boneRight;
    return bones;
}
///@arg number,angle,type,x,y,size_x,size_y,length,out,*roting,*rot,*extra_angle,*rotate,*duration,*rott
function MakeBoneCircle() {
    var Number = argument[0]
    var Size = argument[1]
    var Type = argument[2]
    var Out = argument[8]
    var Enable = argument[9]
    var Rot = argument[10]
    var Ex = argument[11]
    var X = argument[3]
    var Y = argument[4]
    var H = argument[5]
    var V = argument[6]
    var L = argument[7]
    var II = argument[12]

    var bone = instance_create_depth(X, Y, 0, bone_circle);
    bone.number = Number;
    bone.type = Type;
    bone.angle = Size;
    bone.out = Out;
    bone.roting = Enable == undefined ? 1 : Enable;
    bone.extra_angle = Ex == undefined ? 0 : Ex;
    bone.rot = Rot == undefined ? 0 : Rot;
    bone.size_x = H;
    bone.size_y = V;
    bone.length = L;
    bone.rotate = II == undefined ? 0 : II;
    bone.duration = argument[13] == undefined ? -1 : duration;
    bone.rott = argument[14] == undefined ? 0 : duration;
    return bone;
}
/// @arg x,y,angle_x,angle_y,angle_z,rotate_x,rotate_y,rotate_z,scale_x,scale_y,scale_z,vspeed,hspeed,shape,type,out,*duration,*gap
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
    return inst;
}
///@arg x,y,length,hspeed,vspeed,type,out,angle,rotate,auto_destroy,*duration,*scale,*extra_angle,*follow,*follow_board,*follow_angle,*point,*point_at,*follow_x,*follow_y
function MakeBoneArrow() {
    var OBJ = 0;
    var DURATION = -1;
    var SCALE = 0.5;
    var EXTRA_ANGLE = 30;
    var X = argument[0];
    var Y = argument[1];
    var LENGTH = argument[2];
    var HSPEED = argument[3];
    var VSPEED = argument[4];
    var COLOR = argument[5];
    var OUT = argument[6];
    var ANGLE = argument[7];
    var ROT = argument[8];
    var DESTROY = argument[9];
    if (argument_count >= 11) var DURATION = argument[10];
    if (argument_count >= 12) var SCALE = argument[11];
    if (argument_count >= 13) var EXTRA_ANGLE = argument[12];
    if (argument_count >= 14) OBJ = argument[13];

    var bone = instance_create_depth(X, Y, 0, bone_arrow);
    bone.length = LENGTH;
    bone.hspeed = HSPEED;
    bone.vspeed = VSPEED;
    bone.type = COLOR;
    bone.out = OUT;
    bone.rotate = ROT;
    bone.auto_destroy = DESTROY;
    bone.angle = ANGLE;
    bone._angle = ANGLE;
    bone.duration = DURATION;
    bone.scale = SCALE;
    bone.extra_angle = EXTRA_ANGLE;
    bone.follow = OBJ;

    if (argument_count >= 15) bone.follow_board = argument[14];
    if (argument_count >= 16) bone.follow_angle = argument[15];
    if (argument_count >= 17) bone.point = argument[16];
    if (argument_count >= 18) bone.point_at = argument[17];
    if (argument_count >= 20) {
        bone.follow_x = argument[18];
        bone.follow_y = argument[19];
    }
    return bone;
}
//mybonescriptspack
function MakeBonesFly(Dir = DIR.UP, Length = 20, Type = 0){
	if Dir == DIR.UP{
		var cnm = 0;
		var rand = battle_board.x - 100;
		
		repeat (20)
    {
        var bone = MakeBone(rand + (cnm * 25), battle_board.y - battle_board.up - 5, 20, 0, 0, Type, 0, 90, 0, 1);
        bone.length = Length;
        bone.vspeed = 4;
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
function MakeBonesWaveUpDown(Strength, Y, Type){
    var cnm = 0;
    
    repeat (15)
    {
        b[1] = MakeBone(320 + (cnm * 12), Y, 0, 0, 0, Type, 0, 90, 0, 0, 90);
        Anim_Create(b[1], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[1], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        b[2] = MakeBone(320 - (cnm * 12), Y, 0, 0, 0, 0, 0, 90, 0, 0, 90);
        Anim_Create(b[2], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[2], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        cnm += 1;
    }
}
function MakeBonesWaveLeftRight(Strength, X, Type){
    var cnm = 0;
    
    repeat (15)
    {
        b[1] = MakeBone(X, 320 + (cnm * 12), 0, 0, 0, Type, 0, 0, 0, 0, 90);
        Anim_Create(b[1], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[1], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        b[2] = MakeBone(X, 320 - (cnm * 12), 0, 0, 0, 0, 0, 0, 0, 0, 90);
        Anim_Create(b[2], "length", 2, 1, 0, Strength, 25, 2 + (cnm * 2));
        Anim_Create(b[2], "length", 2, 0, Strength, -Strength, 25, 27 + (cnm * 2));
        cnm += 1;
    }
}
function MakeBonesColumn(X, Y, Angle, Bones, Length, PlusX, LenPlus, Hspeed, Vspeed, Out, Type) {
    var repeats = 0;
    repeat (Bones) {
        repeats += 1;
        var xplus = PlusX * repeats;
        var lenplus = LenPlus * repeats; 
        
        MakeBone(X + xplus, Y - lenplus / 2, Length + lenplus, Hspeed, Vspeed, Type, Out, Angle, 0, 0, 0);
    }
}
function MakeBonesExplosion(X, Y, Bones, Length, Speed, Out, Type) {
    repeat (Bones) {
        var angle = random(360);
        var hsp = lengthdir_x(Speed, angle);
        var vsp = lengthdir_y(Speed, angle);
        MakeBone(X, Y, Length, hsp, vsp, Type, Out, angle, 0, 0, 0);
    }
}
function MakeBonesWaveNew(Distance, BoneType, Direction, TimeToEnd, WaveTimer){
	var waveobj = instance_create_depth(0, 0, 0, bullet_bone_wavenew)
    waveobj.BoneType = BoneType;
    waveobj.WaveType = Direction;
    waveobj.DistanceB = Distance;
    waveobj.bone_timer = WaveTimer;
    waveobj.bone_timer2 = WaveTimer;
    waveobj.bone_timer3 = WaveTimer;
    waveobj.bone_timer4 = WaveTimer;
    waveobj.TimeToEnd = TimeToEnd;
	return waveobj
}
