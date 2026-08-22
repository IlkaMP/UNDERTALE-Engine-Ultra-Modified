var _col_debug = merge_color(c_lime, c_green, 0.5)
var _game_speed = game_get_speed(gamespeed_fps)
var current = audio_sound_get_track_position(music_id);
var total = audio_sound_length(music_id);
    
var cur_min = floor(current / 60);
var cur_sec = floor(current % 60);
var tot_min = floor(total / 60);
var tot_sec = floor(total % 60);

var cur_str = string(cur_min) + ":" + (cur_sec < 10 ? "0" : "") + string(cur_sec);
var tot_str = string(tot_min) + ":" + (tot_sec < 10 ? "0" : "") + string(tot_sec);

draw_set_colour(c_white)
draw_set_alpha(0.25);
draw_rectangle(0, 0, 250, 145, false)
draw_set_colour(_col_debug)
draw_set_alpha(1)
draw_set_font(font_determination_mono)
draw_text(5, 0, "--DEBUG--\nTURN TIME: "+ (instance_exists(battle_turn) ? string(battle_turn.t) : "Not found any turn.") + "\n" + "BGM TIME: " + cur_str + "/" + tot_str + "\n" + "FPS: " + string(fps) + "/" + string(_game_speed) + "\n" + "Speed: " + string(_game_speed) + "(" + string(_game_speed / 60)+"x)"+"\n" + "Room: "+room_get_name(room)+"\n" + "Instances: "+ string(instance_count) + "\n" + "Soul Coords: " + string(battle_soul.x) + "x " + string(battle_soul.y) + "y" + "\n" + "------------------------------")
draw_set_color(c_white)

