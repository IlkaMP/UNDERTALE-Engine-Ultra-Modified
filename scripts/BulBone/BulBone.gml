///@arg x
///@arg y
///@arg length
///@arg hspeed
///@arg vspeed
///@arg angle
///@arg auto_destroy
///@arg is_paps
///@arg rotate
///@arg type
///@arg origin
///@arg *follow
///@arg *follow_board
///@arg *follow_target
///@arg *follow_angle
///@arg *follow_x
///@arg *follow_y
function BulBone(x, y, length, hspeed=0, vspeed=0, angle=DIR.UP, auto_destroy=false, is_paps=0, rot=0, type=0, origin=0, OBJ=noone, FOLLOW_BOARD=false, FOLLOW_TARGET=noone, FOLLOW_ANGLE=noone, FOLLOW_X=noone, FOLLOW_Y=noone){
	var bone = instance_create_depth(x, y, 0, obj_bonebul)
	bone.length = length
	bone.hspeed = hspeed
	bone.vspeed = vspeed
	bone.angle = angle
	bone.paps = is_paps
	bone.auto_destroy = auto_destroy
	bone.rotate = rot
	bone.type = type
	bone.origin = origin
	bone.follow = OBJ;
    bone.follow_board = FOLLOW_BOARD;
    if (OBJ) {
		bone.follow_angle = battle_board.angle;
        var pos = RotateAround(battle_board.x, battle_board.y, x, y, battle_board.x, battle_board.y, battle_board.angle);
        bone.x = pos[0];
        bone.y = pos[1];
    }
    bone.follow_target = FOLLOW_TARGET;
    if (OBJ && instance_exists(bone.follow_target)) {
        bone.follow_angle = bone.follow_target.angle;
        var pos = RotateAround(bone.follow_target.x, bone.follow_target.y, x, y, bone.follow_target.x, bone.follow_target.y, bone.follow_target.angle);
        bone.x = pos[0];
        bone.y = pos[1];
    }
    if (FOLLOW_ANGLE!=noone) {
        bone.follow_angle = FOLLOW_ANGLE;
    }
    if (FOLLOW_X!=noone&&FOLLOW_Y!=noone) {
        bone.follow_x = FOLLOW_X;
        bone.follow_y = FOLLOW_Y;
        if (OBJ) {
            var pos = RotateAround(bone.follow_x, bone.follow_y, x, y, bone.follow_x, bone.follow_y, bone.follow_angle);
            bone.x = pos[0];
            bone.y = pos[1];
        }
    }
}
