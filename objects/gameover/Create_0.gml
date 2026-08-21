x=Storage_GetTempFlag(FLAG_TEMP_GAMEOVER_SOUL_X, 0)
y=Storage_GetTempFlag(FLAG_TEMP_GAMEOVER_SOUL_Y, 0)
soul_blend=Storage_GetTempFlag(FLAG_TEMP_GAMEOVER_SOUL_COLOR, c_red);
audio_stop_all();
time=0
alarm[0]=40;
depth=1
outline = true
soul = instance_create_depth(0, 0, 0, battle_soul)
soul.image_alpha = 0
outline = soul.outline
outline_size = soul.outline_size
outline_color = soul.outline_color
instance_destroy(soul)
