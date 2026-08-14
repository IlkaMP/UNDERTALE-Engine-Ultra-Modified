///@desc Scene Start
HideUi(true, true, true, true, false)

camera.camera_centered = true
camera.x = 0
camera.y = 0
camera.scale_x = 2
camera.scale_y = 2
Anim_Create(camera, "y", ANIM_TWEEN.LINEAR, ANIM_EASE.IN_OUT, 0, -120, 200)
