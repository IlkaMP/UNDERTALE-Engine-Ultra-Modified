x = battle_soul.x;
y = battle_soul.y;

if (battle_soul.moveable) {
    if (!type) {
        if (image_angle == -270) image_angle = 90;
        else if (image_angle == 180) image_angle = -180;
    }

    function get_shortest_rotation(current, target) {
        current = ((current % 360) + 360) % 360;
        target = ((target % 360) + 360) % 360;
        
        var diff = (target - current + 540) % 360 - 180;
        return diff;
    }

    if (Input_IsPressed(INPUT.UP)) {
        var target_angle = 90;
        var rotation = get_shortest_rotation(image_angle, target_angle);
        Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, 0, image_angle, rotation, SPD);
    } 
    else if (Input_IsPressed(INPUT.LEFT)) {
        var target_angle = 180;
        var rotation = get_shortest_rotation(image_angle, target_angle);
        Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, 0, image_angle, rotation, SPD);
    } 
    else if (Input_IsPressed(INPUT.DOWN)) {
        var target_angle = -90;
        var rotation = get_shortest_rotation(image_angle, target_angle);
        Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, 0, image_angle, rotation, SPD);
    } 
    else if (Input_IsPressed(INPUT.RIGHT)) {
        var target_angle = 0;
        var rotation = get_shortest_rotation(image_angle, target_angle);
        Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, 0, image_angle, rotation, SPD);
    }

    var bulletInstance = noone;
    for (var i = 0; i < instance_count; i++) {
        bulletInstance = instance_find(battle_bullet_arrow, i);
        if (bulletInstance && bulletInstance.type == 0) {
            bulletInstance.image_index = 1;
            break;
        }
    }
}

var STATE = Battle_GetState();
if (STATE == BATTLE_STATE.TURN_PREPARATION || STATE == BATTLE_STATE.IN_TURN) {
    visible = true;
} else {
    visible = false;
    image_angle = 90;
}