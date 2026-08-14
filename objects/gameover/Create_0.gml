x=global.soulxover
y=global.soulyover
soul_blend=global.soulblendover
audio_stop_all();
time=0
alarm[0]=40;
depth=1
outline = true
soul = instance_create_depth(0, 0, 0, battle_soul)
soul.image_alpha = 0
outline = soul.outline
instance_destroy(soul)
