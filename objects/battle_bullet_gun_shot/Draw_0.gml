draw_self();
if lineaim{
draw_line(x-room_width,y,x+room_width,y)
draw_line(x,y+room_height,x,y-room_height)
}

if(type==0) {
draw_line(x-show_pause*10,y,x+show_pause*10,y)
draw_line(x,y+show_pause*10,x,y-show_pause*10)
}else if(type==1) {
draw_circle(x,y,show_pause*10,1)
}else if(type==2) {
draw_rectangle(x-show_pause*10,y-show_pause*10,x+show_pause*10,y+show_pause*10,1)
}
