///@arg bgm_slot
///@arg audio
///@arg loop*
///@arg loop_start*
///@arg loop_end*
///@arg offset*
function BGM_Play() {
  var SLOT=argument[0];
  var AUDIO=argument[1];
  var LOOP=true;
  var LOOP_START=-1;
  var LOOP_END=-1;
  var OFFSET = 0;
  if(argument_count>=3){
    LOOP=argument[2];
  }
  if(argument_count>=4){
    LOOP_START=argument[3];
  }
  if(argument_count>=5){
    LOOP_END=argument[4];
  }
  if(argument_count>=6){
    OFFSET=argument[5];
  }
  if(BGM_IsSlotValid(SLOT)&&audio_exists(AUDIO)){
    BGM_Stop(SLOT);
    global._bgm_audio[SLOT]=AUDIO;
    global._bgm_id[SLOT]=audio_play_sound_at(AUDIO,0,0,0,1,1,1,1,LOOP,1,OFFSET);
    global._bgm_loop_start[SLOT]=LOOP_START;
    global._bgm_loop_end[SLOT]=LOOP_END;
    return true;
  }else{
    return false;
  }


}