//Enemy Movements
move = 0;

if (distance_to_object(obj_player) < 150) move = 1;

if (eSpeed == 0) eSpeed = move * accl;
else eSpeed = move * accl + eSpeed;

if (move == 0) {
    if (path_exists(path)) path_delete(path);
    eSpeed = scr_approach(eSpeed, 0, frc);
}

if (move == 1 && alarm[0] = -1) {
    //Grid Navigation 
    if (!pathExist) path = path_add();
    alarm_set(0, 15);
}

if (distance_to_object(obj_player) < 15) {
    eSpeed = scr_approach(eSpeed, 0, frc);
    if (obj_player.x > x) instance_create(x + 15, y, obj_eAttack);
    if (obj_player.x < x) instance_create(x - 15, y, obj_eAttack);
    if (obj_player.y > y) instance_create(x, y + 15, obj_eAttack);
    if (obj_player.y < y) instance_create(x, y - 15, obj_eAttack);
}

scr_moveCollideE();
