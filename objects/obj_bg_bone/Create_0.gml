//settings

down = false
bspeed = 5
wait = 4

bgbones = []
if down{
bgbone = Battle_MakeBone(random(640), 480, 20, 0, -bspeed, 0, true, random(360), 5, 0)
} else {
	bgbone = Battle_MakeBone(random(640), 0, 20, 0, bspeed, 0, true, random(360), 5, 0)
}
bgbone.dmg = 0
bgbone.fade_started = true;
array_push(bgbones, bgbone)
alarm[0] = wait
