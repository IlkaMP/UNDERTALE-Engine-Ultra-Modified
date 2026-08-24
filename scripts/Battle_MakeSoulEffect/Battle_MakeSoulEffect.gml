///@Desc Makes an soul effect
function Battle_MakeSoulEffect(effect_color=battle_soul.image_blend, effect_angle=battle_soul.image_angle){
	inst = instance_create_depth(battle_soul.x,battle_soul.y,0,battle_soul_effect)
	inst.image_blend = effect_color
	inst.image_angle = effect_angle
	
	return inst
}