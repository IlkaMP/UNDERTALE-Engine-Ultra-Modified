if wtimer == w_time
	instance_destroy()

if wtimer & 1
	audio_play_sound(snd_warn,50,false)

if wtimer & 2
	colour = c_red
else
	colour = c_yellow

draw_rectangle_color(x1,y1,x2,y2,colour,colour,colour,colour,true)

wtimer++
