///@arg soul_obj/inst
///@desc Checking, if soul exists will return object.
function Battle_IsSoulValid(SOUL) {
	if(!object_exists(SOUL)&&instance_exists(SOUL)){
		SOUL=SOUL.object_index;
	}
	return (GetObjectBase(SOUL)==battle_soul);
}
