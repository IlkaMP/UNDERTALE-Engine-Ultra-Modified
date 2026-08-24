///@arg soundid
///@arg gain
///@arg pitch
///@arg delay
///@desc The same as audio_play_sound, but without no need args.
function snd_play(snd,gain=1,pitch=1,delay=0){
	if delay > 0 {
		time_source_start(time_source_create(time_source_game,delay,time_source_units_frames,snd_play,[snd,gain,pitch,0]))
		return true
	}
	else {
		audio_stop_sound(snd)
		var s = audio_play_sound(snd,0,0)
		return s
	}
}