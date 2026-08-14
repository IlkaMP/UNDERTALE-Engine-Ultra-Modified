var _videoData = video_draw()
var _videoStatus = _videoData[0]
if _videoStatus == 0
{
	draw_surface_ext(_videoData[1], VideoX, VideoY, VideoXscale, VideoYscale, Rotation, Color, Alpha)
}
if StopVideos == true{
    CloseVideo()
    instance_destroy(self)
}
