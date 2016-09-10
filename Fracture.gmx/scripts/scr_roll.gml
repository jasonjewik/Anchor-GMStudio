//Dir of Roll
if (global.face == 0) vSpeed = scr_approach(vSpeed, -10, accl * 8);
if (global.face == 1) hSpeed = scr_approach(hSpeed, 10, accl * 8);
if (global.face == 2) vSpeed = scr_approach(vSpeed, 10, accl * 8);
if (global.face == 3) hSpeed = scr_approach(hSpeed, -10, accl * 8);


//MoveSpeed Increase
maxSpeed = 10;

scr_moveCollide();

if (abs(hSpeed) == abs(maxSpeed) || abs(vSpeed) == abs(maxSpeed) || place_meeting(x + hSpeed, y + vSpeed, obj_wall)) {
    maxSpeed = 2;
    state = pst.normal;
}
