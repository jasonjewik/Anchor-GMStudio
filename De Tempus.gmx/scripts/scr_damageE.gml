hSpeed = scr_approach(hSpeed, -sign(obj_player.x - x) * 6, accl * 4);
vSpeed = scr_approach(vSpeed, -sign(obj_player.y - y) * 6, accl * 4);

if (path_exists(path)) path_delete(path);

maxSpeed = 6;

scr_moveCollide();

if (abs(hSpeed) == abs(maxSpeed) || abs(vSpeed) == abs(maxSpeed)) {
    maxSpeed = 3;
    state = est.normal;
}
