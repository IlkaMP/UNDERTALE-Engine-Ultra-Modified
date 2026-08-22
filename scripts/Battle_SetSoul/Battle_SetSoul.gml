///@arg soul_obj
///@arg *sound
///@arg *effect
function Battle_SetSoul(SOUL,SND=false,EFFECT=false) {
    if (Battle_IsSoulValid(SOUL) && object_exists(SOUL)) {
        var X = 0;
        var Y = 0;
        var temp = 0;
        if (instance_exists(battle_soul)) {
            X = battle_soul.x;
            Y = battle_soul.y;
            temp = battle_soul.image_angle;
            instance_destroy(battle_soul);
        }
        var Soul = instance_create_depth(X, Y, DEPTH_BATTLE.SOUL, SOUL);
		if SND{
			snd_play(snd_ding)
		}
		if EFFECT {
			var Ef = instance_create_depth(X,Y,DEPTH_BATTLE.SOUL-1,battle_soul_effect);
			Ef.sprite_index = Soul.sprite_index
			Ef.image_blend = Soul.image_blend
		}
        if (!global.classic_ui) {
            Soul.image_angle = temp;
            if (SOUL != battle_soul_blue)
                Anim_Create(Soul, "image_angle", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, Soul.image_angle, 0 - Soul.image_angle, 10);
        }
        return true;
    } else {
        return false;
    }


}