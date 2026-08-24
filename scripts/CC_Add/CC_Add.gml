///@arg text
///@arg time*
///@Desc Makes text on a screen with background.
function CC_Add(TEXT, TIME=60) {
	with(closed_captions){
		ds_queue_enqueue(_queue_text,TEXT);
		ds_queue_enqueue(_queue_duration,TIME);
	}
	return true;
}
