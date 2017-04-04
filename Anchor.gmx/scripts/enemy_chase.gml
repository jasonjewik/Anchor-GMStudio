if (path_exists(path)) path_delete(path);
if (!path_exists(path)) path = path_add();
pathCandidate = mp_grid_path(global.grid, path, x, y, target.x, target.y, true);
if (pathCandidate) path_start(path, move_speed, 0, false);

if (distance_to_target > leash_range || distance_to_target == 0) {
    if (path_exists(path)) path_delete(path);
    state_switch("Idle", true);
}
