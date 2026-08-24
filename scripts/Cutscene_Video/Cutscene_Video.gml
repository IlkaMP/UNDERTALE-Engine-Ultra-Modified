///@desc Makes a video from game files.
function Cutscene_Video(pathtovideo, _depth = 0, _loop = false, _x = 0, _y = 0, _xscale = 1, _yscale = 1, _rotation = 0, _alpha = 1, _color = c_white){
    var video = instance_create_depth(0, 0, _depth, obj_playvideo)
	video.VideoX = _x
	video.VideoY = _y
	video.VideoXscale = _xscale
	video.VideoYscale = _yscale
	video.videopath = pathtovideo
	video.Rotation = _rotation
	video.Alpha = _alpha
	video.Color = _color
	video.Loop = _loop
	return video
}
