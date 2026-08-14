depth = 1
grid_amount = 10;
grid_spd = [1, -1];

grid_width = 640 / grid_amount;
grid_height = 480 / grid_amount;
var    grid_x = 0, grid_y = 0,
    i = 0;
repeat (grid_amount)
{
    grid_pos[i][0] = grid_x; // Vertical lines
    grid_pos[i][1] = grid_y; // Horizontal lines
    
    grid_x += grid_width;
    grid_y += grid_height;
    
    i++;
}