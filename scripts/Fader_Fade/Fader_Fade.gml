///@arg start
///@arg target
///@arg time
///@arg delay*
///@arg color*
///@desc Makes black screen with fading.
function Fader_Fade(START=0, TARGET=1, TIME=20, DELAY=0, _COLOR=c_black) {
	fader.color = _COLOR
	if(START==-1){
		START=fader.alpha;
	}
	Anim_Destroy(fader,"alpha");
	Anim_Create(fader,"alpha",0,0,START,TARGET-START,TIME,DELAY);
	return true;
}
