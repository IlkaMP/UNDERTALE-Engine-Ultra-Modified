function MakeBoneSharp(x=0, y=0, hspeed=0, vspeed=0, type=0, is_paps=0, angle=DIR.RIGHT, speed=0, out=0, image_xscale=1){
	bonesharp = instance_create_depth(x, y, 0, battle_bullet_bone_sharp)
	bonesharp.hspeed = hspeed
	bonesharp.vspeed = vspeed
	bonesharp.type = type
	bonesharp.paps = is_paps
	bonesharp.angle = angle
	if speed != 0{
		bonesharp.direction = angle
		bonesharp.speed = speed
	}
	bonesharp.out = out
	bonesharp.image_xscale = image_xscale
	return bonesharp
}