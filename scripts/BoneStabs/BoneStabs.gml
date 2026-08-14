///@arg dir
///@arg *height
///@arg *width
///@arg *offset
///@arg *wait
///@arg *stay
///@arg *angle
function BoneStab(){
	var inst=instance_create_depth(0,0,0,battle_bullet_wbonestab)
	if variable_global_exists("clearbonewalls"){
		array_push(global.clearbonewalls, inst)
	}
	inst.dir = argument[0];
	inst.height = (argument_count > 1 ? argument[1] : 40);
	inst.width = (argument_count > 2 ? argument[2] : 130);
	inst.offset = (argument_count > 3 ? argument[3] : 0);
	inst.wait = (argument_count > 4 ? argument[4] : 40);
	inst.stay = (argument_count > 5 ? argument[5] : 20);
	inst._angled = (argument_count > 6 ? argument[6] : 0);
	
	return inst;
}
