for (var i = array_length(bgbones)-1; i >= 0; i--) {
	if instance_exists(bgbones[i]){
		if (bgbones[i].fade_started) {
			bgbones[i].image_alpha -= 0.05;
			if bgbones[i].image_alpha <= 0{
				instance_destroy(bgbones[i])
				array_delete(bgbones, i, 1);
			}
		}
	}
}
