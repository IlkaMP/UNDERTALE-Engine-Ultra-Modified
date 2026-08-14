var i = 0;
repeat (grid_amount)
{
    draw_sprite_ext(spr_pixel, 0, grid_pos[i][0], -10, 1, 500, 0, c_green, 1); // Vertical line
    draw_sprite_ext(spr_pixel, 0, -10, grid_pos[i][1], 660, 1, 0, c_green, 1); // Horizontal line
    i++;
}