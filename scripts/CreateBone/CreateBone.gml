///@arg x
///@arg y
///@arg length
///@arg hspeed
///@arg vspeed
///@arg angle
///@arg paps*
///@arg rot*
///@arg colour*
///@arg origin*
///@arg sinint*
///@arg sinmult*
///@arg sinoff*
///@arg tri*
///@arg top*
function CreateBone(){
	var _x = argument[0]
	var _y = argument[1]
	var _length = argument[2]
	var _hspeed = argument[3]
	var _vspeed = argument[4]
	var _angle = argument[5]
	var _paps =   (argument_count >= 7 ? argument[6] : false)
	var _rot =    (argument_count >= 8 ? argument[7] : 0)
	var _colour = (argument_count >= 9 ? argument[8] : c_white)
	var _origin = (argument_count >= 10 ? argument[9] : 0)
	var _sinint = (argument_count >= 11 ? argument[10] : 0)
	var _sinmult =(argument_count >= 12 ? argument[11] : 0)
	var _sinoff = (argument_count >= 13 ? argument[12] : 0)
	var _tri =    (argument_count >= 14 ? argument[13] : false)
	var _top =    (argument_count >= 15 ? argument[14] : false)
	
	var inst = instance_create_depth(_x,_y,0,bullet_bone)
	inst.length = _length
	inst.hspeed = _hspeed
	inst.vspeed = _vspeed
	inst.angle = _angle
	inst.paps = _paps
	inst.rot = _rot
	inst.colour = _colour
	inst.origin = _origin
	inst.sinint = _sinint
	inst.sinmult = _sinmult
	inst.sinoff = _sinoff
	inst.tri = _tri
	inst.top = _top
	
	return inst;
}