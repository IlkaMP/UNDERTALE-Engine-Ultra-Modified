t = 0
skippable = true
turn_after = turn_start
battle_soul.moveable = 0
Battle_SetBoardSize(65, 65, 65, 65)
function HideUi(buttons=true, board=true, soul=true, stat=true, anim=false, tween_type=ANIM_TWEEN.SINE, ease_type=ANIM_EASE.IN_OUT, duration=1000, delay_buttons=0, delay_board=0, delay_soul=0, delay_stat = 0){
	if buttons
		if anim{
			Anim_Create(battle_button, "image_alpha", tween_type, ease_type, 1, -1, duration, delay_buttons)
		} else
			battle_button.image_alpha = 0
	if soul
		if anim{
			Anim_Create(battle_soul, "image_alpha", tween_type, ease_type, 1, -1, duration, delay_soul)
		} else
			battle_soul.image_alpha = 0;
	if board{
		if anim{
			Anim_Create(battle_board, "alpha_bg", tween_type, ease_type, 1, -1, duration, delay_board)
			Anim_Create(battle_board, "alpha_frame", tween_type, ease_type, 1, -1, duration, delay_board)
		} else{
			battle_board.alpha_bg = 0
			battle_board.alpha_frame = 0
		}
	}
	if stat
		if anim{
			Anim_Create(battle_ui, "alpha", tween_type, ease_type, 1, -1, duration, delay_stat)
		} else
			battle_ui.alpha = 0;
}

function ShowUi(buttons=true, board=true, soul=true, stat=true, anim=false, tween_type=ANIM_TWEEN.SINE, ease_type=ANIM_EASE.IN_OUT, duration=1000, delay_buttons=0, delay_board=0, delay_soul=0, delay_stat = 0){
	if buttons
		if anim{
			Anim_Create(battle_button, "image_alpha", tween_type, ease_type, 0, 1, duration, delay_buttons)
		} else
			battle_button.image_alpha = 1
	if soul
		if anim{
			Anim_Create(battle_soul, "image_alpha", tween_type, ease_type, 0, 1, duration, delay_soul)
		} else
			battle_soul.image_alpha = 1;
	if board{
		if anim{
			Anim_Create(battle_board, "alpha_bg", tween_type, ease_type, 0, 1, duration, delay_board)
			Anim_Create(battle_board, "alpha_frame", tween_type, ease_type, 0, 1, duration, delay_board)
		} else{
			battle_board.alpha_bg = 1
			battle_board.alpha_frame = 1
		}
	}
	if stat
		if anim{
			Anim_Create(battle_ui, "alpha", tween_type, ease_type, 0, 1, duration, delay_stat)
		} else
			battle_ui.alpha = 1;
}
function Cutscene_EndScene(){
	battle_soul.moveable = 1
	instance_destroy(self)
	instance_create_depth(0,0,0,turn_after)
}
typer=undefined
typer1=undefined
typer2=undefined
typer3=undefined
cin=undefined
event_user(0)
