t++
if t = 0{
if t % (delay) == 0{
	event_user(0)
}
} else{
	if t % (delay) == 0 and t < endtime{
	event_user(0)
}
}
if t = endtime{
	instance_destroy()
}
