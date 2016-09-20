//Direction of Roll
if (global.face == 0) hSpeed = scr_approach(hSpeed, 10, accl * 8);
if (global.face == 1) vSpeed = scr_approach(vSpeed, -10, accl * 8);
if (global.face == 2) hSpeed = scr_approach(hSpeed, -10, accl * 8);
if (global.face == 3) vSpeed = scr_approach(vSpeed, 10, accl * 8);

//MoveSpeed Increase
maxSpeed = 10;

scr_moveCollide();

//Switch to Normal
if (abs(hSpeed) == abs(maxSpeed) || abs(vSpeed) == abs(maxSpeed) || hSpeed == 0 || vSpeed == 0) {
    maxSpeed = 2;
    state = pst.normal;
}

