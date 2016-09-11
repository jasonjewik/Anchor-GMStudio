//Enemy Movements
move = 0;

if (distance_to_object(obj_player) < 150) move = 1;
eSpeed = move * accl;

if (move == 1 && alarm[0] = -1) {
    alarm_set(0, 30);
};

