
event_inherited();
xsc=1
ysc=1

type=0// 0 : line / 1 : circle / 2 square

angle=0//angle/ but only change imgae angle, it cant change the line angle
pause=20//pause
can_hit=false
show_pause=20

Anim_Create(self,"image_alpha",0,0,0,1,10)
//Anim_Create(self,"image_xsca",0,0,0,xsc,10)
//Anim_Create(self,"image_yscale",0,0,0,ysc,10)
_draw=false
tshot=pause
tadtershot=10
t=0

Anim_Create(self,"show_pause",ANIM_TWEEN.QUAD,ANIM_EASE.IN_OUT,show_pause,-show_pause,alarm[0])

dmg=1