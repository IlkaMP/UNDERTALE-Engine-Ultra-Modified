if down{
bgbone = Battle_MakeBone(random(640), 480, 20, 0, -bspeed, 0, true, random(360), 5, 0)
} else {
	bgbone = Battle_MakeBone(random(640), 0, 20, 0, bspeed, 0, true, random(360), 5, 0)
}
bgbone.dmg = 0
array_push(bgbones, bgbone)
bgbones[array_length(bgbones)-1].fade_started = true;
alarm[0] = wait
