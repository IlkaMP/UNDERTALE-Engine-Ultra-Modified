///@desc use this at the ends of turns or after ending of the bone walls work to optimize your project:3
function ClearBoneWalls(){
	if variable_global_exists("clearbonewalls"){
		for (var i = 0; i < array_length(global.clearbonewalls); i++){
			if instance_exists(global.clearbonewalls[i]){
				instance_destroy(global.clearbonewalls[i])
			}
		}
	}
}
