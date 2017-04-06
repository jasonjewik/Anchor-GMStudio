if (object_get_parent(object_index) != class_immobileEnemy) {
    if (path_exists(path)) path_delete(path);
    if (alarm[1] == -1) alarm_set(1, room_speed * random_range(1, 3));
        
    if (activated) state_switch("Chase", true);
} else {
    if (activated) {
        weapon = instance_create(x, y, weapon_rifle);
        weapon.owner = instance_position(x, y, class_enemy);
        state_switch("Shoot", true);
    }
}
