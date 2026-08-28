if wtimer >= w_time{
	instance_destroy()
}
if warntype = 0{
if wtimer & 2
	colour = c_red
else
	colour = c_yellow

	if(out = 0){
		depth = DEPTH_BATTLE.BULLET;
		if instance_exists(battle_board){
		surface_set_target(Battle_GetBoardSurface());{
			var hw = w / 2;
			var hh = h / 2;

			var wx = lengthdir_x(hw, image_angle);
			var wy = lengthdir_y(hw, image_angle);

			var hx = lengthdir_x(hh, image_angle + 90);
			var hy = lengthdir_y(hh, image_angle + 90);

			var x1 = x - wx - hx;
			var y1 = y - wy - hy;

			var x2 = x + wx - hx;
			var y2 = y + wy - hy;

			var x3 = x + wx + hx;
			var y3 = y + wy + hy;

			var x4 = x - wx + hx;
			var y4 = y - wy + hy;

			draw_line_colour(x1, y1, x2, y2, colour, colour);
			draw_line_colour(x2, y2, x3, y3, colour, colour);
			draw_line_colour(x3, y3, x4, y4, colour, colour);
			draw_line_colour(x4, y4, x1, y1, colour, colour);
		}surface_reset_target();
		}
	}
	else{
		depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
		var hw = w / 2;
		var hh = h / 2;

		var wx = lengthdir_x(hw, image_angle);
		var wy = lengthdir_y(hw, image_angle);

		var hx = lengthdir_x(hh, image_angle + 90);
		var hy = lengthdir_y(hh, image_angle + 90);

		var x1 = x - wx - hx;
		var y1 = y - wy - hy;

		var x2 = x + wx - hx;
		var y2 = y + wy - hy;

		var x3 = x + wx + hx;
		var y3 = y + wy + hy;

		var x4 = x - wx + hx;
		var y4 = y - wy + hy;

		draw_line_colour(x1, y1, x2, y2, colour, colour);
		draw_line_colour(x2, y2, x3, y3, colour, colour);
		draw_line_colour(x3, y3, x4, y4, colour, colour);
		draw_line_colour(x4, y4, x1, y1, colour, colour);
	}
}
if warntype = 1{
	if wtimer & 2
		colour = c_red
	else
		colour = c_yellow
	var linex = lengthdir_x(999, image_angle)
	var liney = lengthdir_y(999, image_angle)
	if(out = 0){
		depth = DEPTH_BATTLE.BULLET;
		if instance_exists(battle_board){
		surface_set_target(Battle_GetBoardSurface());{
			draw_line_colour(x-linex, y-liney, x+linex, y+liney, colour, colour)
		}surface_reset_target();
		}
	}
	else{
		depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
		draw_line_colour(x-linex, y-liney, x+linex, y+liney, colour, colour)
	}
	
}
if warntype = 2{
	if wtimer & 2
		colour = c_red
	else
		colour = c_yellow
	if(out = 0){
		depth = DEPTH_BATTLE.BULLET;
		if instance_exists(battle_board){
		surface_set_target(Battle_GetBoardSurface());{
			draw_circle_colour(x, y, rad, colour, colour, true)
		}surface_reset_target();
		}
	}
	else{
		depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
		draw_circle_colour(x, y, rad, colour, colour, true)
	}
}
wtimer++
