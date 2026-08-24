///@Desc Creates a gaster blaster.
function MakeGB(x, y, x_target, y_target, angle_start, angle_target, scale_x, scale_y, type, pause=25, duration=35, time_move=25) {
    var bb = instance_create_depth(x, y, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_bullet_gb);    
    bb.x_target = x_target;
    bb.y_target = y_target;
    bb.angle_start = angle_start;
    bb.angle_target = angle_target;
    bb.scale_x = scale_x;
    bb.scale_y = scale_y;
    bb.type = type;
    bb.time_release_delay = pause;
    bb.time_beam_end_delay = duration;
    bb.time_move = time_move;
    return bb;
}
///@desc Makes GB round.
function MakeGBRound(x, y, radius, type){
	for (var i = 0; i < 360; i += 45)
    {
        var sx = x + lengthdir_x(radius, i);
        var sy = y + lengthdir_y(radius, i);
        var xx = x + lengthdir_x(radius, i);
        var yy = y + lengthdir_y(radius, i);
        MakeGB(sx, sy, xx, yy, i - 105, i - 105, 1, 1, type, 2, 30, 0);
    }
}
///@desc Makes a circle of Blasters around position with your params.
function MakeGBCircle(x, y, startdir, delay, one_duration, minusdelay, plusdir, radius, type, scale, endtime){
	var gb = instance_create_depth(x, y, 0,battle_bullet_gbcircle)
	gb.startdir = startdir
	gb.delay = delay
	gb.one_duration = one_duration
	gb.minusdelay = minusdelay
	gb.plusdir = plusdir
	gb.radius = radius
	gb.type = type
	gb.scale = scale
	gb.endtime = endtime
	return gb
}