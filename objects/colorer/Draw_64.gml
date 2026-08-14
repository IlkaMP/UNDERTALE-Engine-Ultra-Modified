if (color_inversion == true)
{
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_zero);
    draw_rectangle_color(0, 0, 640, 480, c_white, c_white, c_white, c_white, false);
    gpu_set_blendmode(bm_normal);
}
