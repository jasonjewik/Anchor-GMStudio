alarm_set(1, -1);

if (path_exists(path)) path_delete(path);
if (!path_exists(path)) path = path_add();

pathCandidate = mp_grid_path(global.grid, path, x, y, target_random_x, target_random_y, true);
if (pathCandidate) path_start(path, move_speed, 0, false);

if (distance_to_target < 16) {
    if (path_exists(path)) path_delete(path);
    state_switch("Idle", true);
} 
