var timeout = 90 // How much time to pass to cancel the attack if player doesn't attack.
var keep_indicator = 1 // Keep the indicator after the first punch?

if(_input_acceptable){
	if _timer >= 0 {
		_timer--;	
	}
	if((_dir==DIR.LEFT&&_aim_x<=battle_board.x-battle_board.left-sprite_get_width(spr_battle_menu_fight_aim)/2) || (_dir==DIR.RIGHT&&_aim_x>=battle_board.x+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)/2)||(_timer==0&&_pressed<1)){
			Battle_SetMenuFightDamage(-1);
			Battle_EndMenuFightAim();
			_input_acceptable=false;
			_timer=-1;
			if instance_exists(_indicator){
				instance_destroy(_indicator);	
			}
	}
	
	if(_timer==0 && _pressed>0){
		_override=1;
	}
	
	if(Input_IsPressed(INPUT.CONFIRM)&&_input_acceptable&&_pressed<amount){
		_timer=timeout;
		if _pressed == -1 {
			Anim_Destroy(id,"_aim_x");
			alarm[0]=1;
			var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
			var X=Battle_GetEnemyCenterPosX(ENEMY);
			var Y=Battle_GetEnemyCenterPosY(ENEMY);
			_indicator=instance_create_depth(X,Y-75,0,battle_menu_fight_anim_glove_z);
		}
		if _pressed != -1 && _pressed != amount-1 {
			var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
			var X=Battle_GetEnemyCenterPosX(ENEMY);
			var Y=Battle_GetEnemyCenterPosY(ENEMY);
			instance_create_depth(X+random_range(-50,50),Y+random_range(-50,50),0,battle_menu_fight_anim_glove_mini);
			if instance_exists(_indicator) && !keep_indicator {
				instance_destroy(_indicator);	
			}
		}
		_pressed++;
	}
	
	if(Input_IsPressed(INPUT.CONFIRM)&&_input_acceptable&&_pressed==amount) || (_override){
		_timer=-1;
		_override=0;
		if instance_exists(_indicator){
			instance_destroy(_indicator);	
		}
		
		var ATK=Player_GetAtkTotal();
		var DEF=Battle_GetEnemyDEF(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy()));
		var DISTANCE=point_distance(x,y,_aim_x,y);
		var WIDTH=sprite_get_width(spr_battle_menu_fight_bg)/2;
		var damage=ATK-DEF+random(2);
		if(DISTANCE<=12){
			damage*=(2.2)*((1/amount)*_pressed);
		}else{
			damage*=((1-DISTANCE/WIDTH)*2)*((1/amount)*_pressed);
		}
		damage=round(damage);
		if(damage<=0){
			damage=1;
		}
		
		Battle_SetMenuFightDamage(damage);
		if variable_instance_exists(battle_enemy,"knife_anim_time")
			Battle_SetMenuFightAnimTime(battle_enemy.toughglove_anim_time);
		if variable_instance_exists(battle_enemy,"knife_damage_time")
			Battle_SetMenuFightDamageTime(battle_enemy.toughglove_damage_time);
		Battle_EndMenuFightAim();
		_input_acceptable=false;
	}
}