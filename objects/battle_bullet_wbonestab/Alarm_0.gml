for (var i = 0; i < width / 20; i++) {
	var _sep = 5 + i * 10;
	var _depth = (height + 10) * (dir - 90) / 90;
	bones[i * 2] = CreateBone(x + (dir % 180 ? _sep : -_depth), y + (dir % 180 ? _depth : _sep), height + 100, 0, 0, 90 - random_range(dir + 180 - _angled, dir + 180 + _angled), false, 0, image_blend, 90);
	bones[i * 2 + 1] = CreateBone(x - (dir % 180 ? _sep : _depth), (dir % 180 ? _depth : -_sep), height + 100, 0, 0, 90 - random_range(dir + 180 - _angled, dir + 180 + _angled), false, 0, image_blend, 90);
}

if wait < 0
{
	u_pos = height;
}
