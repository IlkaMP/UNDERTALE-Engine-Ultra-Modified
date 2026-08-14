var i = 0;
repeat (grid_amount)
{    
    #region Check if line is out of bound yet
    // Vertical lines
    if (sign(grid_spd[0]) == 1 && grid_pos[i][0] > 640 + grid_spd[0])
        grid_pos[i][0] = -grid_spd[0];
    else if (sign(grid_spd[0]) == -1 && grid_pos[i][0] < -grid_spd[0])
        grid_pos[i][0] = 640 + grid_spd[0];
    
    // Horizontal lines
    if (sign(grid_spd[1]) == 1 && grid_pos[i][1] > 480 + grid_spd[1])
        grid_pos[i][1] = -grid_spd[1];
    else if (sign(grid_spd[1]) == -1 && grid_pos[i][1] < -grid_spd[1])
        grid_pos[i][1] = 480 + grid_spd[1];
    #endregion
    
    // Position update
    grid_pos[i][0] += grid_spd[0]; // Vertical lines
    grid_pos[i][1] += grid_spd[1]; // Horizontal lines
    
    i++;
}