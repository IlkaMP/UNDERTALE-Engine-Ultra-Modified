///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg *warn_time
function battle_warn(){
	inst = instance_create_depth(0,0,0,battle_obj_warn)
	inst.x1 = argument[0]
	inst.y1 = argument[1]
	inst.x2 = argument[2]
	inst.y2 = argument[3]
	inst.w_time = (argument_count>4 ? argument[4] : 30)
	
	return inst
}