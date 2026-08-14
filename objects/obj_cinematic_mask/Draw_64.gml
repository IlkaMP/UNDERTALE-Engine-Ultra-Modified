var cinematic_height = h;
var draw_border_line = show;
var border_line_thickness = th;
var border_line_color = col;
var mask_angle = ang;
var base_w = 640;
var base_h = 480;

if (!variable_instance_exists(id, "mask_surf"))
    mask_surf = -1;

if (!surface_exists(mask_surf))
    mask_surf = surface_create(base_w, base_h);

surface_set_target(mask_surf);
var old_surf_view = matrix_get(0);
var old_surf_proj = matrix_get(1);
var surf_cam_view = matrix_build_lookat(base_w / 2, base_h / 2, -16000, base_w / 2, base_h / 2, 0, 0, 1, 0);
var surf_cam_proj = matrix_build_projection_ortho(base_w, base_h, -16000, 16000);
matrix_set(0, surf_cam_view);
matrix_set(1, surf_cam_proj);
draw_clear_alpha(c_black, 0);
var cx = base_w / 2;
var cy = base_h / 2;
var screen_diagonal = sqrt((base_w * base_w) + (base_h * base_h));
var band_length = screen_diagonal * 2;
var band_thickness = screen_diagonal;
var half_gap = (base_h / 2) - cinematic_height;

if (half_gap < 0)
    half_gap = 0;

var dir_angle = mask_angle + 90;
var nx = dcos(dir_angle);
var ny = dsin(dir_angle);
var ax = cx + (nx * (half_gap + (band_thickness / 2)));
var ay = cy + (ny * (half_gap + (band_thickness / 2)));
var bx = cx - (nx * (half_gap + (band_thickness / 2)));
var by = cy - (ny * (half_gap + (band_thickness / 2)));
var cos_a = dcos(mask_angle);
var sin_a = dsin(mask_angle);
var hw = band_length / 2;
var hh = band_thickness / 2;
var dx1 = (-hw * cos_a) - (-hh * sin_a);
var dy1 = (-hw * sin_a) + (-hh * cos_a);
var dx2 = (hw * cos_a) - (-hh * sin_a);
var dy2 = (hw * sin_a) + (-hh * cos_a);
var dx3 = (hw * cos_a) - (hh * sin_a);
var dy3 = (hw * sin_a) + (hh * cos_a);
var dx4 = (-hw * cos_a) - (hh * sin_a);
var dy4 = (-hw * sin_a) + (hh * cos_a);
draw_set_alpha(mask_alpha);
draw_set_color(mask_col);
draw_triangle(ax + dx1, ay + dy1, ax + dx2, ay + dy2, ax + dx4, ay + dy4, false);
draw_triangle(ax + dx2, ay + dy2, ax + dx3, ay + dy3, ax + dx4, ay + dy4, false);
draw_triangle(bx + dx1, by + dy1, bx + dx2, by + dy2, bx + dx4, by + dy4, false);
draw_triangle(bx + dx2, by + dy2, bx + dx3, by + dy3, bx + dx4, by + dy4, false);

if (draw_border_line && border_line_thickness > 0)
{
    var line_fade = 1;
    var gap_dist = half_gap * 2;
    
    if (gap_dist < border_line_thickness)
        line_fade = gap_dist / border_line_thickness;
    
    var final_border_alpha = border_alpha * line_fade;
    
    if (final_border_alpha > 0)
    {
        draw_set_alpha(final_border_alpha);
        var line_ax = cx + (nx * (half_gap + (border_line_thickness / 2)));
        var line_ay = cy + (ny * (half_gap + (border_line_thickness / 2)));
        var line_bx = cx - (nx * (half_gap + (border_line_thickness / 2)));
        var line_by = cy - (ny * (half_gap + (border_line_thickness / 2)));
        var l_hh = border_line_thickness / 2;
        var lx1 = (-hw * cos_a) - (-l_hh * sin_a);
        var ly1 = (-hw * sin_a) + (-l_hh * cos_a);
        var lx2 = (hw * cos_a) - (-l_hh * sin_a);
        var ly2 = (hw * sin_a) + (-l_hh * cos_a);
        var lx3 = (hw * cos_a) - (l_hh * sin_a);
        var ly3 = (hw * sin_a) + (l_hh * cos_a);
        var lx4 = (-hw * cos_a) - (l_hh * sin_a);
        var ly4 = (-hw * sin_a) + (l_hh * cos_a);
        
        if (border_grad_mode)
        {
            draw_triangle_colour(line_ax + lx1, line_ay + ly1, line_ax + lx2, line_ay + ly2, line_ax + lx4, line_ay + ly4, b_col_al, b_col_ar, b_col_al, false);
            draw_triangle_colour(line_ax + lx2, line_ay + ly2, line_ax + lx3, line_ay + ly3, line_ax + lx4, line_ay + ly4, b_col_ar, b_col_ar, b_col_al, false);
        }
        else
        {
            draw_set_color(border_line_color);
            draw_triangle(line_ax + lx1, line_ay + ly1, line_ax + lx2, line_ay + ly2, line_ax + lx4, line_ay + ly4, false);
            draw_triangle(line_ax + lx2, line_ay + ly2, line_ax + lx3, line_ay + ly3, line_ax + lx4, line_ay + ly4, false);
        }
        
        if (border_grad_mode)
        {
            draw_triangle_colour(line_bx + lx1, line_by + ly1, line_bx + lx2, line_by + ly2, line_bx + lx4, line_by + ly4, b_col_bl, b_col_br, b_col_bl, false);
            draw_triangle_colour(line_bx + lx2, line_by + ly2, line_bx + lx3, line_by + ly3, line_bx + lx4, line_by + ly4, b_col_br, b_col_br, b_col_bl, false);
        }
        else
        {
            draw_set_color(border_line_color);
            draw_triangle(line_bx + lx1, line_by + ly1, line_bx + lx2, line_by + ly2, line_bx + lx4, line_by + ly4, false);
            draw_triangle(line_bx + lx2, line_by + ly2, line_bx + lx3, line_by + ly3, line_bx + lx4, line_by + ly4, false);
        }
        
        draw_set_alpha(mask_alpha);
    }
}

draw_set_alpha(1);
matrix_set(0, old_surf_view);
matrix_set(1, old_surf_proj);
surface_reset_target();
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
var old_gui_view = matrix_get(0);
var old_gui_proj = matrix_get(1);
var gui_cam_view = matrix_build_lookat(gui_w / 2, gui_h / 2, -16000, gui_w / 2, gui_h / 2, 0, 0, 1, 0);
var gui_cam_proj = matrix_build_projection_ortho(gui_w, gui_h, -16000, 16000);
matrix_set(0, gui_cam_view);
matrix_set(1, gui_cam_proj);
var scale = min(gui_w / base_w, gui_h / base_h);
var game_w = base_w * scale;
var game_h = base_h * scale;
var game_x = (gui_w - game_w) / 2;
var game_y = (gui_h - game_h) / 2;
draw_set_alpha(1);
draw_surface_stretched(mask_surf, game_x, game_y, game_w, game_h);
matrix_set(0, old_gui_view);
matrix_set(1, old_gui_proj);
