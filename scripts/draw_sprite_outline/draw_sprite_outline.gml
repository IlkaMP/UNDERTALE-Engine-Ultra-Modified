function draw_sprite_outline(arg0, arg1, arg2, arg3, arg4 = 1, arg5 = 1, arg6 = 1, arg7 = 0, arg8 = 0, arg9 = 16777215, arg10 = 1)
{
    var i = -arg6;
    
    while (i <= arg6)
    {
        var j = -arg6;
        
        while (j <= arg6)
        {
            if (i != 0 || j != 0)
                draw_sprite_ext(arg0, arg1, arg2 + i, arg3 + j, arg4, arg5, arg7, arg8, arg10);
            
            j++;
        }
        
        i++;
    }
    
    draw_sprite_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg7, arg9, arg10);
}
