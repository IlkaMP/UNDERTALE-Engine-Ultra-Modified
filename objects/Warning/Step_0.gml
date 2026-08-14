PAUSEM+=-1

if PAUSEM = 2
{
	var flash = instance_create_depth(Warning.x,Warning.y,1,Flash)
	flash.warnobj = self
}

if PAUSEM = 1
{
	instance_destroy()
}
