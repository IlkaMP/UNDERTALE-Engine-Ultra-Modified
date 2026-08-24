delay -= minusdelay
dir+=plusdir
var xx = x + lengthdir_x(radius, (startdir-90)+dir)
var yy = y + lengthdir_y(radius, (startdir-90)+dir)
var angle = point_direction(xx, yy, x, y)
MakeGB(xx, yy, xx, yy, angle, angle, scale, scale, type, 0, one_duration)