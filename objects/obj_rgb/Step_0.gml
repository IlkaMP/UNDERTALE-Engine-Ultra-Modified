if mode == 1{
	if (fd > 1.4) fd -= 0.5;
	glitch_timer += 1; 
}
if mode == 2{
	if (fd > 0) fd -= 0.5;
	glitch_timer += 1; 
}
if mode == 3{
	if (fd > 0) fd -= 1;
	glitch_timer += 1; 
}