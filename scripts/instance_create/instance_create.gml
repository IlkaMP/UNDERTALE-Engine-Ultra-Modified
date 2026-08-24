///@desc The same as instance_create_depth, but without no need args.
function instance_create(obj, x=0, y=0){
	instance_create_depth(x, y, 0, obj)
	return obj
}