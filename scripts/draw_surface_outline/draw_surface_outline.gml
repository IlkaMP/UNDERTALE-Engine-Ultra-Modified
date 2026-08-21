function draw_surface_outline(id, x, y, col_outline = 0, size_outline = 1, alpha = 1)
{
    var i = -size_outline;
    
    while (i <= size_outline)
    {
        var j = -size_outline;
        
        while (j <= size_outline)
        {
            if (i != 0 || j != 0)
                draw_surface_ext(id, x + i, y + j, 1, 1, 0, col_outline, alpha);
            
            j++;
        }
        
        i++;
    }
    
    draw_surface_ext(id, x, y, 1, 1, 0, c_white, alpha);
}
