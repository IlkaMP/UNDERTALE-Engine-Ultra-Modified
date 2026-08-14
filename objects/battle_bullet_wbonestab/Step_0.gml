///@desc Process

// warning
if _timer == 0 && _timer <= wait
{
	audio_play_sound(snd_bonewarn,50,false);
} else

// rise
if _timer == wait
{
	if wait >= 0 audio_play_sound(snd_stab,50,false);
	Anim_Create(id,"u_pos",ANIM_TWEEN.LINEAR,0,-10,height+10,10);
} else

// fall
if stay >= 0 && _timer == (wait + 10 + stay)
{
	Anim_Create(id,"u_pos",ANIM_TWEEN.LINEAR,0,height,-(height+10),10);
} else

// destroy
if stay >= 0 && _timer >= (wait+10+stay+10)
{
	instance_destroy();
}


// positioning
for (var i = 0; i < array_length(bones); i++) {
	if instance_exists(bones[i]) {
		bones[i].length = height + 100 + u_pos;
		var _sep = (!(i & 1) * 2 - 1) * offset + 5 + (i div 2) * 10;
		bones[i].x = battle_board.x + lengthdir_x(_sep, (dir + 90 + 180 * (i & 1)) % 360) + lengthdir_x(-height - 10 - variable_instance_get(battle_board, _dirs[@ dir]), (dir + 180) % 360);
		bones[i].y = battle_board.y + lengthdir_y(_sep, (dir + 90 + 180 * (i & 1)) % 360) + lengthdir_y(-height - 10 - variable_instance_get(battle_board, _dirs[@ dir]), (dir + 180) % 360);
	}
}


_timer++;
