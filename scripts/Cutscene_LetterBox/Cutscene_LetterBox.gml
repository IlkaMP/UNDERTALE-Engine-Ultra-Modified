function Cutscene_LetterBox(cinematic_height=60, border_line_thickness=4, mask_angle=0, mask_col=0, border_grad_mode = false, show=true, border_alpha=1){
cam_mask = instance_create_depth(0, 0, 0, obj_cinematic_mask);
cam_mask.h = cinematic_height
cam_mask.th = border_line_thickness
cam_mask.ang = mask_angle
cam_mask.border_alpha = border_alpha
cam_mask.mask_col = mask_col
cam_mask.show = show
cam_mask.border_grad_mode = border_grad_mode
return cam_mask;
}