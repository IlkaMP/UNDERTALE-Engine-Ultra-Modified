event_inherited();

switch (dir)
{
    case 0:
        image_angle = 90;
        break;
    
    case 90:
        image_angle = 180;
        break;
    
    case 180:
        image_angle = -90;
        break;
    
    case 270:
        image_angle = 0;
        break;
}

if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10){
		if(Input_IsHeld(INPUT.UP)){
			var move_amt = 0.1;
            
            if (dir == 90)
                move_amt = 0.13;
            
            if (dir == 270)
                move_amt = 0.06;
			
			if(!position_meeting(x,y-sprite_height/2,block)){
				y-=move_amt;
			}
		}
		if(Input_IsHeld(INPUT.DOWN)){
			var move_amt = 0.1;
            
            if (dir == 270)
                move_amt = 0.13;
            
            if (dir == 90)
                move_amt = 0.06;
            
			if(!position_meeting(x,y+sprite_height/2,block)){
				y+=move_amt;
			}
		}
		if(Input_IsHeld(INPUT.LEFT)){
			var move_amt = 0.1;
            
            if (dir == 180)
                move_amt = 0.13;
            
            if (dir == 0)
                move_amt = 0.06;
            
			if(!position_meeting(x-sprite_width/2,y,block)){
				x-=move_amt;
			}
		}
		if(Input_IsHeld(INPUT.RIGHT)){
			var move_amt = 0.1;
            
            if (dir == 0)
                move_amt = 0.13;
            
            if (dir == 180)
                move_amt = 0.06;
            
			if(!position_meeting(x+sprite_width/2,y,block)){
				x+=move_amt;
			}
		}
	}
}