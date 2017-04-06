if (path_exists(path)) path_delete(path);
if (!path_exists(path)) path = path_add();
pathCandidate = mp_grid_path(global.grid, path, x, y, target.x, target.y, true);
if (pathCandidate) path_start(path, move_speed, 0, false);
 
if (distance_to_target <= attack_range) {
    if (path_exists(path)) path_delete(path);
    if (object_get_parent(object_index) == class_mobileRanged) {
        activated = true;
        weapon = instance_create(x, y, weapon_rifle);
        weapon.owner = instance_position(x, y, class_enemy);
        state_switch("Shoot", true);
    }
    else state_switch("Idle", true);
}
