function draw_sprite_outline(sprite, subimg, x, y, xscale = 1, yscale = 1, size_outline = 1, rot = 0, col_outline = 0, col = 16777215, alpha = 1)
{
    var i = -size_outline;
    
    while (i <= size_outline)
    {
        var j = -size_outline;
        
        while (j <= size_outline)
        {
            if (i != 0 || j != 0)
                draw_sprite_ext(sprite, subimg, x + i, y + j, xscale, yscale, rot, col_outline, alpha);
            
            j++;
        }
        
        i++;
    }
    
    draw_sprite_ext(sprite, subimg, x, y, xscale, yscale, rot, col, alpha);
}
