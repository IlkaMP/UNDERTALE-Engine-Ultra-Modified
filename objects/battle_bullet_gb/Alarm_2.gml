image_yscale=1;
Anim_Create(id,"image_index",0,0,0,3,6);
Anim_Create(id,"_beam_scale",0,0,0,_beam_scale_default,8);

audio_stop_sound(snd_gb_release);
audio_play_sound(snd_gb_release,0,0);

audio_stop_sound(snd_gb_release);
var sid=audio_play_sound(snd_gb_release,0,0);

if (scale_y >= 2)
    Camera_Shake(6 + (scale_y * 0.425), 6 + (scale_x * 0.425), 1, 1, 1, 1);
else if (scale_y <= 2)
    Camera_Shake(3 + (scale_y * 0.425), 3 + (scale_x * 0.425), 1, 1, 1, 1);
 else if (scale_y >= 3)
    Camera_Shake(6 + (scale_y * 0.425), 6 + (scale_x * 0.425), 1, 1, 1, 1);

if (scale_y <= 1.999){
    audio_sound_pitch(sid, 1.2);
}

Camera_Shake(5,5,1,1,1,1);
if global.gamepad_vibration{
gamepad_set_vibration(0,0.5,0.5);
}

alarm[11]=10;
alarm[3]=6;
alarm[4]=8;
alarm[5]=time_release_stay+1;