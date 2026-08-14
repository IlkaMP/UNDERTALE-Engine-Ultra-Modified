function draw_surface_outline(arg0, arg1, arg2, arg3 = 0, arg4 = 1, arg5 = 1)
{
    var i = -arg4;
    
    while (i <= arg4)
    {
        var j = -arg4;
        
        while (j <= arg4)
        {
            if (i != 0 || j != 0)
                draw_surface_ext(arg0, arg1 + i, arg2 + j, 1, 1, 0, arg3, arg5);
            
            j++;
        }
        
        i++;
    }
    
    draw_surface_ext(arg0, arg1, arg2, 1, 1, 0, c_white, arg5);
}
