///@arg x
///@arg y
///@arg angle
///@arg color
///@arg *ghost
///@arg *spam
///@desc Creates a slash.
function MakeSlash(){
    var X = argument[0];
    var Y = argument[1];
    var ANGLE = argument[2];
    var COLOR = argument[3];
    var GHOST;
    
    if (argument_count >= 5)
        GHOST = argument[4];
    
    var SPAM;
    
    if (argument_count >= 6)
        SPAM = argument[5];
    
    ka = instance_create_depth(X, Y, 0, battle_slash);
    ka.image_angle = ANGLE;
    ka.color = COLOR;
    
    if (argument_count >= 5)
        ka.ghost = GHOST;
    
    if (argument_count >= 6)
        ka.spam = SPAM;
    
    return ka;
}