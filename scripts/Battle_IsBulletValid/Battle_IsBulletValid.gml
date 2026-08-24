///@arg bullet_obj/inst
///@desc Checking, if bullet exists will return object.
function Battle_IsBulletValid(BULLET) {
	if(!object_exists(BULLET)&&instance_exists(BULLET)){
		BULLET=BULLET.object_index;
	}
	return (GetObjectBase(BULLET)==battle_bullet);
}
