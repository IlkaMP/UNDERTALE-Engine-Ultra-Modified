if (!processed) {
    alarm[0] = duration;

    if (!type) {
        image_index = 0;
    } else {
        image_index = 2;
        if (follow) {
            _angle = angle; // Устанавливаем взгляд вверх
        } else {
            angle = angle; // Устанавливаем взгляд вверх
        }
    }

    _dir = _direction;
    if (follow) {
        _angle = angle; // Всегда смотрим вверх
        vsin = vspeed;
        _hspeed = hspeed;
        vspeed = 0;
        hspeed = 0;
        if (follow_board) {
            follow_target = battle_board;
        }
        if (instance_exists(follow_target)) {
            center_x = follow_target.x;
            center_y = follow_target.y;
            follow_x = follow_target.x;
            follow_y = follow_target.y;
            if (variable_instance_exists(follow_target, "angle")) follow_angle = follow_target.angle;
            else follow_angle = follow_target.image_angle;
        } else {
            center_x = follow_x;
            center_y = follow_y;
        }
        processed = 1;
    } else {
        angle = angle; // Всегда смотрим вверх
    }
}
if (follow) {
    _x += _hspeed;
    _y += _vspeed;
    if (follow_board && follow_target != battle_board) {
        follow_target = battle_board;
    }
    if (instance_exists(follow_target)) {
        follow_x = follow_target.x;
        follow_y = follow_target.y;
        if (variable_instance_exists(follow_target, "angle")) follow_angle = follow_target.angle;
        else follow_angle = follow_target.image_angle;
    }

    var pos = RotateAround(center_x, center_y, _x, _y, follow_x, follow_y, follow_angle);
    x = pos[0];
    y = pos[1];
    image_angle = angle; // Обеспечиваем визуальный поворот вверх

} else {
    _x = x;
    _y = y;
    angle = angle; // Фиксируем угол вверх
    image_angle = angle; // Визуально смотрим вверх
    rotate = 0; // Отключаем автоматическое вращение
}