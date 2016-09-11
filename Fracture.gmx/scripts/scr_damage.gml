hSpeed = scr_approach(hSpeed, -sign(enemyCon.x - x) * 6, accl * 4);
vSpeed = scr_approach(vSpeed, -sign(enemyCon.y - y) * 6, accl * 4);

maxSpeed = 6;

scr_moveCollide();

if (abs(hSpeed) == abs(maxSpeed) || abs(vSpeed) == abs(maxSpeed)) {
    maxSpeed = 2;
    state = pst.normal;
}
