///@arg x
///@arg y
///@arg angle
///@arg type
///@arg *ghost
///@arg *spam
///@desc Creates a slash.
function MakeSlashDt(X, Y, ANGLE, TYPE, GHOST=false, SPAM=false){
    ka = instance_create_depth(X, Y, 0, battle_bullet_slashdt);
    ka.image_angle = ANGLE;
    ka.type = TYPE;
    
    if (argument_count >= 5)
        ka.ghost = GHOST;
    
    if (argument_count >= 6)
        ka.spam = SPAM;
    
    return ka;
}