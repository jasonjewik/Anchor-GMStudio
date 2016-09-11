//Player Movements
var hMove;
hMove = -key_left + key_right;
var vMove;
vMove = -key_up + key_down;

hSpeed = hMove * accl;
vSpeed = vMove * accl;

//Inertia & Friction Handling
if (hMove == 0) {
    hSpeed = scr_approach(hSpeed, 0, frc);
}
if (vMove == 0) {
    vSpeed = scr_approach(vSpeed, 0, frc);
}

scr_moveCollide();
