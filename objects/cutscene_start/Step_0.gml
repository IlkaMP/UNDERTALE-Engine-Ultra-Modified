if t % 5 = 0 and t > 200 and t < 1250{
camera.shake_x = 5
camera.shake_y = 5
}
if t == 280{
	typer = TextTyper_Add(200, 20, -999, "{speed 7}{font 3}{voice 4}{color `red`}{skippable 0}I can fuckin' swear...")
}

if t == 470{
	typer1 = TextTyper_Add(250, 50, -999, "{speed 7}{font 3}{voice 4}{color `red`}{skippable 0}You have a plan to &kill all of us..")
}
if t == 750{
	typer2 = TextTyper_Add(200, 100, -999, "{speed 7}{font 3}{voice 4}{color `red`}{skippable 0}I'm haven't a plan..")
}
if t == 970{
	typer3 = TextTyper_Add(210, 130, -999, "{speed 7}{font 3}{voice 4}{color `red`}{skippable 0}BUT IT WILL NOT&DELAY YOUR DIE!!!")
}
if t == 1250{
	if typer != undefined
		instance_destroy(typer)
	if typer1 != undefined
		instance_destroy(typer1)
	if typer2 != undefined
		instance_destroy(typer2)
	if typer3 != undefined
		instance_destroy(typer3)
	Anim_Create(camera, "y", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, -120, 120, 150)
	Anim_Create(camera, "scale_x", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, 2, -1, 150)
	Anim_Create(camera, "scale_y", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, 2, -1, 150)
}
if t == 1400{
	ShowUi(true, true, true, true, true, ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 60, 60, 150, 220, 60)
}
if t = 1700{
	Battle_MakeSoulEffect()
}
if t = 1780{
	cin = Cutscene_LetterBox(0)
	Anim_Create(cin, "h", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, 0, 240, 60)
}
if t = 1860{
	Anim_Create(cin, "h", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, 240, -250, 60)
}
if t = 1920{
	instance_destroy(cin)
	Cutscene_EndScene()
}
if skippable{
	if Input_IsPressed(INPUT.MENU){
		if typer != undefined
			instance_destroy(typer)
		if typer1 != undefined
			instance_destroy(typer1)
		if typer2 != undefined
			instance_destroy(typer2)
		if typer3 != undefined
			instance_destroy(typer3)
		if cin != undefined{
			Anim_Destroy(cin, "h")
			instance_destroy(cin)
		}
		Anim_Destroy(camera, "y")
		Anim_Destroy(camera, "scale_x")
		Anim_Destroy(camera, "scale_y")
		camera.scale_y = 1
		camera.scale_x = 1
		camera.y = 0
		ShowUi(true, true, true, true)
		camera.camera_centered = false
		Cutscene_EndScene()
	}
}
